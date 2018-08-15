<?php

namespace Blogsome\Controllers;


use Blogsome\Models\Auth;
use Blogsome\Models\Post;
use Blogsome\Models\Posts;
use Slim\Slim;

class HomeController
{
    public function index()
    {
        $posts = new Posts();
        $posts = $posts->getPosts();

        $viewData = [];

        foreach ($posts as /** @var Post $post */$post) {
            $viewData[] = $post->getViewData();
        }

        Slim::getInstance()->render("home.twig", [
            "posts" => $viewData
        ]);

        return $posts;
    }
}