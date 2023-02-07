<?php

require('./vendor/autoload.php');

use Monolog\Level;
use Monolog\Logger;
use Monolog\Handler\StreamHandler;

$log = new Logger('name');
$log->pushHandler(new StreamHandler('log.log', Level::Warning));

$log->warning('Foo');

echo "hiiiigggiii";