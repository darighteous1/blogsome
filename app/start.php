<?php

require "../vendor/autoload.php";
require "database.php"; // db config

$templateDir = "../app/views";
$app = new \Slim\Slim([
    "templates.path" => $templateDir,
    "view" => new \Slim\Views\Twig()
]);

// Database
$app->db = function() {
    return new Illuminate\Database\Capsule\Manager;
};

$view = $app->view();
$app->root();
$view->parserExtensions = array(
    new \Slim\Views\TwigExtension()
);

require "routes.php";

// SESSION -> this should be moved to a session handler class
$session = new \Blogsome\Models\Session();
$session->start();

$app->run();
