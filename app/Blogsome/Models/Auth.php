<?php

namespace Blogsome\Models;


use Slim\Slim;

class Auth
{
    /**
     * Checks whether there's already a user with the given username
     *
     * @param $username
     * @return bool
     */
    public function userExists($username): bool
    {
        return User::where("username", $username)->count() > 0;
    }

    /**
     * Checks if a user is logged in
     *
     * @return bool
     */
    public static function isLogged(): bool
    {
        return isset($_SESSION["user"]);
    }

    public function login(): void
    {
        $params = Slim::getInstance()->request()->post();

        $username = $params["username"];

        if (!$this->userExists($username)) {
            $app = Slim::getInstance();
            // redirect to login page and display an error
            $app->redirectTo("login.form", [ // FIXME: this does not seem to work
                "errors" => "Wrong username or password."
            ]);
        }

        // OK, user exists. Check if password is correct
        $user = User::where("username", $username)->first();

        if (!password_verify($params["password"], $user->password)) {
            Slim::getInstance()->redirectTo("login.form", [
                "errors" => "Wrong username or password."
            ]);
        }

        $_SESSION["user"] = $user->username;
        $_SESSION["userId"] = $user->user_id;

        Slim::getInstance()->redirectTo("home");
    }

    public function logout()
    {
        // TODO: this should call session->destroy in the model, which should be attached to Slim
        session_unset();
        Slim::getInstance()->redirectTo("home");
    }
}