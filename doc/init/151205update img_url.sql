--启动my.ini的log-bin选项，默认在Data目录下生成操作日志文件（文件名以log-bin为准，后缀是6位数字.000001）
UPDATE photoer SET img_url = REPLACE(img_url,'ftp://112.74.28.4/','upload/images/');
UPDATE photoer_works SET img_url = REPLACE(img_url,'ftp://112.74.28.4/','upload/images/');

UPDATE makeup_makeer SET img_url = REPLACE(img_url,'ftp://112.74.28.4/','upload/images/');
UPDATE makeup_works SET img_url = REPLACE(img_url,'ftp://112.74.28.4/','upload/images/');
--UPDATE makeup_works SET img_url = CONCAT('ftp://112.74.28.4',img_url);