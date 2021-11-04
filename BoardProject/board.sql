CREATE TABLE board(
   num NUMBER PRIMARY KEY, -- 각 게시글을 구분하는 값
   writer VARCHAR2(10) NOT NULL, -- 작성자
   email VARCHAR2(30),
   subject VARCHAR2(50) NOT NULL, -- 글 제목
   passwd VARCHAR2(12) NOT NULL,
   reg_date TIMESTAMP(9) NOT NULL,
   readcount NUMBER DEFAULT 0,
   ref NUMBER NOT NULL, --글 그룹번호 (design column)
   re_step NUMBER NOT NULL, -- 동일 글 그룹에서 글 들이 출력되는 순서
   re_level NUMBER NOT NULL, -- 답글레벨(들여쓰기 정도)
   content VARCHAR2(4000) NOT NULL -- 글 내용
)

CREATE SEQUENCE board_seq;

SELECT * FROM board;