USE vk;

DROP TABLE IF EXISTS `video_albums`;
CREATE TABLE `video_albums` (
	`video_id` SERIAL PRIMARY KEY,
	`name_video` varchar(150) NOT NULL
);

DROP TABLE IF EXISTS `videos`;
CREATE TABLE `videos` (
	`id` SERIAL PRIMARY KEY,
	`name_video` varchar(150) NOT NULL,
	`count_viewers` int UNSIGNED,
	`count_likes_video` bigint UNSIGNED,
	`who_likes` BIGINT unsigned NOT NULL,
	`comments_video` text,
	`created_at` DATETIME DEFAULT NOW(),
	
	INDEX `idx_name_videos`(`name_video`),
	
	FOREIGN KEY (`who_likes`) REFERENCES `users`(`id`)
		ON DELETE NO ACTION,
	FOREIGN KEY (`id`) REFERENCES `video_albums`(`video_id`)
		ON DELETE NO ACTION
);

DROP TABLE IF EXISTS `music_albums`;
CREATE TABLE `music_albums` (
	`audio_id` SERIAL PRIMARY KEY,
	`name_audio` varchar(150) NOT NULL
);

DROP TABLE IF EXISTS `music`;
CREATE TABLE `music` (
	`id` SERIAL PRIMARY KEY,
	`name_audio` varchar(150) NOT NULL,
	`count_listeners` int UNSIGNED,
	`count_likes_audio` bigint UNSIGNED,
	`who_likes` BIGINT unsigned NOT NULL,
	`created_at` DATETIME DEFAULT NOW(),
	
	INDEX `idx_name_audio`(`name_audio`),
	
	FOREIGN KEY (`who_likes`) REFERENCES `users`(`id`),
	FOREIGN KEY (`id`) REFERENCES `music_albums`(`audio_id`)
);
