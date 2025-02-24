<?php

$platformsh = new \Platformsh\ConfigReader\Config();

$setEnv = function ($name, $value) {
    $_SERVER[$name] = $_ENV[$name] = $value;
};

$setEnv('PIMCORE_IS_PRODUCTION_SYSTEM', $platformsh->onProduction() ? 'true' : 'false');

// Configure the database.
if ($platformsh->hasRelationship('database')) {
    $db = $platformsh->credentials('database');
    $setEnv('DATABASE_HOST', $db['host']);
    $setEnv('DATABASE_PORT', $db['port']);
    $setEnv('DATABASE_USER', $db['username']);
    $setEnv('DATABASE_PASSWORD', $db['password']);
    $setEnv('DATABASE_DBNAME', $db['path']);
}

// Setup redis
if ($platformsh->hasRelationship('redis')) {
    $redis = $platformsh->credentials('redis');
    $setEnv('REDIS_HOST', $redis['host']);
    $setEnv('REDIS_PORT', $redis['port']);
}

// Setup gotenberg
if ($platformsh->hasRelationship('gotenberg8')) {
    $gotenberg = $platformsh->credentials('gotenberg8');
    $setEnv('GOTENBERG_IP', $gotenberg['ip']);
    $setEnv('GOTENBERG_PORT', $gotenberg['port']);
}

// Configure the elasticsearch
if ($platformsh->hasRelationship('elasticsearch')) {
    $elastic = $platformsh->credentials('elasticsearch');
    $setEnv('PIMCORE_ES_CLIENT_HOST', $elastic['host'] . ':' . $elastic['port']);
}

try {
    if(!$platformsh->inBuild() && $platformsh->inRuntime()) {
        $mercureRoute = $platformsh->getRoute('mercure');
        $setEnv('MERCURE_URL', rtrim($mercureRoute['url'], '/'));
    }
} catch (\InvalidArgumentException $e) {
    // mercure not defined
}

// Set gotenberghosturl 
try {
    if(!$platformsh->inBuild() && $platformsh->inRuntime()) {
        $routes = $platformsh->routes();
        $productionUrl = null;
        foreach ($routes as $route) {
            if ($route['primary']) {
                $productionUrl = rtrim($route['url'], '/');
                break;
            }
        }
        $setEnv('GOTENBERG_HOST_URL', $productionUrl);
    }
} catch (\InvalidArgumentException $e) {
    // gotenberg not defined
}

// Setup rabbitmq
if ($platformsh->hasRelationship('queue')) {
    $rabbit = $platformsh->credentials('queue');
    $setEnv('RABBITMQ_URL', 'amqp://' . $rabbit['username'] . ':' . $rabbit['password'] . '@' . $rabbit['host'] . ':' . $rabbit['port']);
}

// Configure the opensearch
if ($platformsh->hasRelationship('opensearch')) {
    $opensearch = $platformsh->credentials('opensearch');
    $setEnv('PIMCORE_OPENSEARCH_CLIENT_HOST', $opensearch['host'] . ':' . $opensearch['port']);
}