/*
SELECT * FROM member;
SELECT member_id,member_name FROM member;
SELECT member_addr,member_name FROM member WHERE  member_id = 'boo0';
*/
SELECT * FROM member WHERE  member_name = '정부영';

CREATE INDEX idx_member_name ON member(member_name);
