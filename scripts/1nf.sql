create table if not exists `order_item`
(
    order_item_id  int auto_increment
    primary key,
    order_number   int  not null,
    product_name     varchar(50) charset utf8mb3  not null,
    product_amount   int                          not null,
    delivery_address varchar(200) charset utf8mb3 not null,
    order_date       date                         not null,
    client_name      varchar(100) charset utf8mb3 not null
);

