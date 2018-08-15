<?php

namespace Blogsome\Controllers;


use Blogsome\Models\Post;
use Blogsome\Models\Posts;
use Blogsome\Models\User;
use Slim\Slim;

class ManagePosts
{
    public function newPostForm()
    {
        Slim::getInstance()->render("posts/new.twig");
    }

    public function create()
    {
        $params = Slim::getInstance()->request()->post();
        foreach ($params as $param) {
            if (empty($param)) {
                Slim::getInstance()->redirectTo("post.new", [
                    "error" => "ERROR"
                ]);
            }
        }
        $title = trim($params["title"]) ; // this could go to the model
        $text = trim($params["text"]);

        $post = new Post();
        $post->post_title = $title;
        $post->post_content = $text;
        $post->post_author = $_SESSION["userId"];
        $post->save();

        Slim::getInstance()->redirectTo("home");
    }

    public function show($postId)
    {
        /** @var Post $post */
        $post = Post::find($postId);

        if (! $post) {
            Slim::getInstance()->notFound();
        }

        Slim::getInstance()->render("posts/show.twig", [
            "post" => $post->getViewData()
        ]);
    }

    public function update()
    {
        $postId = Slim::getInstance()->request()->post("id"); // FIXME: multiple uses
    }

    public function delete()
    {
        $postId = Slim::getInstance()->request()->post("id"); // FIXME: multiple uses
    }

    public function allPosts()
    {
        $posts = new Posts();
        $posts = $posts->getAllPosts();

        $viewData = [];

        /** @var Post $post */
        foreach ($posts as $post) {
            $viewData[] = $post->getViewData();

        }
        Slim::getInstance()->render("posts/all.twig", [
            "posts" => $viewData
        ]);
    }
}
