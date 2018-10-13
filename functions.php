<?php
/* Форматирование цены*/
function sum_amt ($price) {
    return number_format(ceil($price), 0, '.', ' '). " ₽";
}
/* Шаблонизатор*/
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
/*Отсчет времени*/
function lot_time_calc() {
    $target_time = strtotime('tomorrow') - time();
    $hours = floor($target_time / 3600);
    $min = floor(($target_time % 3600) / 60);
    return $hours . ":" . str_pad($min, 2, "0", STR_PAD_LEFT);
}

/*Соединение с базой*/
function get_data($connect, $query) {
    $result = mysqli_query($connect, $query) or die(mysqli_error($connect));
    return mysqli_fetch_all($result, MYSQLI_ASSOC);
}
