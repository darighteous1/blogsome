<?php

$app->group("/posts", function () use ($app) {
    $controller = "Blogsome\Controllers\ManagePosts";

    // ALL POSTS
    $app->get("/", "$controller:allPosts")->name("posts.all");

    // NEW POST FORM
    $app->get("/new", function() use ($app) {
        if (! \Blogsome\Models\Auth::isLogged()) {
            $app->redirectTo("login.form"); // add message
        } // TODO: this is called many times, check how to add it as a group middleware or something
    }, "$controller:newPostForm")->name("post.new");

    // NEW POST SUBMIT
    $app->post("/new", function() use ($app) {
        if (! \Blogsome\Models\Auth::isLogged()) {
            $app->redirectTo("login.form"); // add message
        } // TODO: this is called many times, check how to add it as a group middleware or something
    }, "$controller:create")->name("post.create"); // logged in

    // SHOW POST
    // This doesn't work the way it is supposed to
    // the params are empty O_o
    $app->get("/:id", function($id) use ($app) {
        $c = new \Blogsome\Controllers\ManagePosts();
        $c->show($id);
    })->name("post.show");


    // UPDATE POST
    $app->put("/:id", function() use ($app) {
        if (! \Blogsome\Models\Auth::isLogged()) {
            $app->redirectTo("login.form"); // add message
        } // TODO: this is called many times, check how to add it as a group middleware or something
    }, "$controller:update")->name("post.update");

    // DELETE POST
    $app->delete("/:id", function() use ($app) {
        if (! \Blogsome\Models\Auth::isLogged()) {
            $app->redirectTo("login.form"); // add message
        } // TODO: this is called many times, check how to add it as a group middleware or something
    },  "$controller:delete")->name("post.delete");
});