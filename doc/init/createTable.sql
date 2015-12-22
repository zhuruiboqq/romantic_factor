CREATE TABLE t_bas_AttachmentImage (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100),
  `number` VARCHAR(100),
  `simpleName` VARCHAR(100),
  `createTime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `creatorID` INT(11),
  `lastUpdateTime` TIMESTAMP,
  `lastUpdatorID` INT(11),
  `storePath` VARCHAR(100),
  `displayURL` VARCHAR(100),
  `permission` VARCHAR(100),
  `sizeInByte` INT(11),
  `size` VARCHAR(100),
  `extName` VARCHAR(100),
  `width` INT(11),
  `height` INT(11),
  PRIMARY KEY (`id`)
) ;

CREATE TABLE t_bd_Artist (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100),
  `number` VARCHAR(100),
   `simpleName` VARCHAR(100),
  `createTime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `creatorID` INT(11),
  `lastUpdateTime` TIMESTAMP,
  `lastUpdatorID` INT(11),
  `personImageID` INT(11),
  `region` VARCHAR(100),
  `organization` VARCHAR(100),
  `weixin` VARCHAR(100),
  `telephone` VARCHAR(100),
  `qq` VARCHAR(100),
  `degree` VARCHAR(100),
   `technical` VARCHAR(100),
  `content` VARCHAR(100),
   `priority` INT(11),
  PRIMARY KEY (`id`)
) ;
CREATE TABLE t_bd_ArtistWorks (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `seq` INT(11),
  `artistID` INT(11) NOT NULL,
  `workID` INT(11) NOT NULL,
  PRIMARY KEY (`id`)
) ;