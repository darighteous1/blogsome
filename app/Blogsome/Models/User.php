<?php

namespace Blogsome\Models;


use Illuminate\Database\Eloquent\Model as Eloquent;

class User extends Eloquent
{
    // TODO: remove after user creation is implemented
    const DEFAULT = 1;

    /** @var string $primaryKey override Eloquent's default primary key */
    protected $primaryKey = "user_id";

    protected $fillable = [
        "user_first_name",
        "user_last_name",
        "user_email",
        "username",
        "password"
    ];

    /**
     * Returns the full name of the user (first name + last name)
     * @return string
     */
    public function getFullName(): string
    {
        return "{$this->user_first_name} {$this->user_last_name}";
    }

    /**
     * Gets all posts by this user
     */
    public function getUserPosts()
    {
        return Post::where("post_author", $this->user_id);
    }

    /**
     * Checks if the current user is logged in
     *
     * @return bool
     */
    public function isLoggedIn(): bool
    {
        if (isset($_SESSION["user"])) {
            return $_SESSION["user"] === $this->username;
        }

        return false;
    }
}
