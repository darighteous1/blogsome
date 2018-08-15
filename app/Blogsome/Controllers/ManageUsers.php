<?php

namespace Blogsome\Controllers;


use Blogsome\Models\User;
use Slim\Slim;

class ManageUsers
{
    public function create()
    {
        // verify password and confirm password match
        // if not, redirect to create form with error message
        // do this with js as well prior to sending the request
        $params = Slim::getInstance()->request()->post();
        $user = new User([
            "user_first_name" => $params["firstName"],
            "user_last_name" => $params["lastName"],
            "user_email" => $params["email"],
            "username" => $params["username"],
            "password" => password_hash($params["password"], PASSWORD_DEFAULT),
        ]);

        $user->save();
        Slim::getInstance()->redirectTo("home");
    }

    public function loginForm()
    {
        Slim::getInstance()->render("/users/login.twig"); // check for arguments
    }

    public function signupForm()
    {
        Slim::getInstance()->render("/users/new.twig");
    }
}