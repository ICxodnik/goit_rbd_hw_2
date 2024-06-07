create table if not exists client
(
    client_id   int auto_increment
        primary key,
    client_name varchar(100) charset utf8mb3 not null
);

create table if not exists address
(
    address_id int auto_increment
        primary key,
    address    varchar(200) charset utf8mb3 null,
    client_id  int                          not null,
    constraint address_client_client_id_fk
        foreign key (client_id) references client (client_id)
);

create table if not exists product
(
    product_id   int auto_increment
        primary key,
    product_name varchar(50) charset utf8mb3 not null
);

create table if not exists order_item
(
    order_number   int  not null,
    product_amount int  not null,
    order_date     date not null,
    address_id     int  not null invisible,
    product_id     int  not null,
    client_id      int  not null,
    order_item_id  int auto_increment
        primary key,
    constraint order_item_address_address_id_fk
        foreign key (address_id) references address (address_id),
    constraint order_item_client_client_id_fk
        foreign key (client_id) references client (client_id),
    constraint order_item_product_product_id_fk
        foreign key (product_id) references product (product_id)
);

