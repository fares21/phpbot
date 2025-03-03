<?php

use Longman\TelegramBot\Telegram;
use Longman\TelegramBot\Exception\TelegramException;

require 'vendor/autoload.php';

$config = require __DIR__ . '/config.php';

try {
    $telegram = new Telegram($config['api_key'], $config['bot_username']);
    $telegram->handle();
} catch (TelegramException $e) {
    error_log($e);
}
