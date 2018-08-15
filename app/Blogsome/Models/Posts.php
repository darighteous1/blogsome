<?php

namespace Blogsome\Models;


use Illuminate\Database\Eloquent\Model as Eloquent;

class Posts //extends Eloquent
{
    /** @var string $primaryKey override Eloquent's default primary key */
    protected $primaryKey = "post_id";

    /** @var string $table override Eloquent's default table */
    protected $table = "posts";

    /**
     * Gets the last $numberPosts amount of posts from db
     *
     * @param int $numberPosts
     * @return mixed
     */
    public function getPosts($numberPosts = 10)
    {
        return Post::orderBy("created_at", "desc")->take($numberPosts)->get();
    }

    /**
     * Gets all posts from db
     *
     * @return mixed
     */
    public function getAllPosts()
    {
        return Post::orderBy("created_at", "desc")->get();
    }
}