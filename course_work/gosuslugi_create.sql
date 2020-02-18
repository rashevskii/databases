drop database if exists gosuslugi;
create database gosuslugi;
use gosuslugi;

drop table if exists `users`;
create table `users`(
	`id` serial primary key,
	`firstname` varchar(50) not null,
	`lastname` varchar(50) not null,
	`patronymic` varchar(50),
	`snils` bigint unique not null,
	`email` varchar(150) unique not null,
	`phone` bigint unique not null,
	
	index users_firstname_lastname_idx(`firstname`, `lastname`)
);

drop table if exists `children`;
create table `children`(
	`id` serial primary key,
	`firstname` varchar(50) not null,
	`lastname` varchar(50) not null,
	`patronymic` varchar(50),
	`gender`char(1),
	`birthday` date,
	`binding_code` bigint not null unique
);

drop table if exists `main_information`;
create table `main_information`(
	`user_id` serial primary key,
	`gender` char(1),
	`birthday` date,
	`status` ENUM('simplified', 'standart', 'confirmed'),
	`citizenship` varchar(150),
	`created_at` datetime default now(),
	`updated_at` datetime default now(),
	`children` bigint unique,
	
	foreign key (`user_id`) references `users`(`id`)
	on update cascade
	on delete restrict,
	foreign key (`children`) references `children`(`binding_code`)
	on update cascade
	on delete restrict
);

drop table if exists `address_of_residence`;
create table `address_of_residence`(
	`id` serial primary key,
	`country` varchar(100),
	`region` varchar(100),
	`locality` varchar(50),
	`street` varchar(50),
	`building` int,
	`sub_building` varchar(20),
	`flat` int,
	
	foreign key (`id`) references `users`(`id`)
	on update cascade
	on delete restrict
);

drop table if exists `place_of_birth`;
create table `place_of_birth`(
	`id` serial primary key,
	`country` varchar(100),
	`region` varchar(100),
	`locality` varchar(50),
	`street` varchar(50),
	`building` int,
	`sub_building` varchar(20),
	`flat` int,
	
	foreign key (`id`) references `users`(`id`)
	on update cascade
	on delete restrict
);

drop table if exists `registration_address`;
create table `registration_address`(
	`id` serial primary key,
	`country` varchar(100),
	`region` varchar(100),
	`locality` varchar(50),
	`street` varchar(50),
	`building` int,
	`sub_building` varchar(20),
	`flat` int,
	
	foreign key (`id`) references `users`(`id`)
	on update cascade
	on delete restrict
);

drop table if exists `type_of_documents`;
create table `type_of_documents`(
	`id` serial primary key,
	`type` enum('Паспорт', 'СНИЛС', 'ИНН', 'Свидетельство о рождении', 'Водительское удостовирение', 'Полис ОМС', 'Заграничный паспорт', 'Военный билет')
);

drop table if exists `documents`;
create table `documents`(
	`id` serial primary key,
	`user_id` BIGINT UNSIGNED NOT null,
	`title` varchar(150) not null,
	`type_of_document` BIGINT UNSIGNED NOT NULL UNIQUE,
	`date_of_issue` date not null,
	`validity` date,
	`place_of_issue` varchar(250),
	
	foreign key (`type_of_document`) references `type_of_documents`(`id`)
	on update cascade
	on delete restrict,
	foreign key (`user_id`) references `users`(`id`)
	on update cascade
	on delete restrict
);

drop table if exists `vehicles`;
create table `vehicles`(
	`id` serial primary key,
	`car_make` varchar(50),
	`car_model` varchar(50),
	`reg_number` varchar(50) not null unique,
	`registration` bigint not null unique,
	
	foreign key (`id`) references `users`(`id`)
	on update cascade
	on delete restrict
);

drop table if exists `services`;
create table `services`(
	`id` serial primary key,
	`title` varchar(300) not null,
	`executor` varchar(300) not null,
	`deadline` int not null,
	`costs` bigint
);

drop table if exists `receiving service`;
create table `receiving service`(
	`id` serial primary key,
	`id_user` bigint unsigned not null unique,
	`title` varchar(300),
	`status` enum('исполняется', 'исполнена', 'отказ'),
	`created_at` datetime default now(),
	`updated_at` datetime default now(),
	
	foreign key (`id_user`) references `users`(`id`)
	on update cascade
	on delete restrict,
	foreign key (`id`) references `services`(`id`)
	on update cascade
	on delete restrict
);








































