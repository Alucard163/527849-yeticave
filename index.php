
<?php
require_once 'data.php';
require_once 'config/config.php';
require_once 'functions.php';

$connect = mysqli_connect("localhost", "root", "", "yeticave") or die(mysqli_error($connect));
mysqli_set_charset($connect, "utf8");
$query = "SELECT  l.pic, l.name, l.start_price, c.name AS category FROM lots l LEFT JOIN categories c  ON l.category_id = c.id";
$goods = get_data($connect, $query);
$query = "SELECT id,name FROM categories";
$categories= get_data($connect, $query);

$page_content = include_template('index.php', ['category' => $category,
    'goods' => $goods,
    'config' => $config]);
$content = include_template('layout.php', ['content'=>$page_content,
    'category' => $category,
    'is_auth' => $is_auth,
    'user_avatar' => $user_avatar,
    'user_name'=> $user_name]);
print($content);

