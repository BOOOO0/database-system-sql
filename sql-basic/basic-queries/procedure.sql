DELIMITER //
CREATE PROCEDURE myProc()
BEGIN
	SELECT * FROM member WHERE member_name = '정부영';
	SELECT * FROM product WHERE product_name = '참이슬';
END //
DELIMITER ;

CALL myProc();