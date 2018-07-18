-- 시퀀스에 문자열 붙이기 예제
--insert into emp values('con'||lpadtest_seq.currval,3,0));
-- ==> 실행하면 시퀀스가 con001이 나온다.

-- 영민

-- ************************* 회원 ************************* --
-- tbl_member (회원)
CREATE TABLE tbl_member(
    mem_id      VARCHAR2(30),       -- 회원 아이디(PK) (회원이 탈퇴할 경우 시퀀스 사용 --> delete_0713_001_아이디)
    mem_pwd     VARCHAR2(50) NOT NULL,       -- 회원 비밀번호
    mem_name    VARCHAR2(30) NOT NULL,       -- 회원 이름
    mem_hp      VARCHAR2(13) NOT NULL,       -- 회원 휴대폰번호
    mem_email   VARCHAR2(30) NOT NULL,       -- 회원 이메일
    mem_address VARCHAR2(255),      -- 회원 주소(결제 후 배송 받을 때 주소 입력하게 한다.)
    mem_grade   NUMBER(3) DEFAULT 1,      -- 회원 등급 (1: 회원, 2: 농부, 3: 관리자) / Default: 1
    mem_adv     NUMBER(3) DEFAULT 0,      -- 회원 점수 (+ : 모범 회원, - : 불량 회원) / Default: 0
    mem_regDate DATE DEFAULT sysdate,     -- 회원 등록일 (Default: sysdate)
    mem_drop	VARCHAR(3) DEFAULT 'N',     -- 회원 탈퇴 여부(Y: 탈퇴 O / N: 탈퇴 X, Default: 'N')
    CONSTRAINT tbl_member_mem_id_pk     PRIMARY KEY(mem_id),
    CONSTRAINT tbl_member_mem_email_uk  UNIQUE(mem_email)
);

-- 회원 탈퇴여부 컬럼 추가하기
ALTER TABLE tbl_member
ADD mem_drop VARCHAR(3) DEFAULT 'N';

-- tbl_memberDel_seq (회원이 탈퇴했을 경우 붙일 시퀀스) -> 탈퇴 할 때 INSERT로 'delete_탈퇴한 날짜_000시퀀스값'을 붙인다.
CREATE SEQUENCE tbl_memberDel_seq
START WITH 1
INCREMENT BY 1;

-- ************************* 게시판 ************************* --
-- tbl_board (게시판)
CREATE TABLE tbl_board(
    boa_id	NUMBER(5),  -- 글 번호(PK) (시퀀스) 
    mem_id	VARCHAR2(30) NOT NULL,   -- 회원 아이디(FK) (시퀀스 - delete_0713_001_아이디)
    boa_subject	VARCHAR2(50) NOT NULL,   -- 글 제목
    boa_content	VARCHAR2(500) NOT NULL,  -- 글 내용
    boa_readCnt	NUMBER(10) DEFAULT 0,     -- 조회 수 (Default: 0)
    boa_regDate	DATE DEFAULT sysdate,    -- 글 작성일 (Default: sysdate)
    boa_ip	VARCHAR2(15) NOT NULL,   -- 아이피 주소
    boa_category NUMBER(3) NOT NULL,   -- 카테고리 (1: 공지사항, 2: 회원 1:1문의, 3: 농부 1:1문의, 4: 농부 소식, 5: 회원 요청, 6: 쪽지)
    CONSTRAINT tbl_board_boa_id_pk  PRIMARY KEY(boa_id),
    CONSTRAINT tbl_board_mem_id_fk  FOREIGN KEY(mem_id) REFERENCES tbl_member(mem_id) ON DELETE CASCADE
);

-- tbl_board_seq (게시판 시퀀스) --> 단순 숫자 1씩 증가
CREATE SEQUENCE tbl_board_seq
START WITH 1
INCREMENT BY 1;

-- tbl_comment (댓글)
CREATE TABLE tbl_comment(
    cm_no	NUMBER(10),     -- 댓글 번호(PK) (시퀀스)
    boa_id  NUMBER(5) NOT NULL,      -- 글 번호(FK) (시퀀스)
    mem_id	VARCHAR2(30) NOT NULL,   -- 회원 아이디(FK) (회원이 탈퇴할 경우 시퀀스 사용 --> delete_0713_001_아이디)
    cm_content	VARCHAR2(1000) NOT NULL,     -- 댓글 내용
    cm_regDate	DATE DEFAULT sysdate,       -- 댓글 작성일 (Default: sysdate)
    CONSTRAINT tbl_comment_cm_no_pk  PRIMARY KEY(cm_no),
    CONSTRAINT tbl_comment_mem_id_fk  FOREIGN KEY(mem_id) REFERENCES tbl_member(mem_id) ON DELETE CASCADE
);

-- tbl_comment_seq (댓글 시퀀스) --> 단순 숫자 1씩 증가
CREATE SEQUENCE tbl_comment_seq
START WITH 1
INCREMENT BY 1;

-- ************************* 기부 ************************* --
-- tbl_doOrg (기부단체 상세 정보) : 관리자에서 접근 or 기부단체에서 먼저 접근
CREATE TABLE tbl_doOrg(
    doForm_id	NUMBER(10),     -- 기부단체 아이디(PK) (시퀀스 - 숫자로만)
    doOrg_name	VARCHAR2(100),  -- 기부단체명 : unique
	doOrg_hp	VARCHAR2(20),   -- 기부단체 연락처
	doOrg_address	VARCHAR2(255),  -- 기부단체 주소
    doOrg_person	VARCHAR2(30),   -- 기부단체 담당자
	doOrg_account	NUMBER(20),     -- 총 기부 받은 금액 : check >0
    CONSTRAINT tbl_doOrg_doForm_id_pk  PRIMARY KEY(doForm_id),
    CONSTRAINT tbl_doOrg_doOrg_name_uk  UNIQUE(doOrg_name),
    CONSTRAINT tbl_doOrg_doOrg_account CHECK(doOrg_account>0)
);

-- tbl_doOrg_seq (기부단체 아이디 시퀀스)
CREATE SEQUENCE tbl_doOrg_seq
START WITH 1
INCREMENT BY 1;

-- tbl_doForm (기부단체 신청 양식)
CREATE TABLE tbl_doForm(
    doForm_id   NUMBER(10),     -- 기부단체 아이디(PK)(FK) (시퀀스 - 숫자로만)
    doForm_title    VARCHAR2(100) NOT NULL,      -- 신청 제목	
	doForm_content	VARCHAR2(1000) NOT NULL,     -- 신청 내용
	doForm_date	DATE DEFAULT sysdate,       -- 신청 날짜 (Default: sysdate)
    CONSTRAINT tbl_doForm_doForm_id_pk  PRIMARY KEY(doForm_id),
    CONSTRAINT tbl_doForm_doForm_id_fk  FOREIGN KEY(doForm_id) REFERENCES tbl_doOrg(doForm_id) ON DELETE CASCADE
);

-- tbl_memDo (회원이 기부한 내역)
CREATE TABLE tbl_memDo(
    dona_no     VARCHAR2(15),   -- 기부 내역 순서(PK) (시퀀스 - DONA_00000001)
    doForm_id   NUMBER(10) NOT NULL,     -- 기부단체 아이디(FK) (시퀀스 - 숫자로만)
    mem_id      VARCHAR2(30) NOT NULL,    -- 회원 아이디(FK) (회원이 탈퇴할 경우 시퀀스 사용 --> delete_0713_001_아이디)
    dona_price	NUMBER(20) NOT NULL,     -- 기부 금액 : check >0
    dona_date   DATE DEFAULT sysdate,       -- 기부한 날짜 (Default: sysdate)
    CONSTRAINT tbl_memDo_dona_no_pk  PRIMARY KEY(dona_no),
    CONSTRAINT tbl_memDo_doForm_id_fk  FOREIGN KEY(doForm_id) REFERENCES tbl_doOrg(doForm_id) ON DELETE CASCADE,
    CONSTRAINT tbl_memDo_mem_id_fk  FOREIGN KEY(mem_id) REFERENCES tbl_member(mem_id) ON DELETE CASCADE,
    CONSTRAINT tbl_memDo_dona_price CHECK(dona_price>0)
);

-- tbl_memDo_seq (회원이 기부했을 경우 시퀀스) -> 기부 하면 INSERT로 'DONA_0000000시퀀스값'을 붙인다.
CREATE SEQUENCE tbl_memDo_seq
START WITH 1
INCREMENT BY 1;

-- ************************* 주문 ************************* --
-- tbl_order (주문)
CREATE TABLE tbl_order(
	order_no	VARCHAR2(15),   -- 주문 번호(PK) (거래 요청이 들어온 순서) D_00000001
	mem_id      VARCHAR2(30) NOT NULL,       -- 회원 아이디(FK) (회원이 탈퇴할 경우 시퀀스 사용 --> delete_0713_001_아이디)
	stock_no	VARCHAR2(15) NOT NULL,         -- 상품 번호(FK) (시퀀스 - S_00000001)
    CONSTRAINT tbl_order_order_no_pk  PRIMARY KEY(order_no),
    CONSTRAINT tbl_order_mem_id_fk  FOREIGN KEY(mem_id) REFERENCES tbl_member(mem_id) ON DELETE CASCADE,
    CONSTRAINT tbl_order_stock_no_fk  FOREIGN KEY(stock_no) REFERENCES tbl_stock(stock_no) ON DELETE CASCADE
);

-- tbl_order_seq (주문 번호 시퀀스) -> 주문이 들어오면 INSERT로 'D_0000000시퀀스값'을 붙인다.
CREATE SEQUENCE tbl_order_seq
START WITH 1
INCREMENT BY 1;

-- tbl_orInfo (주문 상세 정보)
CREATE TABLE tbl_orInfo(
	order_no	VARCHAR2(15),       -- 주문 번호(PK)(FK) (거래 요청이 들어온 순서) D_00000001
	order_count     NUMBER(10) NOT NULL,     -- 회원이 구매한 수량 : check >0
	order_status	NUMBER(3) NOT NULL,      -- 거래 상태 (1: 구매요청, 2: 구매완료, 3: 환불요청, 4: 환불완료)
  	order_date	DATE DEFAULT sysdate,   -- 거래 상태가 바뀐 날짜 (status가 변경되었을 때의 날짜 / Default: sysdate)
    CONSTRAINT tbl_orInfo_order_no_pk  PRIMARY KEY(order_no),
    CONSTRAINT tbl_orInfo_order_no_fk  FOREIGN KEY(order_no) REFERENCES tbl_order(order_no) ON DELETE CASCADE,
    CONSTRAINT tbl_orInfo_order_count CHECK(order_count>0)
);

-- ************************* 결제 ************************* --
-- tbl_pay (결제) : 거래 들어온 상황에 맞춰서 / '카카오페이'
CREATE TABLE tbl_pay(
	order_no	VARCHAR2(15),   -- 주문 번호(PK)(FK) (거래 요청이 들어온 순서) D_00000001
	pay_price	NUMBER(20) NOT NULL,     -- 결제 금액 : check >0
	pay_status	NUMBER(3) NOT NULL,      -- 결제 상태 (1: 결제 미완료, 2: 결제 완료, 3: 결제 취소)
   	pay_date	DATE DEFAULT sysdate,       -- 결제 상태가 바뀐 날짜 (status가 변경되었을 때의 날짜 / Default: sysdate)
    CONSTRAINT tbl_pay_order_no_pk  PRIMARY KEY(order_no),
    CONSTRAINT tbl_pay_order_no_fk  FOREIGN KEY(order_no) REFERENCES tbl_order(order_no) ON DELETE CASCADE,
    CONSTRAINT tbl_pay_pay_price CHECK(pay_price>0)
);

-- ************************* 펀드 ************************* --
-- tbl_fund (펀드)
CREATE TABLE tbl_fund(
	fund_no	    VARCHAR2(15),   -- 펀드 번호(PK) (시퀀스 - F_00000001)
	stock_no	VARCHAR2(15) NOT NULL,   -- 상품 번호(FK) (시퀀스 - S_00000001)
    CONSTRAINT tbl_fund_fund_no_pk  PRIMARY KEY(fund_no),
    CONSTRAINT tbl_fund_stock_no_fk  FOREIGN KEY(stock_no) REFERENCES tbl_stock(stock_no) ON DELETE CASCADE
);

-- tbl_fund_seq (펀드 시퀀스) -> 펀드 신청이 완료되면 INSERT로 'F_0000000시퀀스값'을 붙인다.
CREATE SEQUENCE tbl_fund_seq
START WITH 1
INCREMENT BY 1;

-- tbl_fInfo (펀드 상세 정보)
CREATE TABLE tbl_fInfo(
	fund_no         VARCHAR2(15),       -- 펀드 번호(PK)(FK) (시퀀스) - F_00000001
	fInfo_title	    VARCHAR2(100) NOT NULL,      -- 펀드명
  	fInfo_price     NUMBER(20) NOT NULL,         -- 펀드 액수(=리워드 금액) --> 상품 금액 : check >0
	fInfo_regDate	DATE DEFAULT sysdate,   -- 펀드 등록일 (Default: sysdate)
	fInfo_endDate	DATE NOT NULL,       -- 펀드 종료일 (펀드를 언제 종료할지 농부가 정한다.)
    CONSTRAINT tbl_fInfo_fund_no_pk  PRIMARY KEY(fund_no),
    CONSTRAINT tbl_fInfo_fund_no_fk  FOREIGN KEY(fund_no) REFERENCES tbl_fund(fund_no) ON DELETE CASCADE,
    CONSTRAINT tbl_fInfo_fInfo_price CHECK(fInfo_price>0)
);

-- 보영이누나 

--****************주말농장****************
--시퀀스 생성
CREATE SEQUENCE tbl_iot_seq
START WITH 1
INCREMENT BY 1;

----시퀀스 삭제
--DROP SEQUENCE tbl_iot_seq;
--
----시퀀스 다음값
--SELECT tbl_iot_seq.nextval
--FROM dual;
--
----시퀀스 현재값
--SELECT tbl_iot_seq.currval
--FROM dual;

--tbl_iot (주말농장 IoT 데이터값)
CREATE TABLE tbl_iot(
wfarm_key   NUMBER(10) NOT NULL,--주말농장 키(시퀀스) - 숫자로만(FK)   
iot_soilHumi   VARCHAR2(200),--토양습도(파일명 - 경로)   
iot_temp   VARCHAR2(200),--온도(파일명 - 경로)   
iot_video   VARCHAR2(200),--영상(파일명 - 경로)   
iot_date   DATE DEFAULT SYSDATE, --값을 보낸 날짜(파일명 - 경로)   
CONSTRAINT tbl_iot_wfarm_key_fk  FOREIGN KEY(wfarm_key) REFERENCES tbl_wfarm(wfarm_key) ON DELETE CASCADE
);

--tbl_wfarm (주말농장)
CREATE TABLE tbl_wfarm(
wfarm_key   NUMBER(10),--주말농장 키(시퀀스) - 숫자로만(PK)   
mem_id   VARCHAR2(30) NOT NULL,--회원 아이디(임대자)(FK)   
farm_key   NUMBER(10) NOT NULL,--농부의 고유키(시퀀스) - 숫자로만(FK)   
CONSTRAINT tbl_wfarm_wfarm_key_pk  PRIMARY KEY(wfarm_key),
CONSTRAINT tbl_wfarm_mem_id_fk  FOREIGN KEY(mem_id) REFERENCES tbl_member(mem_id) ON DELETE CASCADE,
CONSTRAINT tbl_wfarm_farm_key_fk  FOREIGN KEY(farm_key) REFERENCES tbl_farm(farm_key) ON DELETE CASCADE
);

--tbl_wfarmInfo  (주말농장 상세 정보)
CREATE TABLE tbl_wfarmInfo(
wfarm_key   NUMBER(10),--주말농장 키(시퀀스) - 숫자로만(PK)(FK)   wfarm_key   NUMBER(10)
wfarmInfo_title   VARCHAR2(200) NOT NULL,--주말농장 닉네임(이름) : unique   wfarmInfo_title   VARCHAR2(200)
wfarmInfo_price   NUMBER(20) NOT NULL, --1평당 가격(1x1 가격) : check   wfarmInfo_price   NUMBER(20)
CONSTRAINT tbl_wfarmInfo_wfarm_key_pk PRIMARY KEY(wfarm_key),
CONSTRAINT tbl_wfarmInfo_wfarm_key_fk  FOREIGN KEY(wfarm_key) REFERENCES tbl_wfarm(wfarm_key) ON DELETE CASCADE,
CONSTRAINT tbl_wfarmInfo_title_uk  UNIQUE(wfarmInfo_title),
CONSTRAINT tbl_wfarmInfo_price_min  CHECK (wfarmInfo_price > 0)
);

--********************농부*******************
--시퀀스 생성
CREATE SEQUENCE tbl_farm_seq
START WITH 1
INCREMENT BY 1;

----시퀀스 삭제
--DROP SEQUENCE tbl_farm_seq;
--
----시퀀스 다음값
--SELECT tbl_farm_seq.nextval
--FROM dual;
--
----시퀀스 현재값
--SELECT tbl_farm_seq.currval
--FROM dual;

--tbl_farm (농부)
CREATE TABLE tbl_farm (
farm_key   NUMBER(10),--농부의 고유키(시퀀스) - 숫자로만(PK)
mem_id   VARCHAR2(30) NOT NULL,--회원 아이디(삭제시 delete_001_0713_id)시퀀스(FK)   
farm_adv   NUMBER(3) DEFAULT 0 ,--농부 점수(+ : 농부 회원, - : 농부 회원) / Default: 0   
farm_regDate DATE DEFAULT SYSDATE,--농부 등록일   
CONSTRAINT tbl_farm_farm_key_pk  PRIMARY KEY(farm_key),
CONSTRAINT tbl_farm_mem_id_fk  FOREIGN KEY(mem_id) REFERENCES tbl_member(mem_id) ON DELETE CASCADE
);
 
--tbl_fPlan (농부 계획)
CREATE TABLE tbl_fPlan(
farm_key   NUMBER(10),--농부의 고유키(시퀀스) - 숫자로만(PK)(FK)   
fPlan_plan   VARCHAR2(1000),--농부가 하고자 하는 일   
fPlan_capital   NUMBER(20),--농부 자본 : check   
fPlan_use   VARCHAR2(1000),--쓰임새   
fPlan_address   VARCHAR2(255) NOT NULL,--농장 주소   
CONSTRAINT tbl_fPlan_farm_key_pk  PRIMARY KEY(farm_key),
CONSTRAINT tbl_fPlan_farm_key_fk  FOREIGN KEY(farm_key) REFERENCES tbl_farm(farm_key) ON DELETE CASCADE,
CONSTRAINT tbl_fPlan_fPlan_capital_min  CHECK (fPlan_capital > 0)
);

--*******************상품***************** 
--시퀀스 생성
CREATE SEQUENCE tbl_stock_seq
START WITH 1
INCREMENT BY 1;

----시퀀스 삭제
--DROP SEQUENCE tbl_stock_seq;
--
----시퀀스 다음값
--SELECT tbl_stock_seq.nextval
--FROM dual;
--
----시퀀스 현재값
--SELECT tbl_stock_seq.currval
--FROM dual;

--tbl_stock (상품) : 상품을 등록할 때는 가격은 따로 지정하지 않는다.
CREATE TABLE tbl_stock(
stock_no   VARCHAR2(15),--상품 번호(시퀀스) - S_00000001(PK)   stock_no   NUMBER
farm_key   NUMBER(10) NOT NULL,--농부의 고유키(시퀀스) - 숫자로만(FK)   farm_key   NUMBER(10)
mem_id   VARCHAR2(30) NOT NULL,--회원 아이디(삭제시 delete_001_0713_id)시퀀스(FK)   mem_id   VARCHAR2(30)
CONSTRAINT tbl_stock_stock_no_pk  PRIMARY KEY(stock_no),
CONSTRAINT tbl_stock_farm_key_fk  FOREIGN KEY(farm_key) REFERENCES tbl_farm(farm_key) ON DELETE CASCADE,
CONSTRAINT tbl_stock_mem_id_fk  FOREIGN KEY(mem_id) REFERENCES tbl_member(mem_id) ON DELETE CASCADE
);

--tbl_sInfo (상품 상세 정보)
CREATE TABLE tbl_sInfo(
stock_no   VARCHAR2(15),--상품 번호(시퀀스) - S_00000001(PK)(FK)   
sInfo_name   VARCHAR2(100) NOT NULL,--상품명   
sInfo_detail   VARCHAR2(200),--상품 특징   
sInfo_kg   NUMBER(10),--무게(kg) : g으로 입력할 경우, 입력시에는 ÷1000을 하고, 보여줄 때는 ×1000을 해준다. : check      
sInfo_ea   NUMBER(5),--개수(ea) : check
sInfo_price   NUMBER(20),--상품 가격 :check   
sInfo_regDate DATE DEFAULT SYSDATE,--상품 등록일   
sInfo_kind   NUMBER(3) NOT NULL,--상품 종류(1: 이벤트, 2: 농산, 3: 축산, 4: 수산, 5: 건강·유기농, 6: 버섯, 7: 주류, 8: 기타)   
CONSTRAINT tbl_sInfo_stock_no_pk  PRIMARY KEY(stock_no),
CONSTRAINT tbl_sInfo_stock_no_fk  FOREIGN KEY(stock_no) REFERENCES tbl_stock(stock_no) ON DELETE CASCADE,
CONSTRAINT tbl_sInfo_sInfo_kg_min  CHECK (sInfo_kg > 0),
CONSTRAINT tbl_sInfo_sInfo_ea_min  CHECK (sInfo_ea > 0),
CONSTRAINT tbl_sInfo_sInfo_price_min  CHECK (sInfo_price > 0)
);

--********************배송********************
--시퀀스 생성
CREATE SEQUENCE tbl_delivery_seq
START WITH 1
INCREMENT BY 1;

----시퀀스 삭제
--DROP SEQUENCE tbl_delivery_seq;
--
----시퀀스 다음값
--SELECT tbl_delivery_seq.nextval
--FROM dual;
--
----시퀀스 현재값
--SELECT tbl_delivery_seq.currval
--FROM dual;

--tbl_delivery (배송) : 주문 번호에 맞는 값을 Update한다.
CREATE TABLE tbl_delivery(
de_no   VARCHAR2(15),--배송 번호(배송 요청이 들어온 순서) D_00000001(PK)   de_no   VARCHAR2(15)
mem_id   VARCHAR2(30) NOT NULL,--회원 아이디(삭제시 delete_001_0713_id)시퀀스(FK)   mem_id   VARCHAR2(30)
stock_no   VARCHAR2(15) NOT NULL,--상품 번호(시퀀스) - S_00000001(FK)   stock_no   VARCHAR2(15)
CONSTRAINT tbl_delivery_de_no_pk  PRIMARY KEY(de_no),
CONSTRAINT tbl_delivery_mem_id_fk  FOREIGN KEY(mem_id) REFERENCES tbl_member(mem_id) ON DELETE CASCADE,
CONSTRAINT tbl_delivery_stock_no_fk  FOREIGN KEY(stock_no) REFERENCES tbl_stock(stock_no) ON DELETE CASCADE
);

--tbl_deInfo(배송 상품 정보)
CREATE TABLE tbl_deInfo(
de_no   VARCHAR2(15),--배송 번호(배송 요청이 들어온 순서) D_00000001(PK)(FK)   de_no   VARCHAR2(15)
deInfo_status   NUMBER(3) NOT NULL,--배송 상태(1: 배송요청, 2: 배송준비중, 3: 배송중, 4: 배송완료)   deInfo_status   NUMBER(3)
deInfo_arrDate   DATE DEFAULT SYSDATE,--배송 예정일   deInfo_arrDate   DATE
deInfo_date   DATE DEFAULT SYSDATE,--배송 상태 변화일(status가 변경되었을 때의 날짜)   deInfo_date   DATE
CONSTRAINT tbl_deInfo_de_no_pk  PRIMARY KEY(de_no),
CONSTRAINT tbl_deInfo_de_no_fk  FOREIGN KEY(de_no) REFERENCES tbl_delivery(de_no) ON DELETE CASCADE
);

--*************************경매**************************
--시퀀스 생성
CREATE SEQUENCE tbl_auction_seq
START WITH 1
INCREMENT BY 1;

----시퀀스 삭제
--DROP SEQUENCE tbl_auction_seq;
--
----시퀀스 다음값
--SELECT tbl_auction_seq.nextval
--FROM dual;
--
----시퀀스 현재값
--SELECT tbl_auction_seq.currval
--FROM dual;

--tbl_auction (경매)
CREATE TABLE tbl_auction(
auc_no   VARCHAR2(15),--경매 번호(시퀀스) - A_00000001(PK)   
stock_no   VARCHAR2(15) NOT NULL,--상품 번호(시퀀스) - S_00000001(FK)   
CONSTRAINT tbl_auction_auc_no_pk  PRIMARY KEY(auc_no),
CONSTRAINT tbl_auction_stock_no_fk  FOREIGN KEY(stock_no) REFERENCES tbl_stock(stock_no) ON DELETE CASCADE
);

--tbl_memAuc (회원이 한 경매 정보)
CREATE TABLE tbl_memAuc(
auc_no   VARCHAR2(15),--경매 번호(시퀀스) - A_00000001(PK)(FK)   
memAuc_price NUMBER(20),--경매 액수 : check   
CONSTRAINT tbl_memAuc_auc_no_pk  PRIMARY KEY(auc_no),
CONSTRAINT tbl_memAuc_auc_no_fk  FOREIGN KEY(auc_no) REFERENCES tbl_auction(auc_no) ON DELETE CASCADE,
CONSTRAINT tbl_memAuc_memAuc_price_min  CHECK (memAuc_price > 0)
);

--tbl_aucInfo (경매 상세 정보)
CREATE TABLE tbl_aucInfo(
auc_no   VARCHAR2(15),--경매 번호(시퀀스) - A_00000001(PK)(FK)   
auc_title   VARCHAR2(100) NOT NULL,--경매명   
auc_startPrice   NUMBER(20),--경매 시작가 : check   
auc_nowPrice   NUMBER(20),--현재 경매가 : check   
auc_finalPrice   NUMBER(20),--경매 낙찰가 : check   
auc_status   NUMBER(3) NOT NULL,--경매 낙찰 여부(1: 진행중, 2: 유찰, 3: 낙찰)   
auc_regDate   DATE DEFAULT SYSDATE,--경매 등록일   
auc_term   DATE DEFAULT SYSDATE,--경매 기간(얼마나 경매를 할 건지 기간을 정한다.)
CONSTRAINT tbl_aucInfo_auc_no_pk  PRIMARY KEY(auc_no),
CONSTRAINT tbl_aucInfo_auc_no_fk  FOREIGN KEY(auc_no) REFERENCES tbl_auction(auc_no) ON DELETE CASCADE,
CONSTRAINT tbl_aucInfo_auc_startPrice_min  CHECK (auc_startPrice > 0),
CONSTRAINT tbl_aucInfo_auc_nowPrice_min  CHECK (auc_nowPrice > 0),
CONSTRAINT tbl_aucInfo_auc_finalPrice_min  CHECK (auc_finalPrice > 0)
);

SELECT * FROM tab;