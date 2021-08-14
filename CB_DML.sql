--user 더미 데이터 7개
insert into cb_user
values('admin', '1234', '박우혁', '관리자', 'aaa@bbb', '010-0000-0000', 'profile.jpg', 'ADMIN', 'A');
insert into cb_user
values('user1', '1234', '이광호', '광호', 'aaa@bbb', '010-0000-0000', 'profile.jpg', 'USER', 'A');
insert into cb_user
values('user2', '1234', '박준욱', '한스', 'aaa@bbb', '010-0000-0000', 'profile.jpg', 'USER', 'A');
insert into cb_user
values('user3', '1234', '윤지민', '윤', 'aaa@bbb', '010-0000-0000', 'profile.jpg', 'USER', 'A');
insert into cb_user
values('user4', '1234', '홍길동', '홍', 'aaa@bbb', '010-0000-0000', 'profile.jpg', 'USER', 'A');
insert into cb_user
values('user5', '1234', '박기자', '박', 'aaa@bbb', '010-0000-0000', 'profile.jpg', 'USER', 'A');
insert into cb_user
values('user6', '1234', '최승리', '최', 'aaa@bbb', '010-0000-0000', 'profile.jpg', 'USER', 'A');
commit;
--게시판 더미 데이터 6개
insert into cb_board
values(bd_seq.nextval, '테스트용 제목1', '테스트 내용', sysdate, 0, 3, 'user2');
insert into cb_board
values(bd_seq.nextval, '테스트용 제목2', '테스트 내용', sysdate, 0, 2, 'user3');
insert into cb_board
values(bd_seq.nextval, '테스트용 제목3', '테스트 내용', sysdate, 0, 1, 'user1');
insert into cb_board
values(bd_seq.nextval, '테스트용 제목4', '테스트 내용', sysdate, 0, 1, 'user4');
insert into cb_board
values(bd_seq.nextval, '테스트용 제목5', '테스트 내용', sysdate, 0, 1, 'user5');
insert into cb_board
values(bd_seq.nextval, '테스트용 제목6', '테스트 내용', sysdate, 0, 1, 'user6');
commit;
--1번 글에 댓글 3개
insert into cb_cmt
values(CMT_SEQ.nextval, '오늘 날씨는 흐림', sysdate, 1, 'user6');
insert into cb_cmt
values(CMT_SEQ.nextval, '오늘 날씨는 맑음', sysdate, 1, 'user5');
insert into cb_cmt
values(CMT_SEQ.nextval, '오늘 매우 더움', sysdate, 1, 'user4');
--2번 글에 댓글 2개
insert into cb_cmt
values(CMT_SEQ.nextval, '오늘 매우 더움', sysdate, 2, 'user4');
insert into cb_cmt
values(CMT_SEQ.nextval, '오늘 날씨는 맑음', sysdate, 2, 'user2');
--3~6번 글에 댓글 1개
insert into cb_cmt
values(CMT_SEQ.nextval, '테스트용 댓글', sysdate, 3, 'user2');
insert into cb_cmt
values(CMT_SEQ.nextval, '테스트용 댓글', sysdate, 4, 'user2');
insert into cb_cmt
values(CMT_SEQ.nextval, '테스트용 댓글', sysdate, 5, 'user2');
insert into cb_cmt
values(CMT_SEQ.nextval, '테스트용 댓글', sysdate, 6, 'user2');
commit;
--대댓글은 각 게시글 첫번째 댓글에 2개씩
insert into cb_cmts
values(cmts_seq.nextval, '테스트용 대댓글1', sysdate, 1, 'user3');
insert into cb_cmts
values(cmts_seq.nextval, '테스트용 대댓글2', sysdate, 1, 'user3');
insert into cb_cmts
values(cmts_seq.nextval, '테스트용 대댓글1', sysdate, 4, 'user3');
insert into cb_cmts
values(cmts_seq.nextval, '테스트용 대댓글2', sysdate, 4, 'user3');
insert into cb_cmts
values(cmts_seq.nextval, '테스트용 대댓글1', sysdate, 6, 'user3');
insert into cb_cmts
values(cmts_seq.nextval, '테스트용 대댓글2', sysdate, 6, 'user3');
insert into cb_cmts
values(cmts_seq.nextval, '테스트용 대댓글1', sysdate, 7, 'user3');
insert into cb_cmts
values(cmts_seq.nextval, '테스트용 대댓글2', sysdate, 7, 'user3');
insert into cb_cmts
values(cmts_seq.nextval, '테스트용 대댓글1', sysdate, 8, 'user3');
insert into cb_cmts
values(cmts_seq.nextval, '테스트용 대댓글2', sysdate, 8, 'user3');
insert into cb_cmts
values(cmts_seq.nextval, '테스트용 대댓글1', sysdate, 9, 'user3');
insert into cb_cmts
values(cmts_seq.nextval, '테스트용 대댓글2', sysdate, 9, 'user3');
commit;
--공지사항 더미데이터 3개
insert into cb_notice
values(n_seq.nextval, sysdate, '매우 중요한 내용입니다 여기는 관리자만 쓸 수 있습니다 댓글은 없습니다', '테스트용 공지사항1', 'admin');
insert into cb_notice
values(n_seq.nextval, sysdate, '매우 중요한 내용입니다 여기는 관리자만 쓸 수 있습니다 댓글은 없습니다', '테스트용 공지사항2', 'admin');
insert into cb_notice
values(n_seq.nextval, sysdate, '매우 중요한 내용입니다 여기는 관리자만 쓸 수 있습니다 댓글은 없습니다', '테스트용 공지사항3', 'admin');
commit;
--고객센터 더미데이터 6개
insert into cb_cs
values(CS_SEQ.nextval, '구매가 되지 않습니다', '구매가 안됨', sysdate, 1, 'user1');
insert into cb_cs
values(CS_SEQ.nextval, '정보 수정 오류', '프로필 사진이 올라가지 않아요', sysdate, 1, 'user6');
insert into cb_cs
values(CS_SEQ.nextval, '사이트가 너무 멋져요', '너무멋졍', sysdate, 1, 'user5');
insert into cb_cs
values(CS_SEQ.nextval, '404 에러떠요', '해결해주세요', sysdate, 1, 'user2');
insert into cb_cs
values(CS_SEQ.nextval, '사이트가 너무 느려요', '조인을 멈춰주세요', sysdate, 1, 'user4');
insert into cb_cs
values(CS_SEQ.nextval, '구매 안됨', '왜 안될까', sysdate, 1, 'user3');
commit;
--고객센터 답글 1개씩
insert into cb_cs_cmt
values(cs_cmt_seq.nextval, '안녕하세요. 빠른 시일 내에 수정될 예정입니다. 감사합니다.', sysdate, 'admin', 1);
insert into cb_cs_cmt
values(cs_cmt_seq.nextval, '안녕하세요. 빠른 시일 내에 수정될 예정입니다. 감사합니다.', sysdate, 'admin', 2);
insert into cb_cs_cmt
values(cs_cmt_seq.nextval, '안녕하세요. 빠른 시일 내에 수정될 예정입니다. 감사합니다.', sysdate, 'admin', 3);
insert into cb_cs_cmt
values(cs_cmt_seq.nextval, '안녕하세요. 빠른 시일 내에 수정될 예정입니다. 감사합니다.', sysdate, 'admin', 4);
insert into cb_cs_cmt
values(cs_cmt_seq.nextval, '안녕하세요. 빠른 시일 내에 수정될 예정입니다. 감사합니다.', sysdate, 'admin', 5);
insert into cb_cs_cmt
values(cs_cmt_seq.nextval, '안녕하세요. 빠른 시일 내에 수정될 예정입니다. 감사합니다.', sysdate, 'admin', 6);
commit;
--구매등록 더미데이터 5개
insert into cb_purchase
values(pr_seq.nextval, '식품', '맛있는 냉동피자 공구하실분', 1, 6,
'21/08/24', '21/08/30', 53000, 'food1.jpg', null, null, '테스트용 식품 공구합니다', 3, 'user1');
insert into cb_purchase
values(pr_seq.nextval, '생필품', '테스트 생필품 공구하실분분', 3, 10,
'21/08/28', '21/09/10', 24000, 'food2.jpg', null, null, '테스트용 식품 공구합니다', 1, 'user4');
insert into cb_purchase
values(pr_seq.nextval, '식품', '식품 사기 치즈스틱 테스트', 4, 8,
'21/08/13', '21/08/20', 132000, 'food3.jpg', null, null, '테스트용 식품 공구합니다', 4, 'user2');
insert into cb_purchase
values(pr_seq.nextval, '식품', '식품 소고기 쩝쩝 테스트', 1, 5,
'21/08/20', '21/08/24', 78300, 'food4.jpg', null, null, '테스트용 식품 공구합니다', 2, 'user5');
insert into cb_purchase
values(pr_seq.nextval, '생필품', '생필품 굿굿 테스트 섬유유연제', 2, 8,
'21/08/25', '21/09/05', 61400, 'food5.jpg', null, null, '테스트용 식품 공구합니다', 3, 'user3');
commit;
--구매신청/결제내역 더미데이터. 구매등록 한 사람도 여기에 포함시켰음
--pr_no=1 3명
insert into cb_applicate
values(ap_seq.nextval, 1, 'user1', 17668, '21/08/24 00:00:00', 'NAVER PAY');
insert into cb_applicate
values(ap_seq.nextval, 1, 'user6', 17666, '21/08/25 13:44:21', 'NAVER PAY');
insert into cb_applicate
values(ap_seq.nextval, 1, 'user5', 17666, '21/08/25 18:50:04', 'CREDIT CARD');
--pr_no=2 1명
insert into cb_applicate
values(ap_seq.nextval, 2, 'user4', 24000, '21/08/28 00:00:00', 'CREDIT CARD');
--pr_no=3 4명
insert into cb_applicate
values(ap_seq.nextval, 3, 'user2', 33000, '21/08/13 00:00:00', 'NAVER PAY');
insert into cb_applicate
values(ap_seq.nextval, 3, 'user5', 33000, '21/08/14 01:50:34', 'CREDIT CARD');
insert into cb_applicate
values(ap_seq.nextval, 3, 'user6', 33000, '21/08/15 14:37:17', 'NAVER PAY');
insert into cb_applicate
values(ap_seq.nextval, 3, 'user1', 33000, '21/08/15 18:55:59', 'NAVER PAY');
--pr_no=4 2명
insert into cb_applicate
values(ap_seq.nextval, 4, 'user5', 39150, '21/08/20 00:00:00', 'CREDIT CARD');
insert into cb_applicate
values(ap_seq.nextval, 4, 'user4', 39150, '21/08/20 02:04:41', 'CREDIT CARD');
--pr_no=5 3명
insert into cb_applicate
values(ap_seq.nextval, 5, 'user3', 20468, '21/08/25 00:00:00', 'NAVER PAY');
insert into cb_applicate
values(ap_seq.nextval, 5, 'user1', 20466, '21/08/25 08:01:31', 'NAVER PAY');
insert into cb_applicate
values(ap_seq.nextval, 5, 'user4', 20466, '21/08/25 17:45:11', 'NAVER PAY');
commit;
--위시리스트 더미데이터, 자신이 등록한 글은 위시리스트에 담을 수 없도록 함
--user1의 위시리스트
insert into cb_wish
values(w_seq.nextval, 2, 'user1');
insert into cb_wish
values(w_seq.nextval, 5, 'user1');
insert into cb_wish
values(w_seq.nextval, 4, 'user1');
--user2의 위시리스트
insert into cb_wish
values(w_seq.nextval, 5, 'user2');
insert into cb_wish
values(w_seq.nextval, 4, 'user2');
--user3의 위시리스트
insert into cb_wish
values(w_seq.nextval, 2, 'user3');
insert into cb_wish
values(w_seq.nextval, 3, 'user3');
insert into cb_wish
values(w_seq.nextval, 4, 'user3');
--user4의 위시리스트
insert into cb_wish
values(w_seq.nextval, 1, 'user4');
insert into cb_wish
values(w_seq.nextval, 5, 'user4');
--user5의 위시리스트
insert into cb_wish
values(w_seq.nextval, 1, 'user5');
insert into cb_wish
values(w_seq.nextval, 3, 'user5');
insert into cb_wish
values(w_seq.nextval, 5, 'user5');
--user6의 위시리스트
insert into cb_wish
values(w_seq.nextval, 1, 'user6');
insert into cb_wish
values(w_seq.nextval, 2, 'user6');
insert into cb_wish
values(w_seq.nextval, 3, 'user6');
insert into cb_wish
values(w_seq.nextval, 4, 'user6');
insert into cb_wish
values(w_seq.nextval, 5, 'user6');
commit;

