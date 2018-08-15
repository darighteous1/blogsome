<?php

$app->get("/login", "\Blogsome\Controllers\ManageUsers:loginForm")->name("login.form");

$app->post("/login", "\Blogsome\Models\Auth:login")->name("login.process");