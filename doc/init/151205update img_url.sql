--����my.ini��log-binѡ�Ĭ����DataĿ¼�����ɲ�����־�ļ����ļ�����log-binΪ׼����׺��6λ����.000001��
UPDATE photoer SET img_url = REPLACE(img_url,'ftp://112.74.28.4/','upload/images/');
UPDATE photoer_works SET img_url = REPLACE(img_url,'ftp://112.74.28.4/','upload/images/');

UPDATE makeup_makeer SET img_url = REPLACE(img_url,'ftp://112.74.28.4/','upload/images/');
UPDATE makeup_works SET img_url = REPLACE(img_url,'ftp://112.74.28.4/','upload/images/');
--UPDATE makeup_works SET img_url = CONCAT('ftp://112.74.28.4',img_url);