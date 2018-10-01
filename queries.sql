-- Запросы на добавление
-- Существующий список категорий:

INSERT INTO categories(name) VALUES ('Доски и лыжи'), ('Крепления'), ('Ботинки'), ('Одежда'), ('Инструменты'), ('Разное');

-- Придумайте пару пользователей:
   INSERT INTO users (reg_date, email, name, passw, avatar, contacts) VALUES
    ('2016-01-05 18:37:21','123@gmail.com','Андрей','cbc2a75ffeb4b293e3514ccc3e58e9b2c5d98ccb3e59afd35e8de23ee12cffd3','img/avatar.jpg','+79879521568'),
    ('2017-07-13 13:29:09','alucard@ya.ru','Федор','8b37ae68e322e1cef822ac26bdd72afab5634d59c911aad7c57041a369cb3b02','img/avatar.jpg','+79879521568'),
    ('2018-08-08 14:50:56','steps@mail.ru','Анастасия','19d048e1aa51427568ca72b95c18777374860801af60eb02806b57fb6194ec56','img/avatar.jpg','+79879521568');
-- Список объявлений
    INSERT INTO lots(create_date, category_id, name, description, pic, start_price, final_date, counter, author_id, winner_id) VALUES
      ( '2018-02-05 18:37:21','1','2014 Rossignol District Snowboard' ,'test', 'img/lot-1.jpg', '10999', '2018-02-05 18:47:21','1','8','11'),
      ( '2018-03-05 18:37:21','2','DC Ply Mens 2016/2017 Snowboard' ,'Хороший сноуборд, приемлимая цена', 'img/lot-2.jpg', '15999','2018-02-05 18:38:21', '1','10','12'),
      ( '2018-04-05 18:37:21','3','Крепления Union Contact Pro 2015 года размер L/XL' ,'надежные крепления, лучшие в своем классе', 'img/lot-3.jpg', '8000','2018-02-05 18:39:21', '2','12','13'),
      ( '2018-05-05 18:37:21','4', 'Ботинки для сноуборда DC Mutiny Charocal' ,'качественные ботинки для сноуборда', 'img/lot-4.jpg', '10999','2018-02-05 18:40:21', '3','16','14'),
      ( '2018-07-05 18:37:21','5','Куртка для сноуборда DC Mutiny Charocal' ,'теплая куртка для сноуборда', 'img/lot-5.jpg', '7500','2018-02-05 18:45:21', '4','15','16'),
      ( '2018-08-05 18:37:21','6','Маска Oakley Canopy' ,'маска для активных видов спорта', 'img/lot-6.jpg', '5400', '2018-02-05 18:37:21','6','21','22');
-- Добавьте пару ставок для любого объявления
    INSERT INTO rates(bet_date, bet_price, lot_id, user_id) VALUES
    ('2018-03-08 00:00:00','9999','1','10'),
    ('2018-09-21 00:00:00','8889','2','11');
-- получить все категории;
   Select * FROM categories;
-- получить самые новые, открытые лоты. Каждый лот должен включать название, стартовую цену, ссылку на изображение, цену, количество ставок, название категории;
    SELECT l.id, l.name, l.start_price, l.pic, COUNT(r.lot_id) AS count, l.description, c.name  FROM lots l
     JOIN categories c  ON l.category_id = c.id
     LEFT JOIN rates r ON r.lot_id = l.id
     WHERE l.final_date > CURRENT_DATE
     GROUP BY l.id
    ORDER BY l.id DESC;
-- показать лот по его id. Получите также название категории, к которой принадлежит лот
  SELECT l.id, l.name, c.name, l.description FROM lots l LEFT JOIN categories c ON l.category_id = c.id WHERE l.id = 2;
-- обновить название лота по его идентификатору;
    UPDATE lots SET name = 'test' WHERE id = 1;
-- получить список самых свежих ставок для лота по его идентификатору;
  SELECT * FROM rates WHERE lot_id = 2 ORDER BY id DESC LIMIT 5;