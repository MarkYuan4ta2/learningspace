<?php

if (!isset($_SESSION)) {
    session_start();
}

if (isset($_SESSION)) {
    unset($_SESSION["iduser"]);
    unset($_SESSION["firstname"]);
    unset($_SESSION["lastname"]);
    unset($_SESSION["email"]);
    unset($_SESSION["isactive"]);
    unset($_SESSION["password"]);
    $_SESSION = array();
    session_destroy();

    if (isset($_GET['error'])) {
        header("Location: ../public/HomePage.php?error=8");
    } else {
        header("Refresh:0;");
        header("Location: ../public/HomePage.php");
        //header("Refresh:0; url=../public/HomePage.php");
    }
}