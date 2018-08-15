<?php

namespace Blogsome\Models;


use Slim\Slim;

final class Session
{
    /**
     * Set the session duration in seconds
     * after this (total) time has passed,
     * the user's session will be destroyed and
     * the user will be automatically logged out
     */
    const DEFAULT_SESSION_TIME = 300; // in seconds

    public function __construct()
    {
        session_start();
    }

    public function start()
    {
        if (!isset($_SESSION['CREATED'])) {
            $_SESSION["CREATED"] = time();
        } else if ($this->isExpired()) {
            $this->destroy();
        }
    }

    public function destroy()
    {
        session_regenerate_id(true);    // change session ID for the current session and invalidate old session ID
        session_unset();
    }

    public function isExpired()
    {
        return time() > $_SESSION["CREATED"] + self::DEFAULT_SESSION_TIME;
    }
}