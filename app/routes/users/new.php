<?php
$app->group("/users", function () use ($app) {
    $app->get("/new", "\Blogsome\Controllers\ManageUsers:signupForm")->name("signup.form");

    $app->post("/new", "\Blogsome\Controllers\ManageUsers:create")->name("signup.process");
});