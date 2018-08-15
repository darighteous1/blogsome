<?php

$app->get("/logout", "\Blogsome\Models\Auth:logout")->name("logout");
