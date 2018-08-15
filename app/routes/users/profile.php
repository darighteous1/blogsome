<?php

use Blogsome\Models\User;

$app->get("/users/profile/:username", function($username) use ($app) {
    if (empty($_SESSION["user"])) {
        $app->redirectTo("/users/login");
    }

    $user = User::where("username", $username)->first();

    if (!$user) {
        $app->notFound();
    }

    $user->fullName = $user->getFullName();
    $app->render("users/show.twig", [
        "user" => $user
    ]);
});