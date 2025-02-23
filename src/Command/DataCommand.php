<?php

/**
 * Pimcore
 *
 * This source file is available under two different licenses:
 * - GNU General Public License version 3 (GPLv3)
 * - Pimcore Enterprise License (PEL)
 * Full copyright and license information is available in
 * LICENSE.md which is distributed with this source code.
 *
 *  @copyright  Copyright (c) Pimcore GmbH (http://www.pimcore.org)
 *  @license    http://www.pimcore.org/license     GPLv3 and PEL
 */

namespace App\Command;

use Pimcore\Console\AbstractCommand;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Input\InputOption;
use Symfony\Component\Console\Output\OutputInterface;

class DataCommand extends AbstractCommand
{
    public function configure(): void
    {
        $this
            ->setName('app:import-data-command')
            ->addOption('model', 'm', InputOption::VALUE_REQUIRED, 'Model JSON filename')
            ->addOption('file', 'd', InputOption::VALUE_REQUIRED, 'Data JSON filename');
    }

    public function execute(InputInterface $input, OutputInterface $output): int
    {
        $modelPath = $input->getOption('model');
        $dataPath = $input->getOption('file');


        $modelInputJson = file_get_contents($modelPath);
        $modelObject = json_decode($modelInputJson, $associative=true, $depth=512, JSON_THROW_ON_ERROR);
        $dynamicModelPath = 'Pimcore\Model\DataObject\\'.$modelObject['id'];


        $dataInputJson = file_get_contents($dataPath);
        $dataObjects = json_decode($dataInputJson, $associative=true, $depth=512, JSON_THROW_ON_ERROR);

        $saves = 0;
        foreach ($dataObjects as $dataObject) {
            $dynamicModel = new $dynamicModelPath();
            $dynamicModel->setKey(rand(1,10000));
            $dynamicModel->setParentId(744);
            $dynamicModel->setPublished(true);
            foreach ($dataObject as $fieldName=>$fieldValue) {
                $methodName = 'set'.$fieldName;
                if (method_exists($dynamicModel, $methodName)){
                    $dynamicModel->$methodName($fieldValue);
                }

                if (isset($field['name'])) {
                    $setters[] = 'set' . ucfirst($field['name']);
                }
            }
            $dynamicModel->save();
            $saves++;
        }

        $output->writeln("Import completed successfully ($saves)");
        return 0;
    }
}
