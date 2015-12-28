DROP TABLE IF EXISTS t_bas_AttachmentImage;
CREATE TABLE t_bas_AttachmentImage (
  id INT(11) NOT NULL AUTO_INCREMENT,
  name VARCHAR(100),
  number VARCHAR(100),
  simpleName VARCHAR(100),
  createTime TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  creatorID INT(11),
  lastUpdateTime TIMESTAMP,
  lastUpdatorID INT(11),
  storePath VARCHAR(500),
  displayURL VARCHAR(500),
  permission VARCHAR(100),
  sizeInByte INT(11),
  size VARCHAR(100),
  extName VARCHAR(100),
  width INT(11),
  height INT(11),
  PRIMARY KEY (id)
) ;
DROP TABLE IF EXISTS t_bd_Artist;
CREATE TABLE t_bd_Artist (
  id INT(11) NOT NULL AUTO_INCREMENT,
  name VARCHAR(100),
  number VARCHAR(100),
   simpleName VARCHAR(100),
  createTime TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  creatorID INT(11),
  lastUpdateTime TIMESTAMP,
  lastUpdatorID INT(11),
  personImageID INT(11),
  region VARCHAR(100),
  organization VARCHAR(100),
  weixin VARCHAR(100),
  telephone VARCHAR(100),
  qq VARCHAR(100),
  degree VARCHAR(100),
   technical VARCHAR(100),
  content VARCHAR(1000),
  artistType VARCHAR(20),
  worksPath VARCHAR(200),
   priority INT(11),
  PRIMARY KEY (id)
) ;
DROP TABLE IF EXISTS t_bd_ArtistWorks;
CREATE TABLE t_bd_ArtistWorks (
  id INT(11) NOT NULL AUTO_INCREMENT,
  seq INT(11),
  artistID INT(11) NOT NULL,
  workID INT(11) NOT NULL,
  PRIMARY KEY (id)
) ;
DROP TABLE IF EXISTS message2;
CREATE TABLE message2 (
  id int(11) NOT NULL AUTO_INCREMENT,
  ctime datetime DEFAULT NULL,
  name varchar(50) COLLATE utf8_bin DEFAULT NULL,
  qqNum varchar(50) COLLATE utf8_bin DEFAULT NULL,
  telPhone varchar(50) COLLATE utf8_bin DEFAULT NULL,
  email varchar(50) COLLATE utf8_bin DEFAULT NULL,
  address varchar(100) COLLATE utf8_bin DEFAULT NULL,
  suggestion varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (id)
)