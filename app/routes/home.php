<?php

$app->get("/", "\Blogsome\Controllers\HomeController:index")->name("home");