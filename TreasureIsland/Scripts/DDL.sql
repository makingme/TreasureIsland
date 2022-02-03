-- dmaru.BIZ_LOG definition

CREATE TABLE `BIZ_LOG` (
  `CMID` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `UMID` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `MSG_TYPE` int DEFAULT NULL,
  `STATUS` int DEFAULT NULL,
  `CALL_STATUS` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `REQUEST_TIME` datetime DEFAULT NULL,
  `SEND_TIME` datetime DEFAULT NULL,
  `REPORT_TIME` datetime DEFAULT NULL,
  `DEST_PHONE` varchar(16) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `SEND_PHONE` varchar(16) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `DEST_NAME` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `SEND_NAME` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `SUBJECT` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `MSG_BODY` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `NATION_CODE` varchar(5) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `SENDER_KEY` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TEMPLATE_CODE` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `RESPONSE_METHOD` varchar(8) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TIMEOUT` int DEFAULT NULL,
  `RE_TYPE` varchar(3) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `RE_BODY` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `RE_PART` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `COVER_FLAG` int DEFAULT NULL,
  `SMS_FLAG` int DEFAULT NULL,
  `REPLY_FLAG` int DEFAULT NULL,
  `RETRY_CNT` int DEFAULT NULL,
  `ATTACHED_FILE` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `VXML_FILE` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `USE_PAGE` int DEFAULT NULL,
  `USE_TIME` int DEFAULT NULL,
  `SN_RESULT` int DEFAULT NULL,
  `TEL_INFO` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `CINFO` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `USER_KEY` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `AD_FLAG` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `RCS_REFKEY` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `USER_NO` varchar(9) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- dmaru.BIZ_MSG definition

CREATE TABLE `BIZ_MSG` (
  `CMID` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `UMID` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `MSG_TYPE` int DEFAULT '0',
  `STATUS` int DEFAULT '0',
  `CALL_STATUS` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `REQUEST_TIME` datetime NOT NULL,
  `SEND_TIME` datetime NOT NULL,
  `REPORT_TIME` datetime DEFAULT NULL,
  `DEST_PHONE` varchar(16) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `SEND_PHONE` varchar(16) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `DEST_NAME` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `SEND_NAME` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `SUBJECT` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `MSG_BODY` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `NATION_CODE` varchar(5) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `SENDER_KEY` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TEMPLATE_CODE` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `RESPONSE_METHOD` varchar(8) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TIMEOUT` int DEFAULT NULL,
  `RE_TYPE` varchar(3) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT 'N',
  `RE_BODY` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `RE_PART` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `COVER_FLAG` int DEFAULT '0',
  `SMS_FLAG` int DEFAULT '0',
  `REPLY_FLAG` int DEFAULT '0',
  `RETRY_CNT` int DEFAULT NULL,
  `ATTACHED_FILE` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `VXML_FILE` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `USE_PAGE` int DEFAULT '0',
  `USE_TIME` int DEFAULT '0',
  `SN_RESULT` int DEFAULT '0',
  `TEL_INFO` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `CINFO` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `USER_KEY` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `AD_FLAG` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `RCS_REFKEY` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `USER_NO` varchar(9) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`CMID`),
  KEY `BIZ_MSG_IX01` (`STATUS`,`SEND_TIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- dmaru.BIZ_RCS definition

CREATE TABLE `BIZ_RCS` (
  `COPY_ALLOWED` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `CHATBOT_ID` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `FOOTER` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `HEADER` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `MESSAGEBASE_ID` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `BUTTONS` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `REFKEY` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `RCS_BODY` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`REFKEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- dmaru.TB_CMP_TEMPLATE definition

CREATE TABLE `TB_CMP_TEMPLATE` (
  `TEMPLATE_CODE` varchar(20) NOT NULL COMMENT '템플릿 코드',
  `TEMPLATE_TITLE` varchar(40) NOT NULL COMMENT '템플릿 제목',
  `MESSAGE` varchar(4000) DEFAULT NULL COMMENT '메시지 내용',
  `SUB_MESSAGE` text COMMENT '내용(EXT)',
  `WEBEDIT` text COMMENT 'webedit 내용',
  `IMAGE_URL` text COMMENT '이미지 URL',
  `VIDEO_URL` text COMMENT '동영상 내용',
  `REPLACE_YN` varchar(2) DEFAULT NULL COMMENT '치환발송 여부',
  `CATEGORY_TYPE` varchar(2) DEFAULT NULL COMMENT '템플릿유형',
  `REG_ID` varchar(20) DEFAULT NULL COMMENT '등록자ID',
  `REG_DT` datetime DEFAULT NULL COMMENT '등록일',
  `MOD_ID` varchar(20) DEFAULT NULL COMMENT '수정자ID',
  `MOD_DT` datetime DEFAULT NULL COMMENT '수정일',
  PRIMARY KEY (`TEMPLATE_CODE`),
  UNIQUE KEY `QK_TEMPLATE_TEMPLATECODE` (`TEMPLATE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='푸시_템플릿';


-- dmaru.TB_SVC definition

CREATE TABLE `TB_SVC` (
  `SVC_ID` int NOT NULL AUTO_INCREMENT COMMENT '서비스ID',
  `SVC_NM` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '서비스명',
  `SVC_TP` char(2) COLLATE utf8_bin DEFAULT NULL COMMENT '사용제품구분',
  `REG_DTTM` timestamp NULL DEFAULT NULL COMMENT '등록일자',
  `APP_ID` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '앱구분ID',
  `SVC_DTL` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '서비스_설명',
  PRIMARY KEY (`SVC_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='서비스';


-- dmaru.TB_SYS_AUTH_GRP definition

CREATE TABLE `TB_SYS_AUTH_GRP` (
  `AUTH_GRP_ID` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '권한 그룹 ID',
  `AUTH_GRP_NM` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '권한 그룹 이름',
  `AUTH_GRP_DESC` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '권한 그룹 설명',
  `REG_ID` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '등록자ID',
  `REG_DTTM` timestamp NULL DEFAULT NULL COMMENT '등록일',
  `MOD_ID` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '수정자ID',
  `MOD_DTTM` timestamp NULL DEFAULT NULL COMMENT '수정일',
  `INTRO_MENU_ID` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '시작메뉴ID',
  PRIMARY KEY (`AUTH_GRP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- dmaru.TB_SYS_CD_GRP definition

CREATE TABLE `TB_SYS_CD_GRP` (
  `CD_GRP_ID` varchar(5) COLLATE utf8_bin NOT NULL COMMENT '변수그룹ID',
  `GRP_NM` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '변수그룹명',
  `GRP_DESC` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '그룹설명',
  `REG_ID` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '등록자ID',
  `REG_DTTM` timestamp NULL DEFAULT NULL COMMENT '등록일',
  `MOD_ID` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '수정자ID',
  `MOD_DTTM` timestamp NULL DEFAULT NULL COMMENT '수정일',
  `LANG_CD` char(2) COLLATE utf8_bin DEFAULT NULL COMMENT '언어코드',
  `USE_YN` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '사용여부',
  `MOD_YN` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '수정가능여부',
  PRIMARY KEY (`CD_GRP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- dmaru.TB_SYS_LOGIN_HIST definition

CREATE TABLE `TB_SYS_LOGIN_HIST` (
  `HIST_IDX` int NOT NULL AUTO_INCREMENT COMMENT '인덱스',
  `LOGIN_DTTM` timestamp NULL DEFAULT NULL COMMENT '로그인시간',
  `REMOTE_IP` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '접속ip',
  `USER_ID` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '사용자ID',
  PRIMARY KEY (`HIST_IDX`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- dmaru.TB_SYS_MENU definition

CREATE TABLE `TB_SYS_MENU` (
  `MENU_ID` varchar(10) COLLATE utf8_bin NOT NULL COMMENT '메뉴ID',
  `MENU_NM` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '메뉴명',
  `MENU_URL` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '메뉴URL',
  `POPUP_YN` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '팝업여부',
  `POPUP_W` int DEFAULT NULL COMMENT '팝업넓이',
  `POPUP_H` int DEFAULT NULL COMMENT '팝업높이',
  `STS_CD` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '팝업종류',
  `SORT_NO` int DEFAULT NULL COMMENT '정렬순서',
  `UP_MENU_ID` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '상위메뉴ID',
  `REG_ID` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '등록자ID',
  `REG_DTTM` timestamp NULL DEFAULT NULL COMMENT '등록일',
  `MOD_ID` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '수정자ID',
  `MOD_DTTM` timestamp NULL DEFAULT NULL COMMENT '수정일',
  `MENU_DESC` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '메뉴설명',
  PRIMARY KEY (`MENU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- dmaru.TB_SYS_NOTC definition

CREATE TABLE `TB_SYS_NOTC` (
  `NOTC_IDX` varchar(10) COLLATE utf8_bin NOT NULL COMMENT '공지사항idx',
  `TITLE` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '제목',
  `CONT` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT '내용',
  `REG_ID` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '등록자id',
  `REG_DTTM` timestamp NULL DEFAULT NULL COMMENT '등록일',
  `MOD_ID` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '수정자id',
  `MOD_DTTM` timestamp NULL DEFAULT NULL COMMENT '수정일',
  PRIMARY KEY (`NOTC_IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- dmaru.TB_SYS_USER definition

CREATE TABLE `TB_SYS_USER` (
  `USER_ID` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '관리자ID',
  `USER_NM` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '사용자명',
  `USER_PW` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '비밀번호',
  `USE_YN` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '사용여부',
  `EMAIL` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '이메일주소',
  `REG_ID` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '등록ID',
  `REG_DTTM` timestamp NULL DEFAULT NULL COMMENT '등록일자',
  `MOD_ID` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '변경ID',
  `MOD_DTTM` timestamp NULL DEFAULT NULL COMMENT '변경일자',
  `USER_TP` varchar(14) COLLATE utf8_bin DEFAULT NULL COMMENT '연락처',
  `USER_EP` varchar(14) COLLATE utf8_bin DEFAULT NULL COMMENT '비상연락망',
  `LOGIN_LOCK` char(1) COLLATE utf8_bin DEFAULT 'N' COMMENT '로그인 잠금',
  `LOCK_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '로그인 잠긴 시간',
  `LOGIN_STATUS` char(1) COLLATE utf8_bin DEFAULT 'N' COMMENT '로그인 여부',
  `LOGIN_FAIL_CNT` int DEFAULT NULL COMMENT '로그인 실패횟',
  `USER_PW_1` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '비밀번호1',
  `USER_PW_2` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '비밀번호2',
  `USER_PW_3` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '비밀번호3',
  `USER_PW_4` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '비밀번호4',
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='통합관리자';


-- dmaru.T_PUSH_APPLICATION definition

CREATE TABLE `T_PUSH_APPLICATION` (
  `APPID` varchar(128) COLLATE utf8_bin NOT NULL COMMENT '앱식별자',
  `APPNAME` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '어플리케이션명',
  `ISDELETED` varchar(1) COLLATE utf8_bin DEFAULT NULL COMMENT '삭제여부',
  `REGDATE` timestamp NULL DEFAULT NULL COMMENT '등록일시',
  `MODDATE` timestamp NULL DEFAULT NULL COMMENT '변경일시',
  `SVC_ID` int DEFAULT NULL COMMENT '서비스ID',
  `SVC_DTL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`APPID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='어플리케이션';


-- dmaru.T_PUSH_FAIL definition

CREATE TABLE `T_PUSH_FAIL` (
  `PSID` varchar(255) DEFAULT NULL COMMENT '토큰키',
  `SEQNO` bigint NOT NULL COMMENT '메세지원장번호',
  `CUID` varchar(50) DEFAULT NULL COMMENT '유저아이디',
  `APPID` varchar(50) DEFAULT NULL COMMENT '앱아이디',
  `PNSID` varchar(10) DEFAULT NULL COMMENT '보낸 푸쉬서버',
  `RETRYCNT` int NOT NULL DEFAULT '0',
  `RESULTCODE` varchar(10) DEFAULT NULL COMMENT '에러코드',
  `RESULTMSG` varchar(4000) DEFAULT NULL COMMENT '에러메세지',
  `REGDATE` datetime DEFAULT NULL,
  `MODEDATE` datetime DEFAULT NULL,
  `CSV_VARS` varchar(2000) DEFAULT NULL,
  `ISSMSSENT` char(1) DEFAULT 'N',
  UNIQUE KEY `QK_T_PUSH_FAIL` (`PSID`,`SEQNO`),
  KEY `I_T_PUSH_FAIL` (`APPID`,`CUID`,`REGDATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='발송 실패메세지 히스토리 테이블';


-- dmaru.T_PUSH_MSG_RECV_MASTER definition

CREATE TABLE `T_PUSH_MSG_RECV_MASTER` (
  `SEQNO` bigint NOT NULL AUTO_INCREMENT,
  `RESERVE_SEQNO` bigint DEFAULT '0',
  `SOUNDFILE` varchar(20) DEFAULT NULL,
  `BADGENO` int DEFAULT NULL,
  `MESSAGE` varchar(4000) DEFAULT NULL,
  `SUB_TITLE` varchar(4000) DEFAULT NULL,
  `EXT` varchar(4000) DEFAULT NULL,
  `RESERVEDATE` datetime DEFAULT NULL,
  `PRIORITY` int DEFAULT NULL,
  `SENDERID` varchar(50) DEFAULT NULL,
  `REGDATE` datetime DEFAULT NULL,
  `APPID` varchar(255) DEFAULT NULL,
  `SERVICECODE` varchar(20) DEFAULT NULL,
  `TYPE` char(1) DEFAULT 'E',
  `TOTAL_SEND_CNT` int DEFAULT '0',
  `SEND_CNT` int DEFAULT '0',
  `FAIL_CNT` int DEFAULT '0',
  `REV_CNT` int DEFAULT '0',
  `READ_CNT` int DEFAULT '0',
  `UPNS_CNT` int DEFAULT '0',
  `APNS_CNT` int DEFAULT '0',
  `GCM_CNT` int DEFAULT '0',
  `AOM_CNT` int DEFAULT '0',
  `DB_IN` char(1) DEFAULT 'N',
  `ORIGINAL_SEQNO` int DEFAULT '0',
  `GROUPSEQ` varchar(50) DEFAULT NULL,
  `START_TIMESTAMP` bigint DEFAULT '0',
  `END_TIMESTAMP` bigint DEFAULT '0',
  PRIMARY KEY (`SEQNO`),
  KEY `IDX_MSG_RECV_REGDATE` (`REGDATE`,`APPID`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;


-- dmaru.T_PUSH_PAUSE_UPNS_HISTORY definition

CREATE TABLE `T_PUSH_PAUSE_UPNS_HISTORY` (
  `SEQNO` int NOT NULL AUTO_INCREMENT,
  `SOURCE_UPNSID` varchar(50) DEFAULT NULL,
  `TARGET_UPNSIDS` varchar(255) DEFAULT NULL,
  `MOVE_ALLOCATECNTS` varchar(255) DEFAULT NULL,
  `MOVED_COUNT` varchar(10) DEFAULT NULL,
  `MOVED_ALLOCATE_INFO` varchar(255) DEFAULT NULL,
  `START_USERSEQNO` varchar(30) DEFAULT NULL,
  `END_USERSEQNO` varchar(30) DEFAULT NULL,
  `REGDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`SEQNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- dmaru.T_PUSH_RESERVE_MSG definition

CREATE TABLE `T_PUSH_RESERVE_MSG` (
  `RESERVE_SEQNO` bigint NOT NULL AUTO_INCREMENT,
  `APP_ID` varchar(255) DEFAULT NULL,
  `MESSAGE` varchar(4000) DEFAULT NULL,
  `SUB_TITLE` varchar(4000) DEFAULT NULL,
  `SOUNDFILE` varchar(20) DEFAULT NULL,
  `BADGENO` int DEFAULT NULL,
  `PRIORITY` int DEFAULT NULL,
  `EXT` varchar(4000) DEFAULT NULL,
  `SENDERCODE` varchar(50) DEFAULT NULL,
  `SERVICECODE` varchar(20) DEFAULT NULL,
  `RESERVEDATE` datetime DEFAULT NULL,
  `TYPE` char(1) DEFAULT 'E' COMMENT 'E:개별발송, A:전체발송,G:그룹발송,C:CSV발송',
  `DB_IN` char(1) DEFAULT '' COMMENT 'Y:성공메세지 저장, N:성공메세지 저장하지 않음',
  `ATTACHFILE` varchar(255) DEFAULT NULL,
  `GROUPSEQ` varchar(50) DEFAULT NULL,
  `CUID` text,
  `REGDATE` datetime DEFAULT NULL,
  `PROCESS_FLAG` char(1) NOT NULL DEFAULT 'N' COMMENT 'N:예약,  R:발송대기/쓰레드등록,패 Y:발송,F:실패',
  `SPLIT_MSG_CNT` int DEFAULT '0',
  `DELAY_SECOND` int DEFAULT '0',
  `RESERVETYPE` varchar(2) DEFAULT NULL,
  `ISCONDITION` varchar(2) DEFAULT NULL,
  `PUSH_FAIL_SMS_SEND` char(1) DEFAULT 'N',
  `SMS_READ_WAIT_MINUTE` varchar(5) DEFAULT '0',
  `DOZ_GCM_SEND` char(1) DEFAULT 'N',
  `SEND_TIME_LIMIT` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`RESERVE_SEQNO`),
  KEY `I_RESERVE_MSG_RESERVEDATE` (`RESERVEDATE`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


-- dmaru.T_PUSH_SENDER_INFO definition

CREATE TABLE `T_PUSH_SENDER_INFO` (
  `SENDERSEQ` int NOT NULL AUTO_INCREMENT,
  `SENDERNAME` varchar(50) DEFAULT NULL,
  `SENDERCODE` varchar(50) DEFAULT NULL,
  `ISDELETED` varchar(1) DEFAULT NULL,
  `SENDERDESC` varchar(45) DEFAULT NULL COMMENT '발송자 설명',
  `REGID` varchar(20) DEFAULT NULL,
  `REGDT` datetime DEFAULT NULL,
  `MODID` varchar(20) DEFAULT NULL,
  `MODDT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`SENDERSEQ`),
  KEY `IDX_SENDER_INFO_SENDERCODE` (`SENDERCODE`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;


-- dmaru.T_PUSH_SERVER_GROUP definition

CREATE TABLE `T_PUSH_SERVER_GROUP` (
  `GROUPID` varchar(20) NOT NULL,
  `GROUPNAME` varchar(50) DEFAULT NULL,
  `SERVERTYPE` varchar(10) DEFAULT NULL,
  `VIP` varchar(30) DEFAULT NULL,
  `PORT` varchar(6) DEFAULT NULL,
  UNIQUE KEY `PK_T_PUSH_SERVER_GROUP` (`GROUPID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- dmaru.T_PUSH_SERVER_INFO definition

CREATE TABLE `T_PUSH_SERVER_INFO` (
  `SERVERID` varchar(50) NOT NULL,
  `GROUPID` varchar(20) DEFAULT NULL,
  `IP` varchar(20) DEFAULT NULL,
  `PORT` varchar(6) DEFAULT NULL,
  `INTERNEL_IP` varchar(20) DEFAULT NULL,
  `SERVERTYPE` varchar(10) DEFAULT NULL,
  `SERVERNAME` varchar(50) DEFAULT NULL,
  `URL` varchar(1024) DEFAULT NULL,
  `ISACTIVE` char(1) DEFAULT 'N',
  UNIQUE KEY `PK_T_PUSH_SERVER_INFO` (`SERVERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- dmaru.T_PUSH_SERVER_STATUS definition

CREATE TABLE `T_PUSH_SERVER_STATUS` (
  `STATUS` varchar(1) DEFAULT NULL,
  `REGDATE` datetime DEFAULT NULL,
  `IPADDRESS` varchar(15) NOT NULL,
  `PORT` varchar(6) NOT NULL,
  UNIQUE KEY `QK_SERVER_STATUS` (`IPADDRESS`,`PORT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- dmaru.T_PUSH_SERVICE definition

CREATE TABLE `T_PUSH_SERVICE` (
  `SERVICENAME` varchar(100) DEFAULT NULL,
  `SERVICECODE` varchar(20) NOT NULL,
  `MAXRETRYCNT` int DEFAULT NULL,
  `RETRYFLAG` varchar(1) DEFAULT NULL,
  `RESENDFLAG` varchar(1) DEFAULT NULL,
  `MAXRESENDCNT` int DEFAULT NULL,
  `PNSID` varchar(4) DEFAULT NULL,
  `FAILSMSFLAG` varchar(1) DEFAULT 'N',
  KEY `IDX_SERVICE_PNSSERVICE` (`PNSID`,`SERVICECODE`),
  KEY `IDX_SERVICE_IDX` (`SERVICECODE`),
  KEY `IDX_SERVICE_PNSID` (`PNSID`),
  KEY `IDX_SERVICE_RETRYCNT` (`RETRYFLAG`,`MAXRETRYCNT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- dmaru.T_PUSH_SMS definition

CREATE TABLE `T_PUSH_SMS` (
  `APPID` varchar(100) NOT NULL,
  `CUID` varchar(50) NOT NULL,
  `SEQNO` varchar(50) NOT NULL,
  `TITLE` varchar(4000) DEFAULT NULL,
  `SUB_TITLE` varchar(4000) DEFAULT NULL,
  `PNSID` varchar(10) DEFAULT NULL,
  `PSID` varchar(255) DEFAULT NULL,
  `SMS_READ_WAIT_MINUTE` varchar(5) DEFAULT NULL,
  `PUSH_STATUS` char(1) DEFAULT 'F',
  `ERRCODE` varchar(10) DEFAULT '0000',
  `REGDATE` datetime DEFAULT NULL,
  `EXPIREDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`APPID`,`CUID`,`SEQNO`),
  KEY `EXPIRE_INDEX` (`EXPIREDATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- dmaru.T_PUSH_SUCCESS definition

CREATE TABLE `T_PUSH_SUCCESS` (
  `PSID` varchar(255) DEFAULT NULL COMMENT '토큰키',
  `SEQNO` bigint NOT NULL COMMENT '메세지원장번호',
  `APPID` varchar(50) DEFAULT NULL COMMENT '앱아이디',
  `PNSID` varchar(10) DEFAULT NULL COMMENT '보낸 푸쉬서버',
  `STATUS` int NOT NULL DEFAULT '1' COMMENT '1:발송완료, 2:수신완료,3:읽음확인',
  `CUID` varchar(50) DEFAULT NULL COMMENT '유저아이디',
  `REGDATE` datetime DEFAULT NULL,
  `REVDATE` datetime DEFAULT NULL,
  `READDATE` datetime DEFAULT NULL,
  `CSV_VARS` varchar(2000) DEFAULT NULL,
  `ISSMSSENT` char(1) DEFAULT 'N',
  UNIQUE KEY `QK_SUCCESS` (`PSID`,`SEQNO`),
  KEY `I_T_PUSH_SUCCESS` (`APPID`,`CUID`,`REGDATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='보낸메세지 히스토리 테이블';


-- dmaru.T_PUSH_SUPERVISOR definition

CREATE TABLE `T_PUSH_SUPERVISOR` (
  `SUPERVISORSEQ` int NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) DEFAULT NULL,
  `PHONENO` varchar(20) DEFAULT NULL,
  `ISDELETED` varchar(1) DEFAULT NULL,
  `REGDATE` datetime DEFAULT NULL,
  `MODDATE` datetime DEFAULT NULL,
  `TELCOMP` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`SUPERVISORSEQ`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;


-- dmaru.T_PUSH_SYSMSG_SENTINFO definition

CREATE TABLE `T_PUSH_SYSMSG_SENTINFO` (
  `SENDDATE` char(8) COLLATE utf8_bin NOT NULL,
  `SENDERCODE` varchar(50) COLLATE utf8_bin NOT NULL,
  `SENT_CNT` int DEFAULT '0',
  `FAIL_CNT` int DEFAULT '0',
  `READ_CNT` int DEFAULT '0',
  `UPNS_SENT_CNT` int DEFAULT '0',
  `UPNS_FAIL_CNT` int DEFAULT '0',
  `APNS_SENT_CNT` int DEFAULT '0',
  `APNS_FAIL_CNT` int DEFAULT '0',
  `GCM_SENT_CNT` int DEFAULT '0',
  `GCM_FAIL_CNT` int DEFAULT '0',
  `AOM_SENT_CNT` int DEFAULT '0',
  `AOM_FAIL_CNT` int DEFAULT '0',
  `TIME00` int DEFAULT '0',
  `TIME01` int DEFAULT '0',
  `TIME02` int DEFAULT '0',
  `TIME03` int DEFAULT '0',
  `TIME04` int DEFAULT '0',
  `TIME05` int DEFAULT '0',
  `TIME06` int DEFAULT '0',
  `TIME07` int DEFAULT '0',
  `TIME08` int DEFAULT '0',
  `TIME09` int DEFAULT '0',
  `TIME10` int DEFAULT '0',
  `TIME11` int DEFAULT '0',
  `TIME12` int DEFAULT '0',
  `TIME13` int DEFAULT '0',
  `TIME14` int DEFAULT '0',
  `TIME15` int DEFAULT '0',
  `TIME16` int DEFAULT '0',
  `TIME17` int DEFAULT '0',
  `TIME18` int DEFAULT '0',
  `TIME19` int DEFAULT '0',
  `TIME20` int DEFAULT '0',
  `TIME21` int DEFAULT '0',
  `TIME22` int DEFAULT '0',
  `TIME23` int DEFAULT '0',
  PRIMARY KEY (`SENDDATE`,`SENDERCODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- dmaru.T_PUSH_TEMPLATE definition

CREATE TABLE `T_PUSH_TEMPLATE` (
  `TEMPLATECODE` varchar(20) NOT NULL,
  `MESSAGE` varchar(4000) DEFAULT NULL,
  `REGDATE` datetime DEFAULT NULL,
  `MODDATE` datetime DEFAULT NULL,
  `TEMPLATE_TYPE` varchar(50) DEFAULT NULL,
  `REGID` varchar(20) DEFAULT NULL,
  `EXT` text,
  `URL` varchar(2000) DEFAULT NULL,
  UNIQUE KEY `QK_TEMPLATE_TEMPLATECODE` (`TEMPLATECODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- dmaru.T_PUSH_USER definition

CREATE TABLE `T_PUSH_USER` (
  `CUID` varchar(50) COLLATE utf8_bin NOT NULL,
  `CNAME` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `VAL1` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `VAL2` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `VAL3` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `VAL4` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `VAL5` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `VAL6` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `VAL7` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `VAL8` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `VAL9` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `REGDT` datetime DEFAULT NULL,
  `MODDT` datetime DEFAULT NULL,
  UNIQUE KEY `PK_T_PUSH_USER` (`CUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- dmaru.T_PUSH_USER_GROUP definition

CREATE TABLE `T_PUSH_USER_GROUP` (
  `CUID` varchar(50) NOT NULL,
  `GROUPSEQ` int NOT NULL,
  UNIQUE KEY `QK_USER_GROUP` (`GROUPSEQ`,`CUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- dmaru.T_PUSH_USER_GROUP_INFO definition

CREATE TABLE `T_PUSH_USER_GROUP_INFO` (
  `GROUPSEQ` int NOT NULL AUTO_INCREMENT,
  `GROUPNAME` varchar(50) DEFAULT NULL,
  `ISDELETED` varchar(1) DEFAULT NULL,
  `REGDATE` datetime DEFAULT NULL,
  `MODDATE` datetime DEFAULT NULL,
  `PARENTGROUPSEQ` int DEFAULT NULL,
  `GROUPDESC` varchar(100) DEFAULT NULL,
  `REGID` varchar(20) DEFAULT NULL,
  `GROUPTYPE` char(1) DEFAULT 'N',
  PRIMARY KEY (`GROUPSEQ`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;


-- dmaru.T_PUSH_USER_INFO definition

CREATE TABLE `T_PUSH_USER_INFO` (
  `USERSEQNO` int NOT NULL AUTO_INCREMENT COMMENT '시퀀스번호',
  `PUSHKEY` varchar(40) NOT NULL COMMENT '고유키(디바이스아이디+앱아이디+PNSID) sha256',
  `PSID` varchar(255) NOT NULL COMMENT '푸쉬발송토큰',
  `PNSID` varchar(4) NOT NULL COMMENT '푸쉬서버종류',
  `DEVICEID` varchar(50) NOT NULL COMMENT '디바이스고유번호',
  `CUID` varchar(50) NOT NULL COMMENT '아이디',
  `CNAME` varchar(50) DEFAULT NULL COMMENT '이름',
  `APPID` varchar(255) NOT NULL COMMENT '팩키지명',
  `PHONENO` varchar(20) DEFAULT NULL COMMENT '전화번호',
  `OS_VER` varchar(50) DEFAULT NULL COMMENT 'OS 버전',
  `DEVICE_MD` varchar(100) DEFAULT NULL COMMENT '디바이스 모델',
  `APP_VER` varchar(50) DEFAULT NULL COMMENT '앱버전',
  `APNS_MODE` varchar(10) DEFAULT NULL COMMENT 'APNS 모드 : REAL, DEV',
  `UPNSID` varchar(20) DEFAULT NULL COMMENT '할당된 UPNS 아이디',
  `ORGUPNSID` varchar(20) DEFAULT NULL COMMENT '최초할당된 UPNS 아이디',
  `REGDATE` datetime DEFAULT NULL COMMENT '등록일',
  `MODDATE` datetime DEFAULT NULL COMMENT '수정일',
  PRIMARY KEY (`USERSEQNO`),
  UNIQUE KEY `PK_T_PUSH_USER` (`PUSHKEY`),
  KEY `INDEX_USER_INFO_PSID` (`PSID`),
  KEY `INDEX_MODDATE` (`MODDATE`),
  KEY `INDEX_USER_INFO2` (`APPID`,`CUID`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;


-- dmaru.T_PUSH_VARIABLES definition

CREATE TABLE `T_PUSH_VARIABLES` (
  `VGROUP` varchar(20) NOT NULL,
  `VNAME` varchar(40) NOT NULL,
  `VVALUE` varchar(255) DEFAULT NULL,
  UNIQUE KEY `QK_VARIABLES` (`VGROUP`,`VNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- dmaru.adm_achv_mng definition

CREATE TABLE `adm_achv_mng` (
  `achv_id` varchar(9) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '업적ID',
  `achv_nm` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '업적명',
  `sbjt` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '과제',
  `dtl_desc` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '상세설명',
  `atent_mtr` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '주의사항',
  `dffly` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '난이도',
  `repe_cycl` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '반복주기',
  `exec_mthd` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '수행방식',
  `rwd_term` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '리워드기간',
  `jly_pnt` int DEFAULT NULL COMMENT '젤리포인트',
  `rewrd_wrd_n1` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '보상낱말1',
  `rewrd_wrd_n2` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '보상낱말2',
  `bdg_img_yn` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '배지이미지여부',
  `atch_file_sno` bigint DEFAULT NULL COMMENT '첨부파일일련번호',
  `fst_regr_id` varchar(9) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`achv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='업적관리';


-- dmaru.adm_app_ver_mng definition

CREATE TABLE `adm_app_ver_mng` (
  `app_ver_sno` bigint NOT NULL AUTO_INCREMENT COMMENT '앱버전일련번호',
  `hw_os_cd` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '하드웨어운영체제코드',
  `app_ver` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '앱버전',
  `ver_desc` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '앱버전설명',
  `ver_stus_cd` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '버전상태코드',
  `sel_upd_ver` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '선택업데이트버전',
  `sel_upd_ver_desc` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '선택업데이트버전설명',
  `enfrc_upd_ver` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '강제업데이트버전',
  `enfrc_upd_ver_desc` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '강제업데이트버전설명',
  `url_addr` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'URL주소',
  `use_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '사용여부',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`app_ver_sno`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='앱버전관리';


-- dmaru.adm_atch_file definition

CREATE TABLE `adm_atch_file` (
  `atch_file_sno` bigint NOT NULL AUTO_INCREMENT COMMENT '첨부파일일련번호',
  `unq_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '고유ID',
  `atch_file_sn` int DEFAULT NULL COMMENT '첨부파일순번',
  `atch_file_div_cd` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '첨부파일구분코드',
  `atch_file_kind_cd` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '첨부파일종류코드',
  `atch_file_orgnl_nm` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '첨부파일원본명',
  `atch_file_nm` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '첨부파일명',
  `atch_file_path` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '첨부파일경로',
  `atch_file_extns` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '첨부파일확장자',
  `atch_file_size` int DEFAULT NULL COMMENT '첨부파일크기',
  `del_yn` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '삭제여부',
  `fst_regr_id` varchar(9) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`atch_file_sno`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='첨부파일';


-- dmaru.adm_bnr_mng definition

CREATE TABLE `adm_bnr_mng` (
  `bnr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '배너ID',
  `operr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '운영자ID',
  `bnr_area_cd` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '배너영역코드',
  `expsr_odr` int DEFAULT NULL COMMENT '노출순서',
  `bnr_nm` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '배너명',
  `bnr_img_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '배너이미지여부',
  `atch_file_sno` bigint DEFAULT NULL COMMENT '첨부파일일련번호',
  `lnk_url` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '링크URL',
  `bnr_ntce_bgn_dtm` datetime DEFAULT NULL COMMENT '배너게시시작일시',
  `bnr_ntce_end_dtm` datetime DEFAULT NULL COMMENT '배너게시종료일시',
  `ad_bnr_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '광고배너여부',
  `bnr_desc` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '배너설명',
  `use_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '삭제여부',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`bnr_id`),
  KEY `operr_id` (`operr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='배너관리';


-- dmaru.adm_cd_cls definition

CREATE TABLE `adm_cd_cls` (
  `cd_cls_id` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '코드분류ID',
  `cd_cls_nm` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '코드분류명',
  `cls_desc` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '분류설명',
  `use_yn` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '사용여부',
  `fst_regr_id` varchar(9) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`cd_cls_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='코드분류';


-- dmaru.adm_dspy_mng definition

CREATE TABLE `adm_dspy_mng` (
  `dspy_id` varchar(18) COLLATE utf8_bin NOT NULL COMMENT '전시ID',
  `operr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '운영자ID',
  `srv_pf_cd` varchar(4) COLLATE utf8_bin NOT NULL COMMENT '서비스플랫폼코드',
  `upp_dspy_id` varchar(18) COLLATE utf8_bin DEFAULT '' COMMENT '상위전시ID',
  `dspy_nm` varchar(40) COLLATE utf8_bin DEFAULT NULL COMMENT '전시명',
  `dspy_desc` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '전시설명',
  `dspy_lnk` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '전시링크',
  `dspy_bgn_dtm` datetime DEFAULT NULL COMMENT '전시시작일시',
  `dspy_end_dtm` datetime DEFAULT NULL COMMENT '전시종료일시',
  `use_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '사용여부',
  `auto_acuml_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '자동집계여부',
  `batch_id` varchar(9) COLLATE utf8_bin DEFAULT NULL COMMENT '배치ID',
  `grade` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '학년',
  `dspy_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '전시여부',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`dspy_id`),
  KEY `operr_id` (`operr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='전시관리';


-- dmaru.adm_event_mng definition

CREATE TABLE `adm_event_mng` (
  `event_id` varchar(9) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '이벤트ID',
  `operr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '운영자ID',
  `srv_pf_cd` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '서비스플랫폼코드',
  `srv_tgt_cd` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '서비스대상코드',
  `event_nm` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '이벤트명',
  `event_desc` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '이벤트설명',
  `event_cn` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '이벤트내용',
  `event_bnr_img_yn` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '이벤트배너이미지여부',
  `prgs_stus` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '진행상태',
  `event_bgn_dtm` datetime DEFAULT NULL COMMENT '이벤트시작일시',
  `event_end_dtm` datetime DEFAULT NULL COMMENT '이벤트종료일시',
  `event_kind` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '이벤트종류',
  `fst_regr_id` varchar(9) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  `atch_file_sno` bigint DEFAULT NULL COMMENT '첨부파일일련번호',
  PRIMARY KEY (`event_id`),
  KEY `operr_id` (`operr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='이벤트관리';


-- dmaru.adm_lgin_log_hist definition

CREATE TABLE `adm_lgin_log_hist` (
  `hist_sno` bigint NOT NULL AUTO_INCREMENT COMMENT '이력일련번호',
  `lgin_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '로그인ID',
  `user_div_cd` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '사용자구분코드',
  `lgin_type_cd` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '로그인유형코드',
  `lgin_dtm` datetime DEFAULT NULL COMMENT '로그인일시',
  `lgout_dtm` datetime DEFAULT NULL COMMENT '로그아웃일시',
  `conn_srv` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '접속서비스',
  `conn_path` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '접속경로',
  `conn_ip` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '접속IP',
  `conn_natn_cd` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '접속국가코드',
  `conn_mhrls` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '접속기기',
  `lgin_brwsr` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '로그인브라우저',
  `pwd_err_yn` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '비밀번호오류여부',
  `pwd_err_dtm` datetime DEFAULT NULL COMMENT '비밀번호오류일시',
  PRIMARY KEY (`hist_sno`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2319 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='로그인로그이력';


-- dmaru.adm_main_scr_mng definition

CREATE TABLE `adm_main_scr_mng` (
  `scr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '화면ID',
  `operr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '운영자ID',
  `srv_pf_cd` varchar(4) COLLATE utf8_bin NOT NULL COMMENT '서비스플랫폼코드',
  `hdr_en` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'Header유무',
  `notc_en` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '공지사항유무',
  `ftr_en` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'Footer유무',
  `oper_refl_req_dtm` datetime DEFAULT NULL COMMENT '운영반영요청일시',
  `use_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '사용여부',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`scr_id`),
  KEY `operr_id` (`operr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='메인화면관리';


-- dmaru.adm_operr_grp definition

CREATE TABLE `adm_operr_grp` (
  `operr_grp_id` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '운영자그룹ID',
  `grp_nm` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '그룹명',
  `grp_desc` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '그룹설명',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`operr_grp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='운영자그룹';


-- dmaru.adm_operr_mng definition

CREATE TABLE `adm_operr_mng` (
  `operr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '운영자ID',
  `operr_grp_id` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '운영자그룹ID',
  `operr_nm` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '운영자명',
  `operr_stus_cd` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '운영자상태코드',
  `sex` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '성별',
  `mobl_telno` varchar(14) COLLATE utf8_bin DEFAULT NULL COMMENT '휴대폰전화번호',
  `com_telno` varchar(14) COLLATE utf8_bin DEFAULT NULL COMMENT '회사전화번호',
  `fax_telno` varchar(14) COLLATE utf8_bin DEFAULT NULL COMMENT '팩스전화번호',
  `email` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '이메일',
  `pstn` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '직위',
  `lgin_id` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '로그인ID',
  `lgin_pwd` varchar(65) COLLATE utf8_bin DEFAULT NULL COMMENT '로그인비밀번호',
  `acct_lckd_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '계정잠금여부',
  `pwd_initl_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '비밀번호초기화여부',
  `pwd_chg_dtm` datetime DEFAULT NULL COMMENT '비밀번호변경일시',
  `last_lgin_dtm` datetime DEFAULT NULL COMMENT '마지막로그인일시',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`operr_id`),
  UNIQUE KEY `uk_lgin_id` (`lgin_id`),
  KEY `operr_grp_id` (`operr_grp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='운영자관리';


-- dmaru.adm_psnl_info_read_hist definition

CREATE TABLE `adm_psnl_info_read_hist` (
  `hist_sno` bigint NOT NULL AUTO_INCREMENT COMMENT '이력일련번호',
  `operr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '운영자ID',
  `read_dtm` datetime DEFAULT NULL COMMENT '열람일시',
  `conn_ip` varchar(15) COLLATE utf8_bin DEFAULT NULL COMMENT '접속IP',
  `srch_rslt_ncnt` int DEFAULT NULL COMMENT '검색결과게수',
  `mbr_id` varchar(9) COLLATE utf8_bin DEFAULT NULL COMMENT '회원ID',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`hist_sno`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='개인정보열람이력';


-- dmaru.adm_pwd_chg_hist definition

CREATE TABLE `adm_pwd_chg_hist` (
  `hist_sno` bigint NOT NULL AUTO_INCREMENT COMMENT '이력일련번호',
  `lgin_id` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '로그인ID',
  `user_div_cd` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '사용자구분코드',
  `pwd_chg_div_cd` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '비밀번호변경구분코드',
  `chg_dtm` datetime DEFAULT NULL COMMENT '변경일시',
  `chg_tms` int DEFAULT NULL COMMENT '변경횟수',
  `chg_cn` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '변경내용',
  PRIMARY KEY (`hist_sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='비밀번호변경이력';


-- dmaru.adm_quiz_mng definition

CREATE TABLE `adm_quiz_mng` (
  `quiz_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '퀴즈ID: QZ + 숫자7자리',
  `quiz_sn` int DEFAULT NULL COMMENT '퀴즈순번',
  `quiz_styl` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '퀴즈형식',
  `quiz_qst` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '퀴즈문제',
  `quiz_item_n1` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '퀴즈항목1',
  `quiz_item_n2` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '퀴즈항목2',
  `quiz_item_n3` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '퀴즈항목3',
  `quiz_item_n4` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '퀴즈항목4',
  `quiz_dffly` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '퀴즈난이도',
  `quiz_cnsr` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '퀴즈정답',
  `quiz_stus` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '퀴즈상태',
  `quiz_expsr_bgn` datetime DEFAULT NULL COMMENT '퀴즈노출시작',
  `quiz_expsr_end` datetime DEFAULT NULL COMMENT '퀴즈노출종료',
  `quiz_expl` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '퀴즈풀이',
  `quiz_dsmrk` int DEFAULT NULL COMMENT '퀴즈배점',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`quiz_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='퀴즈관리';


-- dmaru.adm_terms_mng definition

CREATE TABLE `adm_terms_mng` (
  `terms_id` varchar(9) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '약관ID',
  `terms_nm` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '약관명',
  `terms_type` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '약관타입',
  `terms_ver` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '약관버전',
  `ess_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '필수여부',
  `use_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '사용여부',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`terms_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='약관관리';


-- dmaru.cms_cate_mng definition

CREATE TABLE `cms_cate_mng` (
  `cate_id` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '카테고리ID',
  `upp_cate_id` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '상위카테고리ID',
  `cate_nm` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '카테고리명',
  `cls_desc` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '분류설명',
  `use_yn` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '사용여부',
  `fst_regr_id` varchar(9) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`cate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='카테고리관리';


-- dmaru.cms_cnts_ecal_hist definition

CREATE TABLE `cms_cnts_ecal_hist` (
  `hist_sno` bigint NOT NULL AUTO_INCREMENT COMMENT '이력일련번호',
  `chg_dtm` datetime NOT NULL COMMENT '변경일시',
  `chg_typ` varchar(4) COLLATE utf8_bin NOT NULL COMMENT '변경타입',
  `cnts_id` varchar(12) COLLATE utf8_bin NOT NULL COMMENT '콘텐츠ID',
  `ecal_type_cd` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '정산유형코드',
  `ecal_mthd_cd` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '정산방식코드',
  `n1_copy_dwld_cnt` int DEFAULT NULL COMMENT '1COPY다운로드수',
  `lend_term` int DEFAULT NULL COMMENT '대여기간',
  `ecal_rate` float DEFAULT NULL COMMENT '정산율',
  `dwld_excs_infom_cnt` int DEFAULT NULL COMMENT '다운로드초과알림수',
  `n1_dwld_untpc` int DEFAULT NULL COMMENT '1다운로드단가',
  `sle_cntr_bgn_dtm` datetime DEFAULT NULL COMMENT '판매계약시작일시',
  `sle_cntr_end_dtm` datetime DEFAULT NULL COMMENT '판매계약종료일시',
  `sle_cntr_term` int DEFAULT NULL COMMENT '판매계약기간',
  `suply_untpc` int DEFAULT NULL COMMENT '공급단가',
  `min_grnt` int DEFAULT NULL COMMENT '최소개런티',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`hist_sno`)
) ENGINE=InnoDB AUTO_INCREMENT=773 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='콘텐츠정산이력';


-- dmaru.cms_cnts_mng_hist definition

CREATE TABLE `cms_cnts_mng_hist` (
  `hist_sno` bigint NOT NULL AUTO_INCREMENT COMMENT '이력일련번호',
  `chg_dtm` datetime NOT NULL COMMENT '변경일시',
  `chg_typ` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '변경타입',
  `cnts_id` varchar(12) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '콘텐츠ID',
  `vend_id` varchar(9) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '업체ID',
  `cate_id` varchar(16) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '카테고리ID',
  `mkr_id` varchar(9) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '제작사ID',
  `brnd_id` varchar(9) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '브랜드ID',
  `cnts_div_cd` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '콘텐츠구분코드',
  `cnts_ttl` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '콘텐츠제목',
  `cnts_sttl` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '콘텐츠부제',
  `cnts_rep_img_typ` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '콘텐츠대표이미지타입',
  `cnts_uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '콘텐츠UUID',
  `isbn` varchar(13) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'ISBN',
  `ecn` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'ECN',
  `issn` varchar(8) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'ISSN',
  `aprv_stus_cd` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '승인상태코드',
  `sle_bgn_dtm` datetime DEFAULT NULL COMMENT '판매시작일시',
  `sle_end_dtm` datetime DEFAULT NULL COMMENT '판매종료일시',
  `imdtl_sle_yn` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '즉시판매여부',
  `end_imnt_cd` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '종료임박코드',
  `dspy_lmtt_yn` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '전시제한여부',
  `dspy_lmtt_bgn_dtm` datetime DEFAULT NULL COMMENT '전시제한시작일시',
  `dspy_lmtt_end_dtm` datetime DEFAULT NULL COMMENT '전시제한종료일시',
  `ag_grd_cd` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '나이등급코드',
  `srv_pf_cd` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '서비스플랫폼코드',
  `srv_tgt_cd` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '서비스대상코드',
  `srv_kind_cd` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '서비스종류코드',
  `rep_grade_cd` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '대표학년코드',
  `grade_cd` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '학년코드',
  `dffly` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '난이도',
  `acuml_yn` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '집계여부',
  `free_exprc_yn` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '무료체험여부',
  `mngr_memo` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '관리자메모',
  `inn_pblc_no` varchar(15) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '내부발행번호',
  `book_isbn` varchar(13) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '종이책ISBN',
  `book_pblc_dt` date DEFAULT NULL COMMENT '종이책발행일자',
  `book_nprc` int DEFAULT NULL COMMENT '종이책정가',
  `book_page_cnt` int DEFAULT NULL COMMENT '종이책페이지수',
  `cnts_cntnt` longtext CHARACTER SET utf8 COLLATE utf8_bin COMMENT '콘텐츠목차',
  `cnts_intro_stmt` longtext CHARACTER SET utf8 COLLATE utf8_bin COMMENT '콘텐츠소개글',
  `cnts_pblc_dt` date DEFAULT NULL COMMENT '콘텐츠발행일자',
  `cnts_taxn` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '콘텐츠과세',
  `cnts_nprc` int DEFAULT NULL COMMENT '콘텐츠정가',
  `file_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '파일유형',
  `file_size` int DEFAULT NULL COMMENT '파일크기',
  `rntm` time DEFAULT NULL COMMENT '재생시간',
  `rdg_drc` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '읽기방향',
  `prvw` float DEFAULT NULL COMMENT '미리보기',
  `srv_ofr_mthd` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '서비스제공방식',
  `seqn_info_en` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '회차정보유무',
  `mov_div_cd` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '동영상구분코드',
  `mov_ttl` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '동영상제목',
  `mov_url` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '동영상URL',
  `awk_en` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '수상작유무',
  `hur_seltn_en` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '한우리선정유무',
  `msnb_en` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '미션북유무',
  `bqz_en` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '북퀴즈유무',
  `bqz_opub_scope` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '북퀴즈공개범위',
  `mnpl_en` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '독점유무',
  `min_cprdg_tm` time DEFAULT NULL COMMENT '최소완독시간',
  `srch_wrd_nm` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '검색단어명',
  `fst_regr_id` varchar(9) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  `aprv_dtm` datetime DEFAULT NULL COMMENT '승인일시',
  PRIMARY KEY (`hist_sno`)
) ENGINE=InnoDB AUTO_INCREMENT=25990 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='콘텐츠관리이력';


-- dmaru.cms_cnts_seqn_hist definition

CREATE TABLE `cms_cnts_seqn_hist` (
  `hist_sno` bigint NOT NULL AUTO_INCREMENT COMMENT '이력일련번호',
  `chg_dtm` datetime NOT NULL COMMENT '변경일시',
  `chg_typ` varchar(4) COLLATE utf8_bin NOT NULL COMMENT '변경타입',
  `cnts_id` varchar(12) COLLATE utf8_bin NOT NULL COMMENT '콘텐츠ID',
  `seqn_no` int NOT NULL COMMENT '회차번호',
  `seqn_cnts_uuid` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '회차콘탠츠UUID',
  `seqn_open_dtm` datetime DEFAULT NULL COMMENT '회차오픈일시',
  `ttl` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '제목',
  `intro_stmt` varchar(1000) COLLATE utf8_bin DEFAULT NULL COMMENT '소개글',
  `rntm` time DEFAULT NULL COMMENT '재생시간',
  `prvw` float DEFAULT NULL COMMENT '미리보기',
  `smple_en` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '샘플유무',
  `file_size` int DEFAULT NULL COMMENT '파일크기',
  `lnm_rgt` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '성우',
  `lctrr` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '강사',
  `writr` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '작가',
  `cmptn_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '완결여부',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`hist_sno`)
) ENGINE=InnoDB AUTO_INCREMENT=1905 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='콘텐츠회차이력';


-- dmaru.cms_kwrd_mng definition

CREATE TABLE `cms_kwrd_mng` (
  `kwrd_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '키워드ID',
  `kwrd_nm` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '키워드명',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`kwrd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='키워드관리';


-- dmaru.cms_mkr_mng definition

CREATE TABLE `cms_mkr_mng` (
  `mkr_id` varchar(9) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '제작사ID',
  `mkr_nm` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '제작사명',
  `rep_nm` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '대표명',
  `brno` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '사업자등록번호',
  `mkr_stus_cd` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '제작사상태코드',
  `mngr_rmk` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '관리자비고',
  `ebook_prvw` int DEFAULT NULL COMMENT '전자책미리보기',
  `abook_prvw` int DEFAULT NULL COMMENT '오디오북미리보기',
  `sbmtr_mov_prvw` int DEFAULT NULL COMMENT '교과동영상미리보기',
  `lrn_wbtn_prvw` int DEFAULT NULL COMMENT '학습웹툰미리보기',
  `fst_regr_id` varchar(9) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`mkr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='제작사관리';


-- dmaru.com_tmplt_grp definition

CREATE TABLE `com_tmplt_grp` (
  `tmplt_grp_sno` bigint NOT NULL AUTO_INCREMENT COMMENT '템플릿그룹일련번호',
  `tmplt_grp_nm` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '템플릿그룹명',
  `reg_dtm` datetime DEFAULT NULL COMMENT '등록일시',
  `use_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '사용여부',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`tmplt_grp_sno`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='템플릿그룹';


-- dmaru.cs_1on1_inqry definition

CREATE TABLE `cs_1on1_inqry` (
  `inqry_sno` bigint NOT NULL AUTO_INCREMENT COMMENT '문의일련번호',
  `inqry_lgin_id` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '문의로그인ID',
  `inqry_div` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '문의구분',
  `ttl` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '제목',
  `cn` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT '내용',
  `wrt_dtm` datetime DEFAULT NULL COMMENT '작성일시',
  `wrtr_email` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '작성자이메일',
  `atch_file_en` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '첨부파일유무',
  `atch_file_sno` bigint DEFAULT NULL COMMENT '첨부파일일련번호',
  `ans_stus` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '답변상태',
  `ans_lgin_id` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '답변로그인ID',
  `ans_dtm` datetime DEFAULT NULL COMMENT '답변일시',
  `ans_cn` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT '답변내용',
  `del_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '삭제여부',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`inqry_sno`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='1:1문의';


-- dmaru.cs_cnsl_rec definition

CREATE TABLE `cs_cnsl_rec` (
  `cnsl_rec_sno` bigint NOT NULL AUTO_INCREMENT COMMENT '상담기록일련번호',
  `lgin_id` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '로그인ID',
  `inqry_div` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '문의구분',
  `ttl` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '제목',
  `cn` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT '내용',
  `wrt_dtm` datetime DEFAULT NULL COMMENT '작성일시',
  `wrtr_email` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '작성자이메일',
  `cnslr` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '상담자',
  `cnsl_dtm` datetime DEFAULT NULL COMMENT '상담일시',
  `cnsl_stus` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '상담상태',
  `del_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '삭제여부',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`cnsl_rec_sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='상담기록';


-- dmaru.cs_task_noti definition

CREATE TABLE `cs_task_noti` (
  `task_noti_sno` bigint NOT NULL AUTO_INCREMENT COMMENT '업무공지일련번호',
  `lgin_id` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '로그인ID',
  `ttl` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '제목',
  `cn` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT '내용',
  `reg_dtm` datetime DEFAULT NULL COMMENT '등록일시',
  `del_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '삭제여부',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`task_noti_sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='업무공지';


-- dmaru.mem_alli_mbr definition

CREATE TABLE `mem_alli_mbr` (
  `alli_mbr_sno` bigint NOT NULL AUTO_INCREMENT COMMENT '제휴회원일련번호',
  `alli_mbr_id` varchar(9) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '제휴회원ID',
  `mbr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '회원ID',
  `afco_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '제휴사ID',
  `alli_mbr_div_cd` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '제휴회원구분코드',
  `alli_mbr_id_nf_id` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '제휴회원식별ID',
  `alli_mbr_add_info` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '제휴회원추가정보',
  `alli_mbr_certi_dtm` datetime DEFAULT NULL COMMENT '제휴회원인증일시',
  `alli_mbr_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '제휴회원여부',
  `alli_mbr_secsn_dtm` datetime DEFAULT NULL COMMENT '제휴회원탈퇴일시',
  `itlok_fail_dtm` datetime DEFAULT NULL COMMENT '연동실패일시',
  `itlok_fail_tms` int DEFAULT NULL COMMENT '연동실패횟수',
  `add_expsr_nm` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '추가노출명',
  `rmk` varchar(4000) COLLATE utf8_bin DEFAULT NULL COMMENT '비고',
  `last_yn` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '최종여부',
  `certi_bgn_dd` varchar(8) COLLATE utf8_bin DEFAULT NULL COMMENT '인증시작일',
  `certi_end_dd` varchar(8) COLLATE utf8_bin DEFAULT NULL COMMENT '인증종료일',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`alli_mbr_sno`,`alli_mbr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='제휴회원';


-- dmaru.mem_fam_mbr definition

CREATE TABLE `mem_fam_mbr` (
  `fam_mbr_sno` bigint NOT NULL AUTO_INCREMENT COMMENT '가족회원일련번호',
  `fam_mbr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '가족회원ID',
  `mbr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '회원ID',
  `fam_mbr_stus` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '가족회원상태',
  `mngr_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '관리자여부',
  `fam_bgn_dtm` datetime DEFAULT NULL COMMENT '가족시작일시',
  `fam_end_dtm` datetime DEFAULT NULL COMMENT '가족종료일시',
  `cancl_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '해지여부',
  `last_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '최종여부',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`fam_mbr_sno`,`fam_mbr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='가족회원';


-- dmaru.mem_infom_agre_hist definition

CREATE TABLE `mem_infom_agre_hist` (
  `hist_sno` bigint NOT NULL AUTO_INCREMENT COMMENT '이력일련번호',
  `mbr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '회원ID',
  `srv_infom_agre_yn` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '서비스알림동의여부',
  `srv_infom_agre_dtm` datetime DEFAULT NULL COMMENT '서비스알림동의일시',
  `srv_push_rcv_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '서비스PUSH수신여부',
  `srv_sms_rcv_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '서비스SMS수신여부',
  `srv_infom_tlk_rcv_yn` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '서비스알림톡수신여부',
  `srv_email_rcv_yn` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '서비스EMAIL수신여부',
  `ad_infom_agre_yn` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '광고알림동의여부',
  `ad_infom_agre_dtm` datetime DEFAULT NULL COMMENT '광고알림동의일시',
  `ad_push_rcv_yn` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '광고PUSH수신여부',
  `ad_sms_rcv_yn` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '광고SMS수신여부',
  `ad_infom_tlk_rcv_yn` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '광고알림톡수신여부',
  `ad_email_rcv_yn` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '광고EMAIL수신여부',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`hist_sno`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='알림동의이력';


-- dmaru.mem_legal_agntr_certi definition

CREATE TABLE `mem_legal_agntr_certi` (
  `legal_agntr_sno` bigint NOT NULL AUTO_INCREMENT COMMENT '법정대리인일련번호',
  `certi_scss_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '인증성공여부',
  `certi_dtm` datetime DEFAULT NULL COMMENT '인증일시',
  `move_comm_typ` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '이동통신타입',
  `sex` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '성별',
  `certi_ci_val` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '인증CI값',
  `certi_di_val` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '인증DI값',
  `legal_agntr_nm` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '법정대리인명',
  `legal_agntr_mobl_telno` varchar(11) COLLATE utf8_bin DEFAULT NULL COMMENT '법정대리인휴대폰전화번호',
  `frnr_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '외국인여부',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`legal_agntr_sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='법정대리인인증';


-- dmaru.mem_mbr_basic definition

CREATE TABLE `mem_mbr_basic` (
  `mbr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '회원ID',
  `mbr_stus_cd` varchar(4) COLLATE utf8_bin NOT NULL COMMENT '회원상태코드',
  `mbr_nm` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '회원명',
  `brdt` date DEFAULT NULL COMMENT '생년월일',
  `sex` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '성별',
  `mobl_telno` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '휴대폰전화번호',
  `mbr_email` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '회원이메일',
  `lgin_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '로그인ID',
  `lgin_pwd` varchar(65) COLLATE utf8_bin DEFAULT NULL COMMENT '로그인비밀번호',
  `mobl_pors_certi_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '휴대폰점유인증여부',
  `slf_certi_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '본인인증여부',
  `slf_certi_dtm` datetime DEFAULT NULL COMMENT '본인인증일시',
  `cid` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'CID',
  `adlt_certi_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '성인인증여부',
  `adlt_certi_dtm` datetime DEFAULT NULL COMMENT '성인인증일시',
  `chld_mbr_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '어린이회원여부',
  `fam_mbr_yn` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '가족회원여부',
  `fam_mbr_id` varchar(9) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '가족회원ID',
  `alli_mbr_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '제휴회원여부',
  `prtcr_nm` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '보호자명',
  `prtcr_mobl_telno` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '보호자휴대폰전화번호',
  `legal_agntr_sno` bigint DEFAULT NULL COMMENT '법정대리인일련번호',
  `easy_subs_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '간편가입여부',
  `acct_lckd_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '계정잠금여부',
  `pwd_initl_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '비밀번호초기화여부',
  `pwd_chg_dtm` datetime DEFAULT NULL COMMENT '비밀번호변경일시',
  `last_lgin_dtm` datetime DEFAULT NULL COMMENT '마지막로그인일시',
  `auto_lgin_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '자동로그인여부',
  `auto_lgin_dtm` datetime DEFAULT NULL COMMENT '자동로그인일시',
  `subs_path_cd` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '가입경로코드',
  `subs_path_url` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '가입경로URL',
  `subs_dtm` datetime DEFAULT NULL COMMENT '가입일시',
  `cttpc_chg_yn` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '연락처변경여부',
  `prtcr_cttpc_chg_yn` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '보호자연락처변경여부',
  `email_chg_yn` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '이메일변경여부',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`mbr_id`),
  UNIQUE KEY `uk_lgin_id` (`lgin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='회원기본';


-- dmaru.mem_mbr_basic_hist definition

CREATE TABLE `mem_mbr_basic_hist` (
  `hist_sno` bigint NOT NULL AUTO_INCREMENT COMMENT '이력일련번호',
  `chg_dtm` datetime NOT NULL COMMENT '변경일시',
  `chg_typ` varchar(4) COLLATE utf8_bin NOT NULL COMMENT '변경타입',
  `mbr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '회원ID',
  `mbr_stus_cd` varchar(4) COLLATE utf8_bin NOT NULL COMMENT '회원상태코드',
  `mbr_nm` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '회원명',
  `brdt` date DEFAULT NULL COMMENT '생년월일',
  `sex` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '성별',
  `mobl_telno` varchar(11) COLLATE utf8_bin DEFAULT NULL COMMENT '휴대폰전화번호',
  `mbr_email` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '회원이메일',
  `lgin_id` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '로그인ID',
  `lgin_pwd` varchar(65) COLLATE utf8_bin DEFAULT NULL COMMENT '로그인비밀번호',
  `mobl_pors_certi_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '휴대폰점유인증여부',
  `slf_certi_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '본인인증여부',
  `slf_certi_dtm` datetime DEFAULT NULL COMMENT '본인인증일시',
  `cid` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'CID',
  `adlt_certi_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '성인인증여부',
  `adlt_certi_dtm` datetime DEFAULT NULL COMMENT '성인인증일시',
  `chld_mbr_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '어린이회원여부',
  `fam_mbr_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '가족회원여부',
  `fam_mbr_id` varchar(9) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '가족회원ID',
  `alli_mbr_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '제휴회원여부',
  `prtcr_nm` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '보호자명',
  `prtcr_mobl_telno` varchar(11) COLLATE utf8_bin DEFAULT NULL COMMENT '보호자휴대폰전화번호',
  `legal_agntr_sno` bigint DEFAULT NULL COMMENT '법정대리인일련번호',
  `easy_subs_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '간편가입여부',
  `acct_lckd_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '계정잠금여부',
  `pwd_initl_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '비밀번호초기화여부',
  `pwd_chg_dtm` datetime DEFAULT NULL COMMENT '비밀번호변경일시',
  `last_lgin_dtm` datetime DEFAULT NULL COMMENT '마지막로그인일시',
  `auto_lgin_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '자동로그인여부',
  `auto_lgin_dtm` datetime DEFAULT NULL COMMENT '자동로그인일시',
  `subs_path_cd` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '가입경로코드',
  `subs_path_url` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '가입경로URL',
  `subs_dtm` datetime DEFAULT NULL COMMENT '가입일시',
  `cttpc_chg_yn` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '연락처변경여부',
  `prtcr_cttpc_chg_yn` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '보호자연락처변경여부',
  `email_chg_yn` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '이메일변경여부',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`hist_sno`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='회원기본이력';


-- dmaru.mem_mbr_dtl_hist definition

CREATE TABLE `mem_mbr_dtl_hist` (
  `hist_sno` bigint NOT NULL AUTO_INCREMENT COMMENT '이력일련번호',
  `chg_dtm` datetime NOT NULL COMMENT '변경일시',
  `chg_typ` varchar(4) COLLATE utf8_bin NOT NULL COMMENT '변경타입',
  `mbr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '회원ID',
  `n1_month_free_subp_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '1개월무료구독여부',
  `subp_stus_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '구독상태여부',
  `vchr_use_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '이용권사용여부',
  `prrl_opub_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '프로필공개여부',
  `ncnm` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '닉네임',
  `prrl_img_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '프로필이미지여부',
  `prrl_intro_stmt` varchar(1000) COLLATE utf8_bin DEFAULT NULL COMMENT '프로필소개글',
  `cncnt_mng_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '집중관리여부',
  `cncnt_mng_rsn` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '집중관리사유',
  `cncnt_mng_reg_dtm` datetime DEFAULT NULL COMMENT '집중관리등록일시',
  `lgin_lmtt_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '로그인제한여부',
  `secsn_lmtt_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '탈퇴제한여부',
  `info_upd_lmtt_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '정보수정제한여부',
  `setl_lmtt_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '결제제한여부',
  `mbr_grade_cd` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '회원학년코드',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`hist_sno`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='회원상세이력';


-- dmaru.mem_mbr_lgin_hist definition

CREATE TABLE `mem_mbr_lgin_hist` (
  `hist_sno` bigint NOT NULL AUTO_INCREMENT COMMENT '이력일련번호',
  `mbr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '회원ID',
  `terml_id` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '단말기ID',
  `lgin_type_cd` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '로그인유형코드',
  `scl_type_cd` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '소셜유형코드',
  `lgin_dtm` datetime DEFAULT NULL COMMENT '로그인일시',
  `conn_div_cd` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '접속구분코드',
  `conn_ip` varchar(15) COLLATE utf8_bin DEFAULT NULL COMMENT '접속IP',
  `conn_natn_cd` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '접속국가코드',
  `lgin_brwsr` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '로그인브라우저',
  `pwd_err_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '비밀번호오류여부',
  `pwd_err_dtm` datetime DEFAULT NULL COMMENT '비밀번호오류일시',
  PRIMARY KEY (`hist_sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='회원로그인이력';


-- dmaru.mem_mbr_send_hist definition

CREATE TABLE `mem_mbr_send_hist` (
  `hist_sno` bigint NOT NULL AUTO_INCREMENT COMMENT '이력일련번호',
  `mbr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '회원ID',
  `send_itlok_idnf_no` varchar(12) COLLATE utf8_bin NOT NULL COMMENT '발송연동식별번호',
  `trsm_div_cd` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '전송구분코드',
  `msg_cn` longtext COLLATE utf8_bin COMMENT '메세지내용',
  `send_dtm` datetime DEFAULT NULL COMMENT '발송일시',
  `send_sno` bigint DEFAULT NULL COMMENT '발송일련번호',
  `rmk` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '비고',
  `send_stus_cd` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '발송상태코드(1065)',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`hist_sno`),
  KEY `mem_mbr_send_hist_IDX_02` (`mbr_id`,`send_itlok_idnf_no`) USING BTREE,
  KEY `mem_mbr_send_hist_IDX_01` (`mbr_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=306 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='회원발송이력';


-- dmaru.mem_mobl_pors_certi definition

CREATE TABLE `mem_mobl_pors_certi` (
  `mobl_pors_sno` bigint NOT NULL AUTO_INCREMENT COMMENT '휴대폰점유일련번호',
  `uuid` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'UUID',
  `mobl_telno` varchar(11) COLLATE utf8_bin DEFAULT NULL COMMENT '휴대폰전화번호',
  `certi_no` varchar(6) COLLATE utf8_bin DEFAULT NULL COMMENT '인증번호',
  `certi_scss_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '인증성공여부',
  `certi_sido_iflow_tm` datetime DEFAULT NULL COMMENT '인증시도유입시간',
  `certi_sido_cmpl_tm` datetime DEFAULT NULL COMMENT '인증시도완료시간',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`mobl_pors_sno`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='휴대폰점유인증';


-- dmaru.scm_afco_mng definition

CREATE TABLE `scm_afco_mng` (
  `afco_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '제휴사ID',
  `afco_stus_cd` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '제휴사상태코드',
  `afco_nm` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '제휴사명',
  `rep_nm` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '대표명',
  `certi_info_n1` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '인증정보1',
  `certi_info_n2` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '인증정보2',
  `brno` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '사업자등록번호',
  `use_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '사용여부',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`afco_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='제휴사관리';


-- dmaru.scm_atach_cntr_hist definition

CREATE TABLE `scm_atach_cntr_hist` (
  `hist_sno` bigint NOT NULL AUTO_INCREMENT COMMENT '이력일련번호',
  `chg_dtm` datetime NOT NULL COMMENT '변경일시',
  `chg_typ` varchar(4) COLLATE utf8_bin NOT NULL COMMENT '변경타입',
  `atach_cntr_sno` bigint NOT NULL COMMENT '부속계약일련번호',
  `cntr_id` varchar(12) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '계약ID',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`hist_sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='부속계약이력';


-- dmaru.scm_cntr_mng_hist definition

CREATE TABLE `scm_cntr_mng_hist` (
  `hist_sno` bigint NOT NULL AUTO_INCREMENT COMMENT '이력일련번호',
  `chg_dtm` datetime NOT NULL COMMENT '변경일시',
  `chg_typ` varchar(4) COLLATE utf8_bin NOT NULL COMMENT '변경타입',
  `cntr_id` varchar(12) COLLATE utf8_bin NOT NULL COMMENT '계약ID',
  `vend_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '업체ID',
  `cnts_div_cd` varchar(4) COLLATE utf8_bin NOT NULL COMMENT '콘텐츠구분코드',
  `cntr_stus_cd` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '계약상태코드',
  `ecal_type_cd` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '정산유형코드',
  `ecal_mthd_cd` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '정산방식코드',
  `srv_ofr_mthd` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '서비스제공방식',
  `n1_copy_dwld_cnt` int DEFAULT NULL COMMENT '1COPY다운로드수',
  `lend_term` int DEFAULT NULL COMMENT '대여기간',
  `ecal_rate` float DEFAULT NULL COMMENT '정산율',
  `dwld_excs_infom_cnt` int DEFAULT NULL COMMENT '다운로드초과알림수',
  `n1_dwld_untpc` int DEFAULT NULL COMMENT '1다운로드단가',
  `sle_cntr_bgn_dtm` datetime DEFAULT NULL COMMENT '판매계약시작일시',
  `sle_cntr_end_dtm` datetime DEFAULT NULL COMMENT '판매계약종료일시',
  `prvw` int DEFAULT NULL COMMENT '미리보기',
  `sle_cntr_term` int DEFAULT NULL COMMENT '판매계약기간',
  `suply_untpc` int DEFAULT NULL COMMENT '공급단가',
  `min_grnt` int DEFAULT NULL COMMENT '최소개런티',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`hist_sno`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='계약관리이력';


-- dmaru.scm_vend_adtn_hist definition

CREATE TABLE `scm_vend_adtn_hist` (
  `hist_sno` bigint NOT NULL AUTO_INCREMENT COMMENT '이력일련번호',
  `chg_dtm` datetime NOT NULL COMMENT '변경일시',
  `chg_typ` varchar(4) COLLATE utf8_bin NOT NULL COMMENT '변경타입',
  `vend_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '업체ID',
  `cnts_chrgr_nm` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '콘텐츠담당자명',
  `cnts_chrgr_email` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '콘텐츠담당자이메일',
  `cnts_chrgr_cttpc` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '콘텐츠담당자연락처',
  `cnts_chrgr_mpno` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '콘텐츠담당자휴대전화번호',
  `ecal_chrgr_nm` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '정산담당자명',
  `ecal_chrgr_email` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '정산담당자이메일',
  `ecal_chrgr_cttpc` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '정산담당자연락처',
  `ecal_chrgr_mpno` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '정산담당자휴대전화번호',
  `bank_cd` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '은행코드',
  `acno` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '계좌번호',
  `dposr` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '예금주',
  `zpcd` varchar(6) COLLATE utf8_bin DEFAULT NULL COMMENT '우편번호',
  `jino_addr` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '지번주소',
  `jino_dtl_addr` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '지번상세주소',
  `road_nm_addr` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '도로명주소',
  `road_nm_dtl_addr` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '도로명상세주소',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`hist_sno`)
) ENGINE=InnoDB AUTO_INCREMENT=383 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='업체부가이력';


-- dmaru.scm_vend_basic definition

CREATE TABLE `scm_vend_basic` (
  `vend_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '업체ID',
  `vend_div_cd` varchar(4) COLLATE utf8_bin NOT NULL COMMENT '업체구분코드',
  `brno` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '사업자등록번호',
  `vend_nm` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '업체명',
  `vend_stus_cd` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '업체상태코드',
  `main_vend_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '메인업체여부',
  `repr_nm` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '대표자명',
  `cust_sport_email` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '고객지원이메일',
  `lgin_id` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '로그인ID',
  `lgin_pwd` varchar(65) COLLATE utf8_bin DEFAULT NULL COMMENT '로그인비밀번호',
  `acct_lckd_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '계정잠금여부',
  `pwd_initl_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '비밀번호초기화여부',
  `pwd_chg_dtm` datetime DEFAULT NULL COMMENT '비밀번호변경일시',
  `last_lgin_dtm` datetime DEFAULT NULL COMMENT '마지막로그인일시',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`vend_id`),
  UNIQUE KEY `uk_lgin_id` (`lgin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='업체기본';


-- dmaru.scm_vend_basic_hist definition

CREATE TABLE `scm_vend_basic_hist` (
  `hist_sno` bigint NOT NULL AUTO_INCREMENT COMMENT '이력일련번호',
  `chg_dtm` datetime NOT NULL COMMENT '변경일시',
  `chg_typ` varchar(4) COLLATE utf8_bin NOT NULL COMMENT '변경타입',
  `vend_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '업체ID',
  `vend_div_cd` varchar(4) COLLATE utf8_bin NOT NULL COMMENT '업체구분코드',
  `brno` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '사업자등록번호',
  `vend_nm` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '업체명',
  `vend_stus_cd` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '업체상태코드',
  `main_vend_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '메인업체여부',
  `repr_nm` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '대표자명',
  `cust_sport_email` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '고객지원이메일',
  `lgin_id` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '로그인ID',
  `lgin_pwd` varchar(65) COLLATE utf8_bin DEFAULT NULL COMMENT '로그인비밀번호',
  `acct_lckd_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '계정잠금여부',
  `pwd_initl_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '비밀번호초기화여부',
  `pwd_chg_dtm` datetime DEFAULT NULL COMMENT '비밀번호변경일시',
  `last_lgin_dtm` datetime DEFAULT NULL COMMENT '마지막로그인일시',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`hist_sno`)
) ENGINE=InnoDB AUTO_INCREMENT=472 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='업체기본이력';


-- dmaru.scm_vend_notc definition

CREATE TABLE `scm_vend_notc` (
  `notc_sno` bigint NOT NULL AUTO_INCREMENT COMMENT '공지사항일련번호',
  `lgin_id` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '로그인ID',
  `ttl` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '제목',
  `cn` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT '내용',
  `reg_dtm` datetime DEFAULT NULL COMMENT '등록일시',
  `del_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '삭제여부',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`notc_sno`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='업체공지사항';


-- dmaru.seq_biz_msg definition

CREATE TABLE `seq_biz_msg` (
  `seq` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'biz_msg seq 컬럼',
  PRIMARY KEY (`seq`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='biz_msg seq 테이블';


-- dmaru.set_rtpn_mng definition

CREATE TABLE `set_rtpn_mng` (
  `rtpn_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '요금제ID',
  `rtpn_nm` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '요금제명',
  `adlt_pnum` int DEFAULT NULL COMMENT '성인인원수',
  `chld_pnum` int DEFAULT NULL COMMENT '어린이인원수',
  `rtpn_stus` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '요금제상태',
  `rtpn_expsr` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '요금제노출',
  `afco_id` varchar(9) COLLATE utf8_bin DEFAULT NULL COMMENT '제휴사ID',
  `rtpn_amt` int DEFAULT NULL COMMENT '요금제금액',
  `nothg_lmtt_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '무제한여부',
  `rtpn_bgn_dtm` datetime DEFAULT NULL COMMENT '요금제시작일시',
  `rtpn_end_dtm` datetime DEFAULT NULL COMMENT '요금제종료일시',
  `rtpn_desc` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '요금제설명',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`rtpn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='요금제관리';


-- dmaru.set_vchr_mng definition

CREATE TABLE `set_vchr_mng` (
  `vchr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '이용권ID',
  `vchr_nm` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '이용권명',
  `vchr_type` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '이용권유형',
  `vchr_stus` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '이용권상태',
  `vchr_bgn_dtm` datetime DEFAULT NULL COMMENT '이용권시작일시',
  `vchr_end_dtm` datetime DEFAULT NULL COMMENT '이용권종료일시',
  `vchr_desc` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '이용권설명',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`vchr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='이용권관리';


-- dmaru.stt_cnts_real_cnt definition

CREATE TABLE `stt_cnts_real_cnt` (
  `cnts_id` varchar(12) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '콘텐츠ID',
  `seqn_no` int NOT NULL COMMENT '회차번호',
  `acmlt_vw_cnt` bigint DEFAULT '0' COMMENT '누적뷰카운트',
  `acmlt_dwld_cnt` bigint DEFAULT '0' COMMENT '누적다운로드카운트',
  `acmlt_vwr_exe_cnt` bigint DEFAULT '0' COMMENT '누적뷰어실행카운트',
  `acmlt_wsh_cnt` bigint DEFAULT '0' COMMENT '누적찜카운트',
  `acmlt_revw_cnt` bigint DEFAULT '0' COMMENT '누적리뷰카운트',
  `now_dwld_cnt` int DEFAULT '0' COMMENT '현재다운로드카운트',
  `now_vwr_exe_cnt` int DEFAULT '0' COMMENT '현재뷰어실행카운트',
  `now_wsh_cnt` int DEFAULT '0' COMMENT '현재찜카운트',
  `now_revw_cnt` int DEFAULT '0' COMMENT '현재리뷰카운트',
  `strt_ascr` float DEFAULT '0' COMMENT '별점평점',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  PRIMARY KEY (`cnts_id`,`seqn_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='콘텐츠실제카운트';


-- dmaru.svc_cnts_usg_detl definition

CREATE TABLE `svc_cnts_usg_detl` (
  `cnts_id` varchar(12) COLLATE utf8_bin NOT NULL COMMENT '콘텐츠ID',
  `mbr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '회원ID',
  `rqst_dtm` datetime DEFAULT NULL COMMENT '신청일시',
  `chg_dtm` datetime DEFAULT NULL COMMENT '변경일시',
  `del_dtm` datetime DEFAULT NULL COMMENT '삭제일시',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`cnts_id`,`mbr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='콘텐츠이용내역';


-- dmaru.svc_revw definition

CREATE TABLE `svc_revw` (
  `revw_sno` bigint NOT NULL AUTO_INCREMENT COMMENT '리뷰일련번호',
  `mbr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '회원ID',
  `cnts_id` varchar(12) COLLATE utf8_bin NOT NULL COMMENT '콘텐츠ID',
  `seqn_no` int NOT NULL COMMENT '회차번호',
  `strt` float DEFAULT NULL COMMENT '별점',
  `revw_cn` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT '리뷰내용',
  `revw_hdng_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '리뷰숨김여부',
  `revw_hdng_rmk` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT '리뷰숨김비고',
  `revw_hdng_dtm` datetime DEFAULT NULL COMMENT '리뷰숨김일시',
  `revw_hdng_procr` varchar(9) COLLATE utf8_bin DEFAULT NULL COMMENT '리뷰숨김처리자',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`revw_sno`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='리뷰';


-- dmaru.TB_MOB_SVC definition

CREATE TABLE `TB_MOB_SVC` (
  `SVC_ID` int NOT NULL COMMENT '서비스ID',
  `SVC_DTL` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '서비스설명',
  `USE_YN` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '사용여부',
  `REG_DTTM` timestamp NULL DEFAULT NULL COMMENT '등록일자',
  PRIMARY KEY (`SVC_ID`),
  CONSTRAINT `TB_MOB_SVC_ibfk_1` FOREIGN KEY (`SVC_ID`) REFERENCES `TB_SVC` (`SVC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='모바일서비스';


-- dmaru.TB_STO_SVC definition

CREATE TABLE `TB_STO_SVC` (
  `SVC_ID` int NOT NULL COMMENT '서비스ID',
  `USE_YN` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '사용여부',
  `REG_ID` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '등록자아이디',
  `REG_DTTM` timestamp NULL DEFAULT NULL COMMENT '등록일자',
  `MOD_ID` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '수정자',
  `MOD_DTTM` timestamp NULL DEFAULT NULL COMMENT '수정일자',
  PRIMARY KEY (`SVC_ID`),
  CONSTRAINT `TB_STO_SVC_ibfk_1` FOREIGN KEY (`SVC_ID`) REFERENCES `TB_SVC` (`SVC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='앱스토어서비스';


-- dmaru.TB_SVC_AUTH definition

CREATE TABLE `TB_SVC_AUTH` (
  `SVC_ID` int NOT NULL COMMENT '서비스ID',
  `AUTH_GRP_ID` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '권한 그룹ID',
  KEY `SVC_ID` (`SVC_ID`),
  KEY `AUTH_GRP_ID` (`AUTH_GRP_ID`),
  CONSTRAINT `TB_SVC_AUTH_ibfk_1` FOREIGN KEY (`SVC_ID`) REFERENCES `TB_SVC` (`SVC_ID`),
  CONSTRAINT `TB_SVC_AUTH_ibfk_2` FOREIGN KEY (`AUTH_GRP_ID`) REFERENCES `TB_SYS_AUTH_GRP` (`AUTH_GRP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- dmaru.TB_SYS_CD_INFO definition

CREATE TABLE `TB_SYS_CD_INFO` (
  `CD_GRP_ID` varchar(5) COLLATE utf8_bin NOT NULL COMMENT '변수그룹ID',
  `CD_ID` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '변수ID',
  `CD_NM` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '변수명',
  `USE_YN` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '사용여부',
  `LANG_CD` char(2) COLLATE utf8_bin DEFAULT NULL COMMENT '언어코드',
  `SORT_NO` int DEFAULT NULL COMMENT '정렬순서',
  `REG_ID` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '등록자ID',
  `REG_DTTM` timestamp NULL DEFAULT NULL COMMENT '등록일',
  `MOD_ID` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '수정자ID',
  `MOD_DTTM` timestamp NULL DEFAULT NULL COMMENT '수정일',
  `CD_DESC` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '변수설명',
  KEY `CD_GRP_ID` (`CD_GRP_ID`),
  CONSTRAINT `TB_SYS_CD_INFO_ibfk_1` FOREIGN KEY (`CD_GRP_ID`) REFERENCES `TB_SYS_CD_GRP` (`CD_GRP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- dmaru.TB_SYS_FAVRT definition

CREATE TABLE `TB_SYS_FAVRT` (
  `USER_ID` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '관리자ID',
  `MENU_ID` varchar(10) COLLATE utf8_bin NOT NULL COMMENT '메뉴ID',
  PRIMARY KEY (`USER_ID`),
  KEY `MENU_ID` (`MENU_ID`),
  CONSTRAINT `TB_SYS_FAVRT_ibfk_1` FOREIGN KEY (`USER_ID`) REFERENCES `TB_SYS_USER` (`USER_ID`),
  CONSTRAINT `TB_SYS_FAVRT_ibfk_2` FOREIGN KEY (`MENU_ID`) REFERENCES `TB_SYS_MENU` (`MENU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='즐겨찾기';


-- dmaru.TB_SYS_MENU_AUTH definition

CREATE TABLE `TB_SYS_MENU_AUTH` (
  `MENU_ID` varchar(10) COLLATE utf8_bin NOT NULL COMMENT '메뉴ID',
  `AUTH_GRP_ID` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '메뉴그룹ID',
  `SELECT_YN` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '조회 사용여부',
  `INSERT_YN` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '입력 사용여부',
  `UPDATE_YN` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '수정 사용여부',
  `DELETE_YN` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '삭제 사용여부',
  `REG_ID` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '등록자ID',
  `REG_DTTM` timestamp NULL DEFAULT NULL COMMENT '등록일',
  `MOD_ID` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '수정자ID',
  `MOD_DTTM` timestamp NULL DEFAULT NULL COMMENT '수정일',
  `EXCEL_YN` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '엑셀가능여부',
  KEY `MENU_ID` (`MENU_ID`),
  KEY `AUTH_GRP_ID` (`AUTH_GRP_ID`),
  CONSTRAINT `TB_SYS_MENU_AUTH_ibfk_1` FOREIGN KEY (`MENU_ID`) REFERENCES `TB_SYS_MENU` (`MENU_ID`),
  CONSTRAINT `TB_SYS_MENU_AUTH_ibfk_2` FOREIGN KEY (`AUTH_GRP_ID`) REFERENCES `TB_SYS_AUTH_GRP` (`AUTH_GRP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- dmaru.TB_SYS_NOTC_AUTH definition

CREATE TABLE `TB_SYS_NOTC_AUTH` (
  `NOTC_IDX` varchar(10) COLLATE utf8_bin NOT NULL COMMENT '공지사항인덱스',
  `AUTH_GRP_ID` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '권한 그룹 ID',
  KEY `NOTC_IDX` (`NOTC_IDX`),
  KEY `AUTH_GRP_ID` (`AUTH_GRP_ID`),
  CONSTRAINT `TB_SYS_NOTC_AUTH_ibfk_1` FOREIGN KEY (`NOTC_IDX`) REFERENCES `TB_SYS_NOTC` (`NOTC_IDX`),
  CONSTRAINT `TB_SYS_NOTC_AUTH_ibfk_2` FOREIGN KEY (`AUTH_GRP_ID`) REFERENCES `TB_SYS_AUTH_GRP` (`AUTH_GRP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- dmaru.TB_SYS_USER_AUTH_GRP definition

CREATE TABLE `TB_SYS_USER_AUTH_GRP` (
  `USER_ID` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '관리자ID',
  `AUTH_GRP_ID` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '그룹ID',
  PRIMARY KEY (`USER_ID`,`AUTH_GRP_ID`),
  KEY `AUTH_GRP_ID` (`AUTH_GRP_ID`),
  CONSTRAINT `TB_SYS_USER_AUTH_GRP_ibfk_1` FOREIGN KEY (`USER_ID`) REFERENCES `TB_SYS_USER` (`USER_ID`),
  CONSTRAINT `TB_SYS_USER_AUTH_GRP_ibfk_2` FOREIGN KEY (`AUTH_GRP_ID`) REFERENCES `TB_SYS_AUTH_GRP` (`AUTH_GRP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='시스템_사용자권한그룹';


-- dmaru.adm_bnr_list definition

CREATE TABLE `adm_bnr_list` (
  `bnr_type_sno` bigint NOT NULL COMMENT '배너타입일련번호',
  `bnr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '배너ID',
  `sort_no` int DEFAULT NULL COMMENT '정렬번호',
  `expsr_area` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '노출영역',
  `pc_bgclr` varchar(6) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'PC배경색',
  `expsr_odr` int DEFAULT NULL COMMENT '노출순서',
  `hdng_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '숨김여부',
  `del_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '삭제여부',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`bnr_id`,`bnr_type_sno`),
  CONSTRAINT `adm_bnr_list_ibfk_1` FOREIGN KEY (`bnr_id`) REFERENCES `adm_bnr_mng` (`bnr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='배너목록';


-- dmaru.adm_bnr_type definition

CREATE TABLE `adm_bnr_type` (
  `bnr_type_sno` bigint NOT NULL AUTO_INCREMENT COMMENT '배너타입일련번호',
  `scr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '화면ID',
  `bgbnr_yn` char(1) COLLATE utf8_bin NOT NULL COMMENT '빅배너여부',
  `type_nm` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '타입명',
  `type_sn` int DEFAULT NULL COMMENT '타입순번',
  `rlng_basic_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '롤링기본여부',
  `oper_refl_req_dtm` datetime DEFAULT NULL COMMENT '운영반영요청일시',
  `operr_id` varchar(9) COLLATE utf8_bin DEFAULT NULL COMMENT '운영자ID',
  `use_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '사용여부',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`bnr_type_sno`),
  KEY `scr_id` (`scr_id`),
  CONSTRAINT `adm_bnr_type_ibfk_1` FOREIGN KEY (`scr_id`) REFERENCES `adm_main_scr_mng` (`scr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='배너타입';


-- dmaru.adm_cd_mng definition

CREATE TABLE `adm_cd_mng` (
  `cd_id` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '코드ID',
  `cd_cls_id` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '코드분류ID',
  `cd_sn` int NOT NULL COMMENT '코드순번',
  `cd_nm` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '코드명',
  `cd_desc` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '코드설명',
  `use_yn` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '사용여부',
  `fst_regr_id` varchar(9) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`cd_id`,`cd_cls_id`),
  KEY `cd_cls_id` (`cd_cls_id`),
  CONSTRAINT `adm_cd_mng_ibfk_1` FOREIGN KEY (`cd_cls_id`) REFERENCES `adm_cd_cls` (`cd_cls_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='코드관리';


-- dmaru.adm_dspy_list definition

CREATE TABLE `adm_dspy_list` (
  `dspy_type_sno` bigint NOT NULL COMMENT '전시타입일련번호',
  `dspy_id` varchar(18) COLLATE utf8_bin NOT NULL COMMENT '전시ID',
  `sort_no` int DEFAULT NULL COMMENT '정렬번호',
  `hdng_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '숨김여부',
  `del_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '삭제여부',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`dspy_id`,`dspy_type_sno`),
  CONSTRAINT `adm_dspy_list_ibfk_1` FOREIGN KEY (`dspy_id`) REFERENCES `adm_dspy_mng` (`dspy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='전시목록';


-- dmaru.adm_dspy_type definition

CREATE TABLE `adm_dspy_type` (
  `dspy_type_sno` bigint NOT NULL AUTO_INCREMENT COMMENT '전시타입일련번호',
  `scr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '화면ID',
  `msnb_yn` char(1) COLLATE utf8_bin NOT NULL COMMENT '미션북여부',
  `type_nm` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '타입명',
  `type_sn` int DEFAULT NULL COMMENT '타입순번',
  `main_expsr_cnt` int DEFAULT NULL COMMENT '메인노출수',
  `sort_basic_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '정렬기본여부',
  `dspy_move_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '전시이동여부',
  `lnk_url` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '링크URL',
  `algn_img` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '배열이미지',
  `atch_file_sno` bigint DEFAULT NULL COMMENT '첨부파일일련번호',
  `oper_refl_req_dtm` datetime DEFAULT NULL COMMENT '운영반영요청일시',
  `operr_id` varchar(9) COLLATE utf8_bin DEFAULT NULL COMMENT '운영자ID',
  `use_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '사용여부',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`dspy_type_sno`),
  KEY `scr_id` (`scr_id`),
  CONSTRAINT `adm_dspy_type_ibfk_1` FOREIGN KEY (`scr_id`) REFERENCES `adm_main_scr_mng` (`scr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='전시유형';


-- dmaru.adm_menu_mng definition

CREATE TABLE `adm_menu_mng` (
  `menu_id` varchar(4) COLLATE utf8_bin NOT NULL COMMENT '메뉴ID',
  `upp_menu_id` varchar(4) COLLATE utf8_bin NOT NULL COMMENT '상위메뉴ID',
  `menu_nm` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '메뉴명',
  `menu_no` int DEFAULT NULL COMMENT '메뉴번호',
  `menu_url` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '메뉴URL',
  `rel_img_nm` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '관련이미지명',
  `rel_img_url` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '관련이미지URL',
  `menu_desc` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '메뉴설명',
  `use_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '사용여부',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`menu_id`),
  KEY `adm_menu_mng_ibfk_1` (`upp_menu_id`),
  CONSTRAINT `adm_menu_mng_ibfk_1` FOREIGN KEY (`upp_menu_id`) REFERENCES `adm_menu_mng` (`menu_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='메뉴관리';


-- dmaru.adm_quiz_stats definition

CREATE TABLE `adm_quiz_stats` (
  `quiz_stats_sno` bigint NOT NULL AUTO_INCREMENT COMMENT '퀴즈통계일련번호',
  `quiz_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '퀴즈ID',
  `quiz_sn` int NOT NULL COMMENT '퀴즈순번',
  `patc_pson` int DEFAULT NULL COMMENT '참여인원',
  `quiz_item_n1_sel_rate` float DEFAULT NULL COMMENT '퀴즈항목1선택율',
  `quiz_item_n2_sel_rate` float DEFAULT NULL COMMENT '퀴즈항목2선택율',
  `quiz_item_n3_sel_rate` float DEFAULT NULL COMMENT '퀴즈항목3선택율',
  `quiz_item_n4_sel_rate` float DEFAULT NULL COMMENT '퀴즈항목4선택율',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`quiz_stats_sno`),
  KEY `quiz_id` (`quiz_id`),
  CONSTRAINT `adm_quiz_stats_ibfk_1` FOREIGN KEY (`quiz_id`) REFERENCES `adm_quiz_mng` (`quiz_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='퀴즈통계';


-- dmaru.adm_terms_cn definition

CREATE TABLE `adm_terms_cn` (
  `terms_id` varchar(9) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '약관ID',
  `terms_cn` varchar(4000) COLLATE utf8_bin DEFAULT NULL COMMENT '약관내용',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`terms_id`),
  CONSTRAINT `adm_terms_cn_ibfk_1` FOREIGN KEY (`terms_id`) REFERENCES `adm_terms_mng` (`terms_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='약관내용';


-- dmaru.cms_brnd_mng definition

CREATE TABLE `cms_brnd_mng` (
  `brnd_id` varchar(9) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '브랜드ID',
  `mkr_id` varchar(9) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '제작사ID',
  `brnd_nm` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '브랜드명',
  `rmk` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '비고',
  `del_yn` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '삭제여부',
  `fst_regr_id` varchar(9) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`brnd_id`),
  KEY `mkr_id` (`mkr_id`),
  CONSTRAINT `cms_brnd_mng_ibfk_1` FOREIGN KEY (`mkr_id`) REFERENCES `cms_mkr_mng` (`mkr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='브랜드관리';


-- dmaru.cms_cnts_mng definition

CREATE TABLE `cms_cnts_mng` (
  `cnts_id` varchar(12) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '콘텐츠ID',
  `vend_id` varchar(9) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '업체ID',
  `cate_id` varchar(16) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '카테고리ID',
  `mkr_id` varchar(9) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '제작사ID',
  `brnd_id` varchar(9) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '브랜드ID',
  `cnts_div_cd` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '콘텐츠구분코드',
  `cnts_ttl` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '콘텐츠제목',
  `cnts_sttl` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '콘텐츠부제',
  `cnts_rep_img_typ` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '콘텐츠대표이미지타입',
  `cnts_uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '콘텐츠UUID',
  `isbn` varchar(13) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'ISBN',
  `ecn` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'ECN',
  `issn` varchar(8) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'ISSN',
  `aprv_stus_cd` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '승인상태코드',
  `sle_bgn_dtm` datetime DEFAULT NULL COMMENT '판매시작일시',
  `sle_end_dtm` datetime DEFAULT NULL COMMENT '판매종료일시',
  `imdtl_sle_yn` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '즉시판매여부',
  `end_imnt_cd` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '종료임박코드',
  `dspy_lmtt_yn` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '전시제한여부',
  `dspy_lmtt_bgn_dtm` datetime DEFAULT NULL COMMENT '전시제한시작일시',
  `dspy_lmtt_end_dtm` datetime DEFAULT NULL COMMENT '전시제한종료일시',
  `ag_grd_cd` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '나이등급코드',
  `srv_pf_cd` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '서비스플랫폼코드',
  `srv_tgt_cd` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '서비스대상코드',
  `srv_kind_cd` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '서비스종류코드',
  `rep_grade_cd` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '대표학년코드',
  `grade_cd` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '학년코드',
  `dffly` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '난이도',
  `acuml_yn` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '집계여부',
  `free_exprc_yn` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '무료체험여부',
  `mngr_memo` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '관리자메모',
  `inn_pblc_no` varchar(15) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '내부발행번호',
  `book_isbn` varchar(13) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '종이책ISBN',
  `book_pblc_dt` date DEFAULT NULL COMMENT '종이책발행일자',
  `book_nprc` int DEFAULT NULL COMMENT '종이책정가',
  `book_page_cnt` int DEFAULT NULL COMMENT '종이책페이지수',
  `cnts_cntnt` longtext CHARACTER SET utf8 COLLATE utf8_bin COMMENT '콘텐츠목차',
  `cnts_intro_stmt` longtext CHARACTER SET utf8 COLLATE utf8_bin COMMENT '콘텐츠소개글',
  `cnts_pblc_dt` date DEFAULT NULL COMMENT '콘텐츠발행일자',
  `cnts_taxn` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '콘텐츠과세',
  `cnts_nprc` int DEFAULT NULL COMMENT '콘텐츠정가',
  `file_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '파일유형',
  `file_size` int DEFAULT NULL COMMENT '파일크기',
  `rntm` time DEFAULT NULL COMMENT '재생시간',
  `rdg_drc` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '읽기방향',
  `prvw` float DEFAULT NULL COMMENT '미리보기',
  `srv_ofr_mthd` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '서비스제공방식',
  `seqn_info_en` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '회차정보유무',
  `mov_div_cd` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '동영상구분코드',
  `mov_ttl` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '동영상제목',
  `mov_url` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '동영상URL',
  `awk_en` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '수상작유무',
  `hur_seltn_en` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '한우리선정유무',
  `msnb_en` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '미션북유무',
  `bqz_en` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '북퀴즈유무',
  `bqz_opub_scope` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '북퀴즈공개범위',
  `mnpl_en` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '독점유무',
  `min_cprdg_tm` time DEFAULT NULL COMMENT '최소완독시간',
  `srch_wrd_nm` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '검색단어명',
  `fst_regr_id` varchar(9) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  `aprv_dtm` datetime DEFAULT NULL COMMENT '승인일시',
  PRIMARY KEY (`cnts_id`),
  KEY `vend_id` (`vend_id`),
  CONSTRAINT `cms_cnts_mng_ibfk_1` FOREIGN KEY (`vend_id`) REFERENCES `scm_vend_basic` (`vend_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='콘텐츠관리';


-- dmaru.cms_cnts_seqn definition

CREATE TABLE `cms_cnts_seqn` (
  `cnts_id` varchar(12) COLLATE utf8_bin NOT NULL COMMENT '콘텐츠ID',
  `seqn_no` int NOT NULL COMMENT '회차번호',
  `seqn_cnts_uuid` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '회차콘텐츠UUID',
  `seqn_open_dtm` datetime DEFAULT NULL COMMENT '회차오픈일시',
  `ttl` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '제목',
  `intro_stmt` varchar(1000) COLLATE utf8_bin DEFAULT NULL COMMENT '소개글',
  `rntm` time DEFAULT NULL COMMENT '재생시간',
  `prvw` float DEFAULT NULL COMMENT '미리보기',
  `smple_en` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '샘플유무',
  `file_size` int DEFAULT NULL COMMENT '파일크기',
  `lnm_rgt` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '성우',
  `lctrr` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '강사',
  `writr` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '작가',
  `cmptn_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '완결여부',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`cnts_id`,`seqn_no`),
  CONSTRAINT `cms_cnts_seqn_ibfk_1` FOREIGN KEY (`cnts_id`) REFERENCES `cms_cnts_mng` (`cnts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='콘텐츠회차';


-- dmaru.cms_cnts_unit definition

CREATE TABLE `cms_cnts_unit` (
  `cnts_id` varchar(12) COLLATE utf8_bin NOT NULL COMMENT '콘텐츠ID',
  `unit_no` int NOT NULL COMMENT '단원번호',
  `smstr_cd` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '학기코드',
  `subj_cd` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '과목코드',
  `unit_cd` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '단원코드',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`cnts_id`,`unit_no`),
  CONSTRAINT `cms_cnts_unit_ibfk_1` FOREIGN KEY (`cnts_id`) REFERENCES `cms_cnts_mng` (`cnts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='콘텐츠단원';


-- dmaru.cms_cnts_writr_rels definition

CREATE TABLE `cms_cnts_writr_rels` (
  `cnts_writr_sno` bigint NOT NULL AUTO_INCREMENT COMMENT '콘텐츠작가일련번호',
  `cnts_id` varchar(12) COLLATE utf8_bin NOT NULL COMMENT '콘텐츠ID',
  `writr_type_cd` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '작가유형코드',
  `writr_nm` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '작가명',
  `use_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '사용여부',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`cnts_writr_sno`),
  KEY `cnts_id` (`cnts_id`),
  CONSTRAINT `cms_cnts_writr_rels_ibfk_1` FOREIGN KEY (`cnts_id`) REFERENCES `cms_cnts_mng` (`cnts_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54264 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='콘텐츠작가관계';


-- dmaru.cms_hnr_crs definition

CREATE TABLE `cms_hnr_crs` (
  `cnts_id` varchar(12) COLLATE utf8_bin NOT NULL COMMENT '콘텐츠ID',
  `crs_no` int NOT NULL COMMENT '코스번호',
  `crs_cd` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '코스코드',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`cnts_id`,`crs_no`),
  CONSTRAINT `cms_hnr_crs_ibfk_1` FOREIGN KEY (`cnts_id`) REFERENCES `cms_cnts_mng` (`cnts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='한우리코스';


-- dmaru.cms_srs_mng definition

CREATE TABLE `cms_srs_mng` (
  `srs_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '시리즈ID',
  `vend_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '업체ID',
  `mkr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '제작사ID',
  `brnd_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '브랜드ID',
  `cnts_div_cd` varchar(4) COLLATE utf8_bin NOT NULL COMMENT '콘텐츠구분코드',
  `srs_nm` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '시리즈명',
  `rep_cate` varchar(16) COLLATE utf8_bin DEFAULT NULL COMMENT '대표카테고리',
  `srs_rep_img_typ` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '대표이미지타입',
  `isbn` varchar(13) COLLATE utf8_bin DEFAULT NULL COMMENT 'ISBN',
  `contn_prgs_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '연속진행여부',
  `cmptn_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '완결여부',
  `cnct_cnts_cnt` int DEFAULT NULL COMMENT '연결콘텐츠수',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`srs_id`),
  KEY `vend_id` (`vend_id`),
  KEY `mkr_id` (`mkr_id`),
  KEY `brnd_id` (`brnd_id`),
  CONSTRAINT `cms_srs_mng_ibfk_1` FOREIGN KEY (`vend_id`) REFERENCES `scm_vend_basic` (`vend_id`),
  CONSTRAINT `cms_srs_mng_ibfk_2` FOREIGN KEY (`mkr_id`) REFERENCES `cms_mkr_mng` (`mkr_id`),
  CONSTRAINT `cms_srs_mng_ibfk_3` FOREIGN KEY (`brnd_id`) REFERENCES `cms_brnd_mng` (`brnd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='시리즈관리';


-- dmaru.com_faq definition

CREATE TABLE `com_faq` (
  `faq_sno` bigint NOT NULL AUTO_INCREMENT COMMENT 'FAQ일련번호',
  `operr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '운영자ID',
  `srv_pf_cd` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '서비스플랫폼코드',
  `faq_lcls_cd` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'FAQ대분류코드',
  `faq_scls_cd` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'FAQ소분류코드',
  `use_yn` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '사용여부',
  `expsr_odr` int DEFAULT NULL COMMENT '노출순서',
  `ttl` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '제목',
  `cn` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT '내용',
  `reg_dtm` datetime DEFAULT NULL COMMENT '등록일시',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`faq_sno`),
  KEY `operr_id` (`operr_id`),
  CONSTRAINT `com_faq_ibfk_1` FOREIGN KEY (`operr_id`) REFERENCES `adm_operr_mng` (`operr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='FAQ';


-- dmaru.com_frbdw_mng definition

CREATE TABLE `com_frbdw_mng` (
  `frbdw_sno` bigint NOT NULL AUTO_INCREMENT COMMENT '금칙어일련번호',
  `operr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '운영자ID',
  `frbdw` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '금칙어',
  `reg_dtm` datetime DEFAULT NULL COMMENT '등록일시',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`frbdw_sno`),
  KEY `operr_id` (`operr_id`),
  CONSTRAINT `com_frbdw_mng_ibfk_1` FOREIGN KEY (`operr_id`) REFERENCES `adm_operr_mng` (`operr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='금칙어정보';


-- dmaru.com_notc definition

CREATE TABLE `com_notc` (
  `notc_sno` bigint NOT NULL AUTO_INCREMENT COMMENT '공지사항일련번호',
  `operr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '운영자ID',
  `srv_pf_cd` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '서비스플랫폼코드',
  `main_expsr_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '메인노출여부',
  `main_ntce_bgn_dtm` datetime DEFAULT NULL COMMENT '메인게시시작일시',
  `main_ntce_end_dtm` datetime DEFAULT NULL COMMENT '메인게시종료일시',
  `notc_div_cd` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '공지사항구분코드',
  `ttl` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '제목',
  `cn` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT '내용',
  `reg_dtm` datetime DEFAULT NULL COMMENT '등록일시',
  `del_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '삭제여부',
  `inqr_cnt` int DEFAULT NULL COMMENT '조회수',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`notc_sno`),
  KEY `operr_id` (`operr_id`),
  CONSTRAINT `com_notc_ibfk_1` FOREIGN KEY (`operr_id`) REFERENCES `adm_operr_mng` (`operr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='공지사항';


-- dmaru.com_rcv_trgt_grp definition

CREATE TABLE `com_rcv_trgt_grp` (
  `rcv_trgt_grp_sno` bigint NOT NULL AUTO_INCREMENT COMMENT '수신타겟그룹일련번호',
  `mbr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '회원ID',
  `operr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '운영자ID',
  `grp_nm` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '그룹명',
  `reg_dtm` datetime DEFAULT NULL COMMENT '등록일시',
  `use_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '사용여부',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`rcv_trgt_grp_sno`),
  KEY `mbr_id` (`mbr_id`),
  CONSTRAINT `com_rcv_trgt_grp_ibfk_1` FOREIGN KEY (`mbr_id`) REFERENCES `mem_mbr_basic` (`mbr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='수신타겟그룹';


-- dmaru.com_rdg_nwspr definition

CREATE TABLE `com_rdg_nwspr` (
  `rdg_nwspr_sno` bigint NOT NULL AUTO_INCREMENT COMMENT '독서신문일련번호',
  `operr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '운영자ID',
  `srv_pf_cd` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '서비스플랫폼코드',
  `main_expsr_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '메인노출여부',
  `rdg_nwspr_div_cd` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '독서신문구분코드',
  `ttl` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '제목',
  `cn` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT '내용',
  `reg_dtm` datetime DEFAULT NULL COMMENT '등록일시',
  `del_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '삭제여부',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`rdg_nwspr_sno`),
  KEY `operr_id` (`operr_id`),
  CONSTRAINT `com_rdg_nwspr_ibfk_1` FOREIGN KEY (`operr_id`) REFERENCES `adm_operr_mng` (`operr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='독서신문';


-- dmaru.com_tmplt definition

CREATE TABLE `com_tmplt` (
  `tmplt_sno` bigint NOT NULL AUTO_INCREMENT COMMENT '템플릿일련번호',
  `tmplt_grp_sno` bigint NOT NULL COMMENT '템플릿그룹일련번호',
  `tmplt_div_cd` varchar(4) COLLATE utf8_bin NOT NULL COMMENT '템플릿구분코드',
  `cnct_tmplt_no` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '연결템플릿번호',
  `tmplt_nm` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '템플릿명',
  `ttl` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '제목',
  `cn` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT '내용',
  `reg_dtm` datetime DEFAULT NULL COMMENT '등록일시',
  `use_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '사용여부',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`tmplt_sno`),
  KEY `tmplt_grp_sno` (`tmplt_grp_sno`),
  CONSTRAINT `com_tmplt_ibfk_1` FOREIGN KEY (`tmplt_grp_sno`) REFERENCES `com_tmplt_grp` (`tmplt_grp_sno`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='템플릿';


-- dmaru.mem_mbr_dtl definition

CREATE TABLE `mem_mbr_dtl` (
  `mbr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '회원ID',
  `n1_month_free_subp_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '1개월무료구독여부',
  `subp_stus_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '구독상태여부',
  `vchr_use_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '이용권사용여부',
  `prrl_opub_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '프로필공개여부',
  `ncnm` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '닉네임',
  `prrl_img_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '프로필이미지여부',
  `prrl_intro_stmt` varchar(1000) COLLATE utf8_bin DEFAULT NULL COMMENT '프로필소개글',
  `cncnt_mng_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '집중관리여부',
  `cncnt_mng_rsn` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '집중관리사유',
  `cncnt_mng_reg_dtm` datetime DEFAULT NULL COMMENT '집중관리등록일시',
  `lgin_lmtt_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '로그인제한여부',
  `secsn_lmtt_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '탈퇴제한여부',
  `info_upd_lmtt_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '정보수정제한여부',
  `setl_lmtt_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '결제제한여부',
  `mbr_grade_cd` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '회원학년코드',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`mbr_id`),
  CONSTRAINT `mem_mbr_dtl_ibfk_1` FOREIGN KEY (`mbr_id`) REFERENCES `mem_mbr_basic` (`mbr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='회원상세';


-- dmaru.mem_mbr_terml_info definition

CREATE TABLE `mem_mbr_terml_info` (
  `mbr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '회원ID',
  `terml_id` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '단말기ID',
  `hw_os` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '하드웨어운영체제',
  `os_ver` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '운영체제버전',
  `app_ver` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '어플리케이션버전',
  `rsolu_val` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '해상도값',
  `terml_model` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '단말기모델',
  `brwsr` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '브라우저',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`terml_id`,`mbr_id`),
  KEY `mbr_id` (`mbr_id`),
  CONSTRAINT `mem_mbr_terml_info_ibfk_1` FOREIGN KEY (`mbr_id`) REFERENCES `mem_mbr_basic` (`mbr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='회원단말기정보';


-- dmaru.mem_scl_lgin definition

CREATE TABLE `mem_scl_lgin` (
  `scl_lgin_sno` bigint NOT NULL AUTO_INCREMENT COMMENT '소셜로그인일련번호',
  `mbr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '회원ID',
  `scl_type_cd` varchar(4) COLLATE utf8_bin NOT NULL COMMENT '소셜유형코드',
  `scl_lgin_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '소셜로그인ID',
  `use_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '사용여부',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`scl_lgin_sno`),
  KEY `mbr_id` (`mbr_id`),
  CONSTRAINT `mem_scl_lgin_ibfk_1` FOREIGN KEY (`mbr_id`) REFERENCES `mem_mbr_basic` (`mbr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='소셜로그인';


-- dmaru.mem_secsn_mbr definition

CREATE TABLE `mem_secsn_mbr` (
  `mbr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '회원ID',
  `secsn_dtm` datetime DEFAULT NULL COMMENT '탈퇴일시',
  `secsn_rsn` varchar(9) COLLATE utf8_bin DEFAULT NULL COMMENT '탈퇴사유',
  `secsn_atch_file_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '탈퇴첨부파일여부',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`mbr_id`),
  CONSTRAINT `mem_secsn_mbr_ibfk_1` FOREIGN KEY (`mbr_id`) REFERENCES `mem_mbr_basic` (`mbr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='탈퇴회원';


-- dmaru.mem_subp_stus definition

CREATE TABLE `mem_subp_stus` (
  `mbr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '회원ID',
  `subp_stus_no` int NOT NULL COMMENT '구독상태번호',
  `subp_kind_cd` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '구독종류코드',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  `subp_bgn_dtm` datetime DEFAULT NULL COMMENT '구독시작일시',
  `subp_end_dtm` datetime DEFAULT NULL COMMENT '구독종료일시',
  PRIMARY KEY (`mbr_id`,`subp_stus_no`),
  CONSTRAINT `mem_subp_stus_ibfk_1` FOREIGN KEY (`mbr_id`) REFERENCES `mem_mbr_basic` (`mbr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='구독상태';


-- dmaru.mem_terms_agre_hist definition

CREATE TABLE `mem_terms_agre_hist` (
  `hist_sno` bigint NOT NULL AUTO_INCREMENT COMMENT '이력일련번호',
  `mbr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '회원ID',
  `terms_id` varchar(9) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '약관ID',
  `terms_agre_dtm` datetime DEFAULT NULL COMMENT '약관동의일시',
  `terms_agre_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '약관동의여부',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`hist_sno`),
  KEY `terms_id` (`terms_id`),
  CONSTRAINT `mem_terms_agre_hist_ibfk_2` FOREIGN KEY (`terms_id`) REFERENCES `adm_terms_mng` (`terms_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='약관동의이력';


-- dmaru.mem_vchr_use definition

CREATE TABLE `mem_vchr_use` (
  `mbr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '회원ID',
  `vchr_use_no` int NOT NULL COMMENT '이용권사용번호',
  `vchr_kind_cd` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '이용권종류코드',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  `vchr_bgn_dtm` datetime DEFAULT NULL COMMENT '이용권시작일시',
  `vchr_end_dtm` datetime DEFAULT NULL COMMENT '이용권종료일시',
  PRIMARY KEY (`mbr_id`,`vchr_use_no`),
  CONSTRAINT `mem_vchr_use_ibfk_1` FOREIGN KEY (`mbr_id`) REFERENCES `mem_mbr_basic` (`mbr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='이용권사용';


-- dmaru.scm_cntr_mng definition

CREATE TABLE `scm_cntr_mng` (
  `cntr_id` varchar(12) COLLATE utf8_bin NOT NULL COMMENT '계약ID',
  `vend_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '업체ID',
  `cnts_div_cd` varchar(4) COLLATE utf8_bin NOT NULL COMMENT '콘텐츠구분코드',
  `cntr_stus_cd` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '계약상태코드',
  `ecal_type_cd` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '정산유형코드',
  `ecal_mthd_cd` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '정산방식코드',
  `srv_ofr_mthd` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '서비스제공방식',
  `n1_copy_dwld_cnt` int DEFAULT NULL COMMENT '1COPY다운로드수',
  `lend_term` int DEFAULT NULL COMMENT '대여기간',
  `ecal_rate` float DEFAULT NULL COMMENT '정산율',
  `dwld_excs_infom_cnt` int DEFAULT NULL COMMENT '다운로드초과알림수',
  `n1_dwld_untpc` int DEFAULT NULL COMMENT '1다운로드단가',
  `sle_cntr_bgn_dtm` datetime DEFAULT NULL COMMENT '판매계약시작일시',
  `sle_cntr_end_dtm` datetime DEFAULT NULL COMMENT '판매계약종료일시',
  `prvw` int DEFAULT NULL COMMENT '미리보기',
  `sle_cntr_term` int DEFAULT NULL COMMENT '판매계약기간',
  `suply_untpc` int DEFAULT NULL COMMENT '공급단가',
  `min_grnt` int DEFAULT NULL COMMENT '최소개런티',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`cntr_id`),
  KEY `vend_id` (`vend_id`),
  CONSTRAINT `scm_cntr_mng_ibfk_1` FOREIGN KEY (`vend_id`) REFERENCES `scm_vend_basic` (`vend_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='계약관리';


-- dmaru.scm_vend_adtn definition

CREATE TABLE `scm_vend_adtn` (
  `vend_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '업체ID',
  `cnts_chrgr_nm` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '콘텐츠담당자명',
  `cnts_chrgr_email` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '콘텐츠담당자이메일',
  `cnts_chrgr_cttpc` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '콘텐츠담당자연락처',
  `cnts_chrgr_mpno` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '콘텐츠담당자휴대전화번호',
  `ecal_chrgr_nm` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '정산담당자명',
  `ecal_chrgr_email` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '정산담당자이메일',
  `ecal_chrgr_cttpc` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '정산담당자연락처',
  `ecal_chrgr_mpno` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '정산담당자휴대전화번호',
  `bank_cd` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '은행코드',
  `acno` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '계좌번호',
  `dposr` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '예금주',
  `zpcd` varchar(6) COLLATE utf8_bin DEFAULT NULL COMMENT '우편번호',
  `jino_addr` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '지번주소',
  `jino_dtl_addr` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '지번상세주소',
  `road_nm_addr` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '도로명주소',
  `road_nm_dtl_addr` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '도로명상세주소',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`vend_id`),
  CONSTRAINT `scm_vend_adtn_ibfk_1` FOREIGN KEY (`vend_id`) REFERENCES `scm_vend_basic` (`vend_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='업체부가';


-- dmaru.scm_vend_mkr_rels definition

CREATE TABLE `scm_vend_mkr_rels` (
  `vend_mkr_sno` bigint NOT NULL AUTO_INCREMENT COMMENT '업체제작사일련번호',
  `vend_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '업체ID',
  `mkr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '제작사ID',
  `use_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '사용여부',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`vend_mkr_sno`),
  KEY `vend_id` (`vend_id`),
  CONSTRAINT `scm_vend_mkr_rels_ibfk_1` FOREIGN KEY (`vend_id`) REFERENCES `scm_vend_basic` (`vend_id`)
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='업체제작사관계';


-- dmaru.set_cnts_usg_ecal_detl definition

CREATE TABLE `set_cnts_usg_ecal_detl` (
  `cnts_id` varchar(12) COLLATE utf8_bin NOT NULL COMMENT '콘텐츠ID',
  `ecal_mthd_cd` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '정산방식코드',
  `cnts_vw_cnt` int DEFAULT NULL COMMENT '콘텐츠뷰수',
  `ecal_amt` int DEFAULT NULL COMMENT '정산금액',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`cnts_id`),
  CONSTRAINT `set_cnts_usg_ecal_detl_ibfk_1` FOREIGN KEY (`cnts_id`) REFERENCES `cms_cnts_mng` (`cnts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='콘텐츠이용정산내역';


-- dmaru.set_ecal_mng definition

CREATE TABLE `set_ecal_mng` (
  `ecal_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '정산ID',
  `vend_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '업체ID',
  `ecal_term` date DEFAULT NULL COMMENT '정산기간',
  `ecal_amt` int DEFAULT NULL COMMENT '정산금액',
  `ecal_atch_file_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '정산첨부파일여부',
  `atch_file_sno` bigint DEFAULT NULL COMMENT '첨부파일일련번호',
  `ecal_stus_cd` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '정산상태코드',
  `ecal_cmpl_dtm` datetime DEFAULT NULL COMMENT '정산완료일시',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`ecal_id`),
  KEY `vend_id` (`vend_id`),
  CONSTRAINT `set_ecal_mng_ibfk_1` FOREIGN KEY (`vend_id`) REFERENCES `scm_vend_basic` (`vend_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='정산관리';


-- dmaru.set_ord_mng definition

CREATE TABLE `set_ord_mng` (
  `ord_id` varchar(14) COLLATE utf8_bin NOT NULL COMMENT '주문ID',
  `mbr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '회원ID',
  `ord_dtm` datetime DEFAULT NULL COMMENT '주문일시',
  `setl_mn` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '결제수단',
  `card_kind` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '카드종류',
  `vchr_use_yn` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '이용권사용여부',
  `vchr_id` varchar(9) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '이용권ID',
  `dc_amt` int DEFAULT NULL COMMENT '할인금액',
  `setl_amt` int DEFAULT NULL COMMENT '결제금액',
  `subp_en` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '구독유무',
  `subp_bgn_dtm` datetime DEFAULT NULL COMMENT '구독시작일시',
  `subp_end_dtm` datetime DEFAULT NULL COMMENT '구족종료일시',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`ord_id`),
  KEY `mbr_id` (`mbr_id`),
  CONSTRAINT `set_ord_mng_ibfk_1` FOREIGN KEY (`mbr_id`) REFERENCES `mem_mbr_basic` (`mbr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='주문관리';


-- dmaru.set_setl_detl definition

CREATE TABLE `set_setl_detl` (
  `ord_id` varchar(14) COLLATE utf8_bin NOT NULL COMMENT '주문ID',
  `rtpn_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '요금제ID',
  `setl_dtm` datetime DEFAULT NULL COMMENT '결제일시',
  `setl_amt` int DEFAULT NULL COMMENT '결제금액',
  `card_aprv_no` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '카드승인번호',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`ord_id`,`rtpn_id`),
  KEY `rtpn_id` (`rtpn_id`),
  CONSTRAINT `set_setl_detl_ibfk_1` FOREIGN KEY (`rtpn_id`) REFERENCES `set_rtpn_mng` (`rtpn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='결제내역';


-- dmaru.svc_achv_patc_detl definition

CREATE TABLE `svc_achv_patc_detl` (
  `achv_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '업적ID',
  `mbr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '회원ID',
  `patc_dtm` datetime DEFAULT NULL COMMENT '참여일시',
  `exec_cmpl_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '수행완료여부',
  `cmpl_dtm` datetime DEFAULT NULL COMMENT '완료일시',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`achv_id`,`mbr_id`),
  KEY `mbr_id` (`mbr_id`),
  CONSTRAINT `svc_achv_patc_detl_ibfk_1` FOREIGN KEY (`achv_id`) REFERENCES `adm_achv_mng` (`achv_id`),
  CONSTRAINT `svc_achv_patc_detl_ibfk_2` FOREIGN KEY (`mbr_id`) REFERENCES `mem_mbr_basic` (`mbr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='업적참여내역';


-- dmaru.svc_bmk definition

CREATE TABLE `svc_bmk` (
  `bmk_sno` bigint NOT NULL AUTO_INCREMENT COMMENT '책갈피일련번호',
  `mbr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '회원ID',
  `cnts_id` varchar(12) COLLATE utf8_bin NOT NULL COMMENT '콘텐츠ID',
  `seqn_no` int DEFAULT NULL COMMENT '회차번호',
  `sync_sno` int DEFAULT NULL COMMENT '동기화일련번호',
  `api_ver` float DEFAULT NULL COMMENT 'API버전',
  `file_no` int DEFAULT NULL COMMENT '파일번호',
  `file_thn` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '파일썸네일',
  `cntnt_no` int DEFAULT NULL COMMENT '목차번호',
  `cntnt_nm` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '목차명',
  `page_no` int DEFAULT NULL COMMENT '페이지번호',
  `page_pcrt` float DEFAULT NULL COMMENT '페이지백분율',
  `vwr_itlok_dtm` datetime DEFAULT NULL COMMENT '뷰어연동일시',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`bmk_sno`),
  KEY `mbr_id` (`mbr_id`),
  KEY `cnts_id` (`cnts_id`),
  CONSTRAINT `svc_bmk_ibfk_1` FOREIGN KEY (`mbr_id`) REFERENCES `mem_mbr_basic` (`mbr_id`),
  CONSTRAINT `svc_bmk_ibfk_2` FOREIGN KEY (`cnts_id`) REFERENCES `cms_cnts_mng` (`cnts_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='책갈피';


-- dmaru.svc_event_patc_detl definition

CREATE TABLE `svc_event_patc_detl` (
  `event_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '이벤트ID',
  `mbr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '회원ID',
  `patc_dtm` datetime DEFAULT NULL COMMENT '참여일시',
  `patc_cn` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '참여내용',
  `pzwn_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '당첨여부',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`event_id`,`mbr_id`),
  KEY `mbr_id` (`mbr_id`),
  CONSTRAINT `svc_event_patc_detl_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `adm_event_mng` (`event_id`),
  CONSTRAINT `svc_event_patc_detl_ibfk_2` FOREIGN KEY (`mbr_id`) REFERENCES `mem_mbr_basic` (`mbr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='이벤트참여내역';


-- dmaru.svc_hglgt definition

CREATE TABLE `svc_hglgt` (
  `hglgt_sno` bigint NOT NULL AUTO_INCREMENT COMMENT '하이라이트일련번호',
  `mbr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '회원ID',
  `cnts_id` varchar(12) COLLATE utf8_bin NOT NULL COMMENT '콘텐츠ID',
  `seqn_no` int DEFAULT NULL COMMENT '회차번호',
  `sync_sno` int DEFAULT NULL COMMENT '동기화일련번호',
  `api_ver` float DEFAULT NULL COMMENT 'API버전',
  `file_no` int DEFAULT NULL COMMENT '파일번호',
  `file_thn` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '파일썸네일',
  `cntnt_no` int DEFAULT NULL COMMENT '목차번호',
  `cntnt_nm` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '목차명',
  `page_no` int DEFAULT NULL COMMENT '페이지번호',
  `page_pcrt` float DEFAULT NULL COMMENT '페이지백분율',
  `vwr_itlok_dtm` datetime DEFAULT NULL COMMENT '뷰어연동일시',
  `color` varchar(7) COLLATE utf8_bin DEFAULT NULL COMMENT '색상',
  `bgn_crd` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '시작좌표',
  `end_crd` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '종료좌표',
  `sel_text` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '선택텍스트',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`hglgt_sno`),
  KEY `mbr_id` (`mbr_id`),
  KEY `cnts_id` (`cnts_id`),
  CONSTRAINT `svc_hglgt_ibfk_1` FOREIGN KEY (`mbr_id`) REFERENCES `mem_mbr_basic` (`mbr_id`),
  CONSTRAINT `svc_hglgt_ibfk_2` FOREIGN KEY (`cnts_id`) REFERENCES `cms_cnts_mng` (`cnts_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='하이라이트';


-- dmaru.svc_mbr_cnts_rels definition

CREATE TABLE `svc_mbr_cnts_rels` (
  `mbr_cnts_sno` bigint NOT NULL AUTO_INCREMENT COMMENT '회원콘텐츠일련번호',
  `mbr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '회원ID',
  `cnts_id` varchar(12) COLLATE utf8_bin NOT NULL COMMENT '콘텐츠ID',
  `seqn_no` int NOT NULL COMMENT '회차번호',
  `api_ver` float DEFAULT NULL COMMENT 'API버전',
  `prgs_stus_cd` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '진행상태코드',
  `dwld_dtm` datetime DEFAULT NULL COMMENT '다운로드일시',
  `last_vwr_exe_dtm` datetime DEFAULT NULL COMMENT '최종뷰어실행일시',
  `vwr_exe_tms` int DEFAULT NULL COMMENT '뷰어실행횟수',
  `prgs_rate` float DEFAULT NULL COMMENT '진행율',
  `cnts_vwr_crd_val` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '콘텐츠뷰어좌표값',
  `cnts_vwr_file` varchar(1000) COLLATE utf8_bin DEFAULT NULL COMMENT '콘텐츠뷰어파일',
  `cnts_vwr_page` varchar(1000) COLLATE utf8_bin DEFAULT NULL COMMENT '콘텐츠뷰어페이지',
  `vwr_itlok_dtm` datetime DEFAULT NULL COMMENT '뷰어연동일시',
  `cprdg_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '완독여부',
  `cprdg_tms` int DEFAULT NULL COMMENT '완독횟수',
  `cprdg_dtm` datetime DEFAULT NULL COMMENT '완독일시',
  `del_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '삭제여부',
  `hdng_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '숨김여부',
  `sync_sno` int DEFAULT NULL COMMENT '동기화일련번호',
  `last_rdg_dtm` datetime DEFAULT NULL COMMENT '마지막읽은일시',
  `lend_end_dtm` datetime DEFAULT NULL COMMENT '대여종료일시',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`mbr_cnts_sno`),
  KEY `mbr_id` (`mbr_id`),
  KEY `cnts_id` (`cnts_id`),
  CONSTRAINT `svc_mbr_cnts_rels_ibfk_1` FOREIGN KEY (`mbr_id`) REFERENCES `mem_mbr_basic` (`mbr_id`),
  CONSTRAINT `svc_mbr_cnts_rels_ibfk_2` FOREIGN KEY (`cnts_id`) REFERENCES `cms_cnts_mng` (`cnts_id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='회원콘텐츠관계';


-- dmaru.svc_memo definition

CREATE TABLE `svc_memo` (
  `memo_sno` bigint NOT NULL AUTO_INCREMENT COMMENT '메모일련번호',
  `mbr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '회원ID',
  `cnts_id` varchar(12) COLLATE utf8_bin NOT NULL COMMENT '콘텐츠ID',
  `seqn_no` int DEFAULT NULL COMMENT '회차번호',
  `sync_sno` int DEFAULT NULL COMMENT '동기화일련번호',
  `api_ver` float DEFAULT NULL COMMENT 'API버전',
  `file_no` int DEFAULT NULL COMMENT '파일번호',
  `file_thn` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '파일썸네일',
  `cntnt_no` int DEFAULT NULL COMMENT '목차번호',
  `cntnt_nm` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '목차명',
  `page_no` int DEFAULT NULL COMMENT '페이지번호',
  `page_pcrt` float DEFAULT NULL COMMENT '페이지백분율',
  `vwr_itlok_dtm` datetime DEFAULT NULL COMMENT '뷰어연동일시',
  `color` varchar(7) COLLATE utf8_bin DEFAULT NULL COMMENT '색상',
  `bgn_crd` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '시작좌표',
  `end_crd` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '종료좌표',
  `sel_text` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '선택텍스트',
  `memo_cn` varchar(1000) COLLATE utf8_bin DEFAULT NULL COMMENT '메모내용',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`memo_sno`),
  KEY `mbr_id` (`mbr_id`),
  KEY `cnts_id` (`cnts_id`),
  CONSTRAINT `svc_memo_ibfk_1` FOREIGN KEY (`mbr_id`) REFERENCES `mem_mbr_basic` (`mbr_id`),
  CONSTRAINT `svc_memo_ibfk_2` FOREIGN KEY (`cnts_id`) REFERENCES `cms_cnts_mng` (`cnts_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='메모';


-- dmaru.svc_my_bshlf definition

CREATE TABLE `svc_my_bshlf` (
  `bshlf_sno` bigint NOT NULL AUTO_INCREMENT COMMENT '책장일련번호',
  `mbr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '회원ID',
  `bshlf_nm` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '책장명',
  `bshlf_cre_dtm` datetime DEFAULT NULL COMMENT '책장생성일시',
  `opub_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '공개여부',
  `opub_dtm` datetime DEFAULT NULL COMMENT '공개일시',
  `nopn_dtm` datetime DEFAULT NULL COMMENT '비공개일시',
  `del_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '삭제여부',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`bshlf_sno`),
  KEY `mbr_id` (`mbr_id`),
  CONSTRAINT `svc_my_bshlf_ibfk_1` FOREIGN KEY (`mbr_id`) REFERENCES `mem_mbr_basic` (`mbr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='나의책장';


-- dmaru.svc_quiz_patc_detl definition

CREATE TABLE `svc_quiz_patc_detl` (
  `quiz_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '퀴즈ID',
  `mbr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '회원ID',
  `patc_dtm` datetime DEFAULT NULL COMMENT '참여일시',
  `quiz_ans_wrt` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '퀴즈답안작성',
  `quiz_grdg` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '퀴즈채점',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`quiz_id`,`mbr_id`),
  KEY `mbr_id` (`mbr_id`),
  CONSTRAINT `svc_quiz_patc_detl_ibfk_1` FOREIGN KEY (`quiz_id`) REFERENCES `adm_quiz_mng` (`quiz_id`),
  CONSTRAINT `svc_quiz_patc_detl_ibfk_2` FOREIGN KEY (`mbr_id`) REFERENCES `mem_mbr_basic` (`mbr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='퀴즈참여내역';


-- dmaru.svc_wsh_list definition

CREATE TABLE `svc_wsh_list` (
  `mbr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '회원ID',
  `cnts_id` varchar(12) COLLATE utf8_bin NOT NULL COMMENT '콘텐츠ID',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`mbr_id`,`cnts_id`),
  KEY `cnts_id` (`cnts_id`),
  CONSTRAINT `svc_wsh_list_ibfk_1` FOREIGN KEY (`mbr_id`) REFERENCES `mem_mbr_basic` (`mbr_id`),
  CONSTRAINT `svc_wsh_list_ibfk_2` FOREIGN KEY (`cnts_id`) REFERENCES `cms_cnts_mng` (`cnts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='찜리스트';


-- dmaru.adm_dspy_cnts_rels definition

CREATE TABLE `adm_dspy_cnts_rels` (
  `dspy_id` varchar(18) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '전시ID',
  `cnts_id` varchar(12) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '콘텐츠ID',
  `prity` int DEFAULT NULL COMMENT '우선순위',
  `dspy_reg_dtm` datetime DEFAULT NULL COMMENT '전시등록일시',
  `fst_regr_id` varchar(9) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`dspy_id`,`cnts_id`),
  KEY `cnts_id` (`cnts_id`),
  CONSTRAINT `adm_dspy_cnts_rels_ibfk_1` FOREIGN KEY (`dspy_id`) REFERENCES `adm_dspy_mng` (`dspy_id`),
  CONSTRAINT `adm_dspy_cnts_rels_ibfk_2` FOREIGN KEY (`cnts_id`) REFERENCES `cms_cnts_mng` (`cnts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='전시콘텐츠관계';


-- dmaru.adm_menu_auth definition

CREATE TABLE `adm_menu_auth` (
  `menu_id` varchar(4) COLLATE utf8_bin NOT NULL COMMENT '메뉴ID',
  `operr_grp_id` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '운영자그룹ID',
  `cre_auth_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '생성권한여부',
  `sel_auth_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '선택권한여부',
  `upd_auth_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '수정권한여부',
  `del_auth_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '삭제권한여부',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`menu_id`,`operr_grp_id`),
  KEY `adm_menu_auth_FK_1` (`operr_grp_id`),
  CONSTRAINT `adm_menu_auth_FK` FOREIGN KEY (`menu_id`) REFERENCES `adm_menu_mng` (`menu_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `adm_menu_auth_FK_1` FOREIGN KEY (`operr_grp_id`) REFERENCES `adm_operr_grp` (`operr_grp_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='메뉴권한';


-- dmaru.adm_quiz_cnts_rels definition

CREATE TABLE `adm_quiz_cnts_rels` (
  `quiz_cnts_sno` bigint NOT NULL AUTO_INCREMENT COMMENT '퀴즈콘텐츠일련번호',
  `quiz_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '퀴즈ID',
  `cnts_id` varchar(12) COLLATE utf8_bin NOT NULL COMMENT '콘텐츠ID',
  `cnsr_rate` float DEFAULT NULL COMMENT '정답율',
  `patc_pson` int DEFAULT NULL COMMENT '참여인원',
  `use_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '사용여부',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`quiz_cnts_sno`),
  KEY `quiz_id` (`quiz_id`),
  KEY `cnts_id` (`cnts_id`),
  CONSTRAINT `adm_quiz_cnts_rels_ibfk_1` FOREIGN KEY (`quiz_id`) REFERENCES `adm_quiz_mng` (`quiz_id`),
  CONSTRAINT `adm_quiz_cnts_rels_ibfk_2` FOREIGN KEY (`cnts_id`) REFERENCES `cms_cnts_mng` (`cnts_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='퀴즈콘텐츠관계';


-- dmaru.cms_cnts_achv_wrd definition

CREATE TABLE `cms_cnts_achv_wrd` (
  `achv_wrd_sno` bigint NOT NULL AUTO_INCREMENT COMMENT '업적단어일련번호',
  `cnts_id` varchar(12) COLLATE utf8_bin NOT NULL COMMENT '콘텐츠ID',
  `achv_wrd_nm` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '업적단어명',
  `use_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '사용여부',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`achv_wrd_sno`),
  KEY `cnts_id` (`cnts_id`),
  CONSTRAINT `cms_cnts_achv_wrd_ibfk_1` FOREIGN KEY (`cnts_id`) REFERENCES `cms_cnts_mng` (`cnts_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='콘텐츠업적단어';


-- dmaru.cms_cnts_atch_file definition

CREATE TABLE `cms_cnts_atch_file` (
  `atch_file_sno` bigint NOT NULL AUTO_INCREMENT COMMENT '첨부파일일련번호',
  `cnts_id` varchar(12) COLLATE utf8_bin NOT NULL COMMENT '콘텐츠ID',
  `seqn_no` int DEFAULT NULL COMMENT '회차번호',
  `atch_file_div_cd` varchar(4) COLLATE utf8_bin NOT NULL COMMENT '첨부파일구분코드',
  `atch_file_kind_cd` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '첨부파일종류코드',
  `atch_file_orgnl_nm` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '첨부파일원본명',
  `atch_file_nm` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '첨부파일명',
  `atch_file_path` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '첨부파일경로',
  `atch_file_extns` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '첨부파일확장자',
  `atch_file_size` int DEFAULT NULL COMMENT '첨부파일파일크기',
  `del_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '삭제여부',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`atch_file_sno`),
  KEY `cnts_id` (`cnts_id`),
  CONSTRAINT `cms_cnts_atch_file_ibfk_1` FOREIGN KEY (`cnts_id`) REFERENCES `cms_cnts_mng` (`cnts_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5885 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='콘텐츠첨부파일';


-- dmaru.cms_cnts_ecal definition

CREATE TABLE `cms_cnts_ecal` (
  `cnts_id` varchar(12) COLLATE utf8_bin NOT NULL COMMENT '콘텐츠ID',
  `ecal_type_cd` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '정산유형코드',
  `ecal_mthd_cd` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '정산방식코드',
  `n1_copy_dwld_cnt` int DEFAULT NULL COMMENT '1COPY다운로드수',
  `lend_term` int DEFAULT NULL COMMENT '대여기간',
  `ecal_rate` float DEFAULT NULL COMMENT '정산율',
  `dwld_excs_infom_cnt` int DEFAULT NULL COMMENT '다운로드초과알림수',
  `n1_dwld_untpc` int DEFAULT NULL COMMENT '1다운로드단가',
  `sle_cntr_bgn_dtm` datetime DEFAULT NULL COMMENT '판매계약시작일시',
  `sle_cntr_end_dtm` datetime DEFAULT NULL COMMENT '판매계약종료일시',
  `sle_cntr_term` int DEFAULT NULL COMMENT '판매계약기간',
  `suply_untpc` int DEFAULT NULL COMMENT '공급단가',
  `min_grnt` int DEFAULT NULL COMMENT '최소개런티',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`cnts_id`),
  CONSTRAINT `cms_cnts_ecal_ibfk_1` FOREIGN KEY (`cnts_id`) REFERENCES `cms_cnts_mng` (`cnts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='콘텐츠정산';


-- dmaru.cms_cnts_icon definition

CREATE TABLE `cms_cnts_icon` (
  `cnts_id` varchar(12) COLLATE utf8_bin NOT NULL COMMENT '콘텐츠ID',
  `icon_no` int NOT NULL COMMENT '아이콘번호',
  `icon_kind_cd` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '아이콘종류코드',
  `use_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '사용여부',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`cnts_id`,`icon_no`),
  CONSTRAINT `cms_cnts_icon_ibfk_1` FOREIGN KEY (`cnts_id`) REFERENCES `cms_cnts_mng` (`cnts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='콘텐츠아이콘';


-- dmaru.cms_cnts_kwrd_rels definition

CREATE TABLE `cms_cnts_kwrd_rels` (
  `cnts_kwrd_sno` bigint NOT NULL AUTO_INCREMENT COMMENT '콘텐츠키워드일련번호',
  `cnts_id` varchar(12) COLLATE utf8_bin NOT NULL COMMENT '콘텐츠ID',
  `kwrd_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '키워드ID',
  `use_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '사용여부',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`cnts_kwrd_sno`),
  KEY `cnts_id` (`cnts_id`),
  KEY `kwrd_id` (`kwrd_id`),
  CONSTRAINT `cms_cnts_kwrd_rels_ibfk_1` FOREIGN KEY (`cnts_id`) REFERENCES `cms_cnts_mng` (`cnts_id`),
  CONSTRAINT `cms_cnts_kwrd_rels_ibfk_2` FOREIGN KEY (`kwrd_id`) REFERENCES `cms_kwrd_mng` (`kwrd_id`)
) ENGINE=InnoDB AUTO_INCREMENT=295 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='콘텐츠키워드관계';


-- dmaru.cms_srs_atch_file definition

CREATE TABLE `cms_srs_atch_file` (
  `atch_file_sno` bigint NOT NULL AUTO_INCREMENT COMMENT '첨부파일일련번호',
  `srs_id` varchar(12) COLLATE utf8_bin NOT NULL COMMENT '시리즈ID',
  `atch_file_div_cd` varchar(4) COLLATE utf8_bin NOT NULL COMMENT '첨부파일구분코드',
  `atch_file_kind_cd` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '첨부파일종류코드',
  `atch_file_orgnl_nm` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '첨부파일원본명',
  `atch_file_nm` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '첨부파일명',
  `atch_file_path` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '첨부파일경로',
  `atch_file_extns` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '첨부파일확장자',
  `atch_file_size` int DEFAULT NULL COMMENT '첨부파일파일크기',
  `del_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '삭제여부',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`atch_file_sno`),
  KEY `srs_id` (`srs_id`),
  CONSTRAINT `cms_srs_atch_file_ibfk_1` FOREIGN KEY (`srs_id`) REFERENCES `cms_srs_mng` (`srs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='시리즈첨부파일';


-- dmaru.cms_srs_cnts_rels definition

CREATE TABLE `cms_srs_cnts_rels` (
  `srs_cnts_sno` bigint NOT NULL AUTO_INCREMENT COMMENT '시리즈콘텐츠일련번호',
  `srs_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '시리즈ID',
  `cnts_id` varchar(12) COLLATE utf8_bin NOT NULL COMMENT '콘텐츠ID',
  `cnts_odr` int DEFAULT NULL COMMENT '콘텐츠순서',
  `use_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '사용여부',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`srs_cnts_sno`),
  KEY `srs_id` (`srs_id`),
  KEY `cnts_id` (`cnts_id`),
  CONSTRAINT `cms_srs_cnts_rels_ibfk_1` FOREIGN KEY (`srs_id`) REFERENCES `cms_srs_mng` (`srs_id`),
  CONSTRAINT `cms_srs_cnts_rels_ibfk_2` FOREIGN KEY (`cnts_id`) REFERENCES `cms_cnts_mng` (`cnts_id`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='시리즈콘텐츠관계';


-- dmaru.com_send_mng definition

CREATE TABLE `com_send_mng` (
  `send_sno` bigint NOT NULL AUTO_INCREMENT COMMENT '발송일련번호',
  `operr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '운영자ID',
  `tmplt_sno` bigint NOT NULL COMMENT '템플릿일련번호',
  `msg_grp_cd` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '메세지그룹코드',
  `send_div` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '발송구분',
  `send_cycl` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '발송주기',
  `send_dtm` datetime DEFAULT NULL COMMENT '발송일시',
  `msg_cn` varchar(1000) COLLATE utf8_bin DEFAULT NULL COMMENT '메시지내용',
  `mobl_app_os` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '모바일앱OS',
  `send_pnum` int DEFAULT NULL COMMENT '발송인원수',
  `send_rslt` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '발송결과',
  `send_type` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '발송유형',
  `rcv_trgt_grp` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '수신타겟그룹',
  `rcv_trgt_grp_sno` bigint DEFAULT NULL COMMENT '수신타겟그룹일련번호',
  `reg_dtm` datetime DEFAULT NULL COMMENT '등록일시',
  `use_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '사용여부',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`send_sno`),
  KEY `operr_id` (`operr_id`),
  KEY `tmplt_sno` (`tmplt_sno`),
  CONSTRAINT `com_send_mng_ibfk_1` FOREIGN KEY (`operr_id`) REFERENCES `adm_operr_mng` (`operr_id`),
  CONSTRAINT `com_send_mng_ibfk_2` FOREIGN KEY (`tmplt_sno`) REFERENCES `com_tmplt` (`tmplt_sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='발송관리';


-- dmaru.scm_atach_cntr definition

CREATE TABLE `scm_atach_cntr` (
  `atach_cntr_sno` bigint NOT NULL AUTO_INCREMENT COMMENT '부속계약일련번호',
  `cntr_id` varchar(12) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '계약ID',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`atach_cntr_sno`),
  KEY `cntr_id` (`cntr_id`),
  CONSTRAINT `scm_atach_cntr_ibfk_1` FOREIGN KEY (`cntr_id`) REFERENCES `scm_cntr_mng` (`cntr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='부속계약';


-- dmaru.set_claim_mng definition

CREATE TABLE `set_claim_mng` (
  `ord_id` varchar(14) COLLATE utf8_bin NOT NULL COMMENT '주문ID',
  `rtpn_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '요금제ID',
  `rfnd_bgn_dtm` datetime DEFAULT NULL COMMENT '환불시작일시',
  `rfnd_end_dtm` datetime DEFAULT NULL COMMENT '환불종료일시',
  `rfnd_rcpt_dtm` datetime DEFAULT NULL COMMENT '환불접수일시',
  `elap_days` int DEFAULT NULL COMMENT '경과일수',
  `ddct_amt` int DEFAULT NULL COMMENT '차감액',
  `dc_amt` int DEFAULT NULL COMMENT '할인액',
  `rfnd_amt` int DEFAULT NULL COMMENT '환불액',
  `rfnd_rsn` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '환불사유',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`ord_id`,`rtpn_id`),
  KEY `rtpn_id` (`rtpn_id`),
  CONSTRAINT `set_claim_mng_ibfk_1` FOREIGN KEY (`ord_id`) REFERENCES `set_ord_mng` (`ord_id`),
  CONSTRAINT `set_claim_mng_ibfk_2` FOREIGN KEY (`rtpn_id`) REFERENCES `set_rtpn_mng` (`rtpn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='클레임관리';


-- dmaru.set_cncl_rfnd_detl definition

CREATE TABLE `set_cncl_rfnd_detl` (
  `ord_id` varchar(14) COLLATE utf8_bin NOT NULL COMMENT '주문ID',
  `rtpn_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '요금제ID',
  `rfnd_dtm` datetime DEFAULT NULL COMMENT '환불일시',
  `vchr_id` varchar(9) COLLATE utf8_bin DEFAULT NULL COMMENT '요금제ID',
  `rfnd_amt` int DEFAULT NULL COMMENT '환불금액',
  `operr_id` varchar(9) COLLATE utf8_bin DEFAULT NULL COMMENT '운영자ID',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`ord_id`,`rtpn_id`),
  KEY `rtpn_id` (`rtpn_id`),
  CONSTRAINT `set_cncl_rfnd_detl_ibfk_1` FOREIGN KEY (`ord_id`) REFERENCES `set_ord_mng` (`ord_id`),
  CONSTRAINT `set_cncl_rfnd_detl_ibfk_2` FOREIGN KEY (`rtpn_id`) REFERENCES `set_rtpn_mng` (`rtpn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='취소환불내역';


-- dmaru.set_ecal_cmpl_detl definition

CREATE TABLE `set_ecal_cmpl_detl` (
  `ecal_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '정산ID',
  `cntr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '계약ID',
  `upd_amt` int DEFAULT NULL COMMENT '수정금액',
  `operr_id` varchar(9) COLLATE utf8_bin DEFAULT NULL COMMENT '운영자ID',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`ecal_id`,`cntr_id`),
  KEY `cntr_id` (`cntr_id`),
  CONSTRAINT `set_ecal_cmpl_detl_ibfk_1` FOREIGN KEY (`ecal_id`) REFERENCES `set_ecal_mng` (`ecal_id`),
  CONSTRAINT `set_ecal_cmpl_detl_ibfk_2` FOREIGN KEY (`cntr_id`) REFERENCES `scm_cntr_mng` (`cntr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='정산완료내역';


-- dmaru.svc_bshlf_cnts_rels definition

CREATE TABLE `svc_bshlf_cnts_rels` (
  `bshlf_cnts_sno` bigint NOT NULL AUTO_INCREMENT COMMENT '책장콘텐츠일련번호',
  `bshlf_sno` bigint NOT NULL COMMENT '책장일련번호',
  `cnts_id` varchar(12) COLLATE utf8_bin NOT NULL COMMENT '콘텐츠ID',
  `seqn_no` int NOT NULL COMMENT '회차번호',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`bshlf_cnts_sno`),
  KEY `bshlf_sno` (`bshlf_sno`),
  KEY `cnts_id` (`cnts_id`),
  CONSTRAINT `svc_bshlf_cnts_rels_ibfk_1` FOREIGN KEY (`bshlf_sno`) REFERENCES `svc_my_bshlf` (`bshlf_sno`),
  CONSTRAINT `svc_bshlf_cnts_rels_ibfk_2` FOREIGN KEY (`cnts_id`) REFERENCES `cms_cnts_mng` (`cnts_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='책장콘텐츠관계';


-- dmaru.svc_cnts_dwld_detl definition

CREATE TABLE `svc_cnts_dwld_detl` (
  `dwld_sno` bigint NOT NULL AUTO_INCREMENT COMMENT '다운로드일련번호',
  `mbr_cnts_sno` bigint NOT NULL COMMENT '회원콘텐츠일련번호',
  `terml_id` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '단말기ID',
  `dwld_dtm` datetime DEFAULT NULL COMMENT '다운로드일시',
  `lend_end_dtm` datetime DEFAULT NULL COMMENT '대여종료일시',
  `dwld_stus` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '다운로드상태',
  `del_yn` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '삭제여부',
  `fst_regr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최초등록자ID',
  `fst_reg_dtm` datetime NOT NULL COMMENT '최초등록일시',
  `fst_reg_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최초등록프로그램',
  `last_updr_id` varchar(9) COLLATE utf8_bin NOT NULL COMMENT '최종수정자ID',
  `last_upd_dtm` datetime NOT NULL COMMENT '최종수정일시',
  `last_upd_pgm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '최종수정프로그램',
  PRIMARY KEY (`dwld_sno`,`mbr_cnts_sno`),
  KEY `mbr_cnts_sno` (`mbr_cnts_sno`),
  CONSTRAINT `svc_cnts_dwld_detl_ibfk_1` FOREIGN KEY (`mbr_cnts_sno`) REFERENCES `svc_mbr_cnts_rels` (`mbr_cnts_sno`)
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='콘텐츠다운로드내역';