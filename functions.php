<?php

function sum_amt ($price) {
    return number_format(ceil($price), 0, '.', ' '). " ₽";
}

function include_template($name, $data) {
    $name = 'templates/' . $name;
    if (!is_readable($name)) {
        return '';
    }
    ob_start();
    extract($data);
    require_once $name;
    return ob_get_clean();
}