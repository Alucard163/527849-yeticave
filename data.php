<?php
// ставки пользователей, которыми надо заполнить таблицу
$bets = [
    ['name' => 'Иван', 'price' => 11500, 'ts' => strtotime('-' . rand(1, 50) .' minute')],
    ['name' => 'Константин', 'price' => 11000, 'ts' => strtotime('-' . rand(1, 18) .' hour')],
    ['name' => 'Евгений', 'price' => 10500, 'ts' => strtotime('-' . rand(25, 50) .' hour')],
    ['name' => 'Семён', 'price' => 10000, 'ts' => strtotime('last week')]
];

$is_auth = rand(0, 1);
$user_name = 'Roman';
$user_avatar = 'img/user.jpg';
$category = [
    'skis' => 'Доски и лыжи',
    'fastening' => 'Крепления',
    'shoes' => 'Ботинки',
    'clothes' => 'Одежда',
    'tools' => 'Инструменты',
    'others' => 'Разное'
];
$goods = [
    [
        'name' => '2014 Rossignol District Snowboard',
        'category' => $category['skis'],
        'price' => 10999,
        'image' => 'img/lot-1.jpg'
    ], [
        'name' => 'DC Ply Mens 2016/2017 Snowboard',
        'category' => $category['skis'],
        'price' => 159999,
        'image' => 'img/lot-2.jpg'
    ], [
        'name' => 'Крепления Union Contact Pro 2015 года размер L/XL',
        'category' => $category['fastening'],
        'price' => 8000,
        'image' => 'img/lot-3.jpg'
    ], [
        'name' => 'Ботинки для сноуборда DC Mutiny Charcoal',
        'category' => $category['shoes'],
        'price' => 10999,
        'image' => 'img/lot-4.jpg'
    ],
    [
        'name' => 'Куртка для сноуборда DC Mutiny Charcoal',
        'category' => $category['clothes'],
        'price' => 7500,
        'image' => 'img/lot-5.jpg'
    ],
    [
        'name' => 'Маска Oakley Canopy',
        'category' => $category['others'],
        'price' => 5400,
        'image' => 'img/lot-6.jpg'
    ]
];
