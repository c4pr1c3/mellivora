alter table `categories` add column `exposed` tinyint(1) NOT NULL DEFAULT '1' after `description`;
alter table `challenges` add column `exposed` tinyint(1) NOT NULL DEFAULT '1' after `description`;
alter table `exceptions` modify column `code` varchar(10) NOT NULL;
alter table `files` add column `md5` char(32) NOT NULL after `size`;
alter table `files` add column `download_key` char(64) NOT NULL after `md5`;
alter table `users` add column `last_active` int(10) unsigned NOT NULL DEFAULT '0' after `added`;
alter table `users` add column `download_key` char(64) NOT NULL after `passhash`;
alter table `users` add UNIQUE KEY email (email);
