<?php

namespace App\Command;

use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Input\InputOption;
use Symfony\Component\Console\Output\OutputInterface;
use Symfony\Contracts\HttpClient\HttpClientInterface;

class AutoMapProductJsonCommand extends Command
{
    protected static $defaultName = 'app:auto-map-json';

    public function __construct(private readonly HttpClientInterface $httpClient)
    {
        parent::__construct();
    }

    protected function configure()
    {
        $this
            ->setDescription('Automatically map JSON to new format using OpenRouter API')
            ->addOption('input', 'i', InputOption::VALUE_REQUIRED, 'Input JSON file path')
            ->addOption('output', 'o', InputOption::VALUE_REQUIRED, 'Output JSON file path')
            ->addOption('prompt', 'p', InputOption::VALUE_REQUIRED, 'Prompt file path');
    }

    protected function execute(InputInterface $input, OutputInterface $output): int
    {
        $inputFilePath = $input->getOption('input');
        $outputFilePath = $input->getOption('output');
        $promptFilePath = $input->getOption('prompt');

        if (!file_exists($inputFilePath)) {
            $output->writeln("<error>Input file not found: {$inputFilePath}</error>");
            return Command::FAILURE;
        }

        $inputJson = file_get_contents($inputFilePath);

        $prompt = $this->generatePrompt($promptFilePath, $inputJson);
        $mappedJson = $this->callOpenRouterAPI($prompt);

        if ($mappedJson === false) {
            $output->writeln("<error>Failed to map JSON using OpenRouter API</error>");
            return Command::FAILURE;
        }

        $mappedJson = preg_replace('/^```json\n|```$/', '', $mappedJson);
        file_put_contents($outputFilePath, $mappedJson);
        $output->writeln("<info>Successfully mapped JSON and saved to: {$outputFilePath}</info>");

        return Command::SUCCESS;
    }

    private function generatePrompt(string $promptFilePath, string $inputJson): string
    {
        $promptTemplate = file_get_contents($promptFilePath);

        $placeholders = [
            '{{INPUT_JSON}}' => $inputJson
        ];

        return str_replace(array_keys($placeholders), array_values($placeholders), $promptTemplate);
    }

    private function callOpenRouterAPI($prompt)
    {
        $apiKey = $_SERVER['OPEN_ROUTER'];

        $response = $this->httpClient->request('POST', 'https://openrouter.ai/api/v1/chat/completions', [
            'headers' => [
                'Authorization' => "Bearer {$apiKey}",
                'Content-Type' => 'application/json',
            ],
            'json' => [
                'model' => 'google/gemini-2.0-flash-001',
                'messages' => [
                    ['role' => 'user', 'content' => $prompt]
                ]
            ]
        ]);

        if ($response->getStatusCode() !== 200) {
            return false;
        }

        $result = $response->toArray();
        return $result['choices'][0]['message']['content'] ?? false;
    }
}
