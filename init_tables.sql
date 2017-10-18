use pringle_amanita;

DROP TABLE IF EXISTS `semantic_auth`;
CREATE TABLE `semantic_auth` (
  `name` text(255) DEFAULT NULL,
  `thing` text(255) DEFAULT NULL,
  `property` text(255) DEFAULT NULL,
  `value` text(2055) DEFAULT NULL,
  KEY `thing_idx` (`thing`(255)),
  KEY `name_idx` (`name`(255)),
  KEY `name_thing_idx` (`name`(255),`thing`(255)),
  KEY `name_thing_property_idx` (`name`(255),`thing`(255),`property`(255)),
  KEY `thing_property_idx` (`thing`(255),`property`(255)),
  KEY `property_idx` (`property`(255)),
  KEY `property_value_idx` (`property`(255),`value`(255)),
  KEY `value_idx` (`value`(255))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `semantic_config`;
CREATE TABLE `semantic_config` (
  `name` text(255) DEFAULT NULL,
  `thing` text(255) DEFAULT NULL,
  `property` text(255) DEFAULT NULL,
  `value` text(2055) DEFAULT NULL,
  KEY `thing_idx` (`thing`(255)),
  KEY `name_idx` (`name`(255)),
  KEY `name_thing_idx` (`name`(255),`thing`(255)),
  KEY `name_thing_property_idx` (`name`(255),`thing`(255),`property`(255)),
  KEY `thing_property_idx` (`thing`(255),`property`(255)),
  KEY `property_idx` (`property`(255)),
  KEY `property_value_idx` (`property`(255),`value`(255)),
  KEY `value_idx` (`value`(255))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `semantic_data`;
CREATE TABLE `semantic_data` (
  `name` text(255) DEFAULT NULL,
  `thing` text(255) DEFAULT NULL,
  `property` text(255) DEFAULT NULL,
  `value` text(2055) DEFAULT NULL,
  KEY `thing_idx` (`thing`(255)),
  KEY `name_idx` (`name`(255)),
  KEY `name_thing_idx` (`name`(255),`thing`(255)),
  KEY `name_thing_property_idx` (`name`(255),`thing`(255),`property`(255)),
  KEY `thing_property_idx` (`thing`(255),`property`(255)),
  KEY `property_idx` (`property`(255)),
  KEY `property_value_idx` (`property`(255),`value`(255)),
  KEY `value_idx` (`value`(255))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `semantic_history`;
CREATE TABLE `semantic_history` (
  `name` text(255) DEFAULT NULL,
  `thing` text(255) DEFAULT NULL,
  `property` text(255) DEFAULT NULL,
  `value` text(2055) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `limsuser` text(255) DEFAULT NULL,
  `type` text(255) DEFAULT NULL,
  KEY `thing_idx` (`thing`(255)),
  KEY `name_idx` (`name`(255)),
  KEY `name_thing_idx` (`name`(255),`thing`(255)),
  KEY `name_thing_property_idx` (`name`(255),`thing`(255),`property`(255)),
  KEY `thing_property_idx` (`thing`(255),`property`(255)),
  KEY `property_idx` (`property`(255)),
  KEY `property_value_idx` (`property`(255),`value`(255)),
  KEY `value_idx` (`value`(255))
) ENGINE=MyISAM DEFAULT CHARSET=binary;

DROP TABLE IF EXISTS `semantic_newusers`;
CREATE TABLE `semantic_newusers` (
  `name` text(255) DEFAULT NULL,
  `thing` text(255) DEFAULT NULL,
  `property` text(255) DEFAULT NULL,
  `value` text(2055) DEFAULT NULL,
  KEY `thing_idx` (`thing`(255)),
  KEY `name_idx` (`name`(255)),
  KEY `name_thing_idx` (`name`(255),`thing`(255)),
  KEY `name_thing_property_idx` (`name`(255),`thing`(255),`property`(255)),
  KEY `thing_property_idx` (`thing`(255),`property`(255)),
  KEY `property_idx` (`property`(255)),
  KEY `property_value_idx` (`property`(255),`value`(255)),
  KEY `value_idx` (`value`(255))
) ENGINE=MyISAM DEFAULT CHARSET=binary;

DROP TABLE IF EXISTS `semantic_autogen`;
CREATE TABLE `semantic_autogen` (
  `name` text(255) DEFAULT NULL,
  `thing` text(255) DEFAULT NULL,
  `property` text(255) DEFAULT NULL,
  `value` text(2055) DEFAULT NULL,
  KEY `thing_idx` (`thing`(255)),
  KEY `name_idx` (`name`(255)),
  KEY `name_thing_idx` (`name`(255),`thing`(255)),
  KEY `name_thing_property_idx` (`name`(255),`thing`(255),`property`(255)),
  KEY `thing_property_idx` (`thing`(255),`property`(255)),
  KEY `property_idx` (`property`(255)),
  KEY `property_value_idx` (`property`(255),`value`(255)),
  KEY `value_idx` (`value`(255))
) ENGINE=MyISAM DEFAULT CHARSET=binary;



DROP TABLE IF EXISTS `semantic_workflow`;
CREATE TABLE `semantic_workflow` (
  `name` text(255) DEFAULT NULL,
  `thing` text(255) DEFAULT NULL,
  `property` text(255) DEFAULT NULL,
  `value` text(2055) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` text(255) DEFAULT NULL,
  KEY `thing_idx` (`thing`(255)),
  KEY `name_idx` (`name`(255)),
  KEY `name_thing_idx` (`name`(255),`thing`(255)),
  KEY `name_thing_property_idx` (`name`(255),`thing`(255),`property`(255)),
  KEY `thing_property_idx` (`thing`(255),`property`(255)),
  KEY `property_idx` (`property`(255)),
  KEY `property_value_idx` (`property`(255),`value`(255)),
  KEY `value_idx` (`value`(255))
) ENGINE=MyISAM DEFAULT CHARSET=binary;


 
# drop function if exists mini_seq;
# delimiter //
# CREATE FUNCTION mini_seq(seq_name char (255), batch integer) returns int reads sql data
# begin 
#   declare s varchar(255) default null;
#   declare id integer default 1000; 
#   select name from mini_seq where name=seq_name into s;
#   IF s is null THEN
#     set id=1000+batch;
#     insert into mini_seq (name, val) values (seq_name, id);
#   ELSE
#     UPDATE mini_seq SET val=last_insert_id(val+batch) WHERE name=seq_name;
#     set id= last_insert_id(); 
#   END IF;
#   RETURN id;
# end //
#
# drop table if exists mini_seq;
# CREATE TABLE mini_seq (
#  name varchar(255) NOT NULL primary key,
#  val integer UNSIGNED NOT NULL
# ) ENGINE=MyISAM;

lock tables semantic_auth write;

insert into semantic_auth values('Admin','User','Admin','Admin');
insert into semantic_auth values('Admin','User','Name','Admin');
insert into semantic_auth values('Admin','User','Role','Admin');
insert into semantic_auth values('Admin','User','Password',md5('123456'));
insert into semantic_auth values('Admin','User','FirstLogin','true');


insert into semantic_auth values('Guest','User','Guest','Guest');
insert into semantic_auth values('Guest','User','Name','Guest');
insert into semantic_auth values('Guest','User','Role','Read_Only');
insert into semantic_auth values('Guest','User','Password',md5('123456'));
insert into semantic_auth values('Guest','User','FirstLogin','true');

unlock tables;
