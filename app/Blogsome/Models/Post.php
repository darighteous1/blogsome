<?php

namespace Blogsome\Models;


use Illuminate\Database\Eloquent\Model as Eloquent;

class Post extends Eloquent
{
    /** @var string $primaryKey override Eloquent's default primary key */
    protected $primaryKey = "post_id";

    /**
     * A DateTime object that holds when the post was created
     * Used to retrieve post date and post time
     *
     * @var \DateTime $postDateTime
     */
    protected $postDateTime;

    public function __construct(array $attributes = [])
    {
        parent::__construct($attributes);
        $this->postDateTime = new \DateTime($this->created_at);
    }

    public function getPostDate()
    {
        return $this->postDateTime->format("d-M-Y");
    }

    public function getPostTime()
    {
        return $this->postDateTime->format("h:i a");
    }

    public function getAuthorName()
    {
        $user = User::find($this->post_author);
        return $user->getFullName();
    }

    public function getComments($limit = 0)
    {
        // get comments for this post up to the set limit
    }

    /**
     * Returns an array with only the necessary data for the view
     * @return array
     */
    public function getViewData()
    {
        return [
            "id" => $this->post_id,
            "title" => $this->post_title,
            "content" => $this->post_content,
            "author" => $this->getAuthorName(),
            "date" => $this->getPostDate(),
            "time" => $this->getPostTime()
        ];
    }
}