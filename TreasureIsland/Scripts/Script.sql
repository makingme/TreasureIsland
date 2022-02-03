CREATE DEFINER=`HNSOT01`@`%` FUNCTION `dmaru`.`fn_bbs_cd`(Name VARCHAR(2),idx int) RETURNS varchar(9) CHARSET utf8 COLLATE utf8_bin
BEGIN
	DECLARE return_val VARCHAR(9);
	
	IF Name = 'P' 
     THEN SET return_val = (SELECT CONCAT('P', LPAD(IFNULL(Max(CAST((SELECT RIGHT(bbs_div_cd, 8)) as UNSIGNED)) +1 , 1), idx, '0')) FROM bbs_noti_detl); 
    END IF;
   
    RETURN return_val;
END;

CREATE DEFINER=`HNSOT01`@`%` FUNCTION `dmaru`.`fn_biz_msg_seq`() RETURNS varchar(30) CHARSET utf8 COLLATE utf8_bin
BEGIN
	DECLARE return_val varchar(30);
	
	INSERT INTO seq_biz_msg values (null);
	
	SELECT CONCAT(DATE_FORMAT(NOW(),'%Y%m%d'), LPAD(LAST_INSERT_ID(), 10, '0')) INTO return_val ;

	
	RETURN return_val;
END;

CREATE DEFINER=`HNSOT01`@`%` FUNCTION `dmaru`.`fn_cate_test`(
	`cate_no` varchar(4)
) RETURNS varchar(8000) CHARSET utf8 COLLATE utf8_bin
BEGIN
	DECLARE returnVal  VARCHAR(8000);
	DECLARE lv1CateId  VARCHAR(8000);
	DECLARE lv2CateId  VARCHAR(8000);
	DECLARE lv3CateId  VARCHAR(8000);
	DECLARE lv4CateId  VARCHAR(8000);
	DECLARE cate_lv integer default 0;
	
	
	SET returnVal = "";
	SET lv1CateId = "";
	SET lv2CateId = "";
	SET lv3CateId = "";
	SET lv4CateId = "";

	IF ISNULL(cate_no) THEN
		SET returnVal = "";
	ELSE
		SET cate_lv = cate_no/1000;
	END IF;

	 IF cate_lv=1 THEN
	 	SET lv1CateId = CAST(cate_no AS char(4));
	 	SET lv2CateId = (SELECT GROUP_CONCAT(DISTINCT CAST(t2.cate_id AS char(4)) SEPARATOR ',')
							FROM cms_cate_mng t1
							LEFT JOIN cms_cate_mng t2 ON t1.cate_id = t2.upp_cate_id 
							LEFT JOIN cms_cate_mng t3 ON t2.cate_id = t3.upp_cate_id
							LEFT JOIN cms_cate_mng t4 ON t3.cate_id = t4.upp_cate_id
							WHERE t1.cate_id >= 1000 and t1.cate_id <2000
							AND t1.cate_id = cate_no
							AND NOT t2.cate_id IS NULL);
	 	SET lv3CateId = (SELECT GROUP_CONCAT(DISTINCT CAST(t3.cate_id AS char(4)) SEPARATOR ',')
							FROM cms_cate_mng t1
							LEFT JOIN cms_cate_mng t2 ON t1.cate_id = t2.upp_cate_id 
							LEFT JOIN cms_cate_mng t3 ON t2.cate_id = t3.upp_cate_id
							LEFT JOIN cms_cate_mng t4 ON t3.cate_id = t4.upp_cate_id
							WHERE t1.cate_id >= 1000 and t1.cate_id <2000
							AND t1.cate_id = cate_no
							AND NOT t3.cate_id IS NULL);
	 	SET lv4CateId = (SELECT GROUP_CONCAT(DISTINCT CAST(t4.cate_id AS char(4)) SEPARATOR ',')
							FROM cms_cate_mng t1
							LEFT JOIN cms_cate_mng t2 ON t1.cate_id = t2.upp_cate_id 
							LEFT JOIN cms_cate_mng t3 ON t2.cate_id = t3.upp_cate_id
							LEFT JOIN cms_cate_mng t4 ON t3.cate_id = t4.upp_cate_id
							WHERE t1.cate_id >= 1000 and t1.cate_id <2000
							AND t1.cate_id = cate_no
							AND NOT t4.cate_id IS NULL);
	 	SET returnVal = CONCAT(lv1CateId,IFNULL(CONCAT(',',lv2CateId),""),IFNULL(CONCAT(',',lv3CateId),""),IFNULL(CONCAT(',',lv4CateId),""));
	 ELSEIF cate_lv=2 THEN
	 	SET lv2CateId = CAST(cate_no AS char(4));
	 	SET lv3CateId = (SELECT GROUP_CONCAT(DISTINCT CAST(t3.cate_id AS char(4)) SEPARATOR ',')
							FROM cms_cate_mng t2
							LEFT JOIN cms_cate_mng t3 ON t2.cate_id = t3.upp_cate_id
							LEFT JOIN cms_cate_mng t4 ON t3.cate_id = t4.upp_cate_id
							WHERE t2.cate_id = cate_no
							AND NOT t3.cate_id IS NULL);
	 	SET lv4CateId = (SELECT GROUP_CONCAT(DISTINCT CAST(t4.cate_id AS char(4)) SEPARATOR ',')
							FROM cms_cate_mng t2
							LEFT JOIN cms_cate_mng t3 ON t2.cate_id = t3.upp_cate_id
							LEFT JOIN cms_cate_mng t4 ON t3.cate_id = t4.upp_cate_id
							WHERE t2.cate_id = cate_no
							AND NOT t4.cate_id IS NULL);
	 	SET returnVal = CONCAT(lv2CateId,IFNULL(CONCAT(',',lv3CateId),""),IFNULL(CONCAT(',',lv4CateId),""));
	 ELSEIF cate_lv=3 THEN
	 	SET lv3CateId = CAST(cate_no AS char(4));
	 	SET lv4CateId = (SELECT GROUP_CONCAT(DISTINCT CAST(t4.cate_id AS char(4)) SEPARATOR ',')
							FROM cms_cate_mng t3
							LEFT JOIN cms_cate_mng t4 ON t3.cate_id = t4.upp_cate_id
							WHERE t3.cate_id = cate_no
							AND NOT t4.cate_id IS NULL);
	 	SET returnVal = CONCAT(lv3CateId,IFNULL(CONCAT(',',lv4CateId),""));
	 ELSEIF cate_lv=4 THEN
	 	SET lv4CateId = CAST(cate_no AS char(4));
	 	SET returnVal = lv4CateId;
	 END IF;
	
	
	RETURN returnVal; 	
END;

CREATE DEFINER=`HNSOT01`@`%` FUNCTION `dmaru`.`fn_cnts_id`(p_cnts_div_cd varchar(2)) RETURNS varchar(12) CHARSET utf8 COLLATE utf8_bin
BEGIN
	DECLARE return_val varchar(12);
    SET return_val = NULL;
 	SELECT CONCAT(p_cnts_div_cd, LPAD(IFNULL(Max(CAST((SELECT RIGHT(cnts_id, 10)) as UNSIGNED)) + 1 , 1000), 10, '0'))
      INTO return_val
      FROM cms_cnts_mng;
    RETURN return_val;
END;

CREATE DEFINER=`HNSOT01`@`%` FUNCTION `dmaru`.`fn_code_nm`(p_cd_cls_id varchar(4), p_cd_id varchar(4)) RETURNS varchar(20) CHARSET utf8 COLLATE utf8_bin
BEGIN
	DECLARE return_val varchar(20);
	SET return_val = NULL;
	SELECT cd_nm
	  INTO return_val
	  FROM adm_cd_mng
	 WHERE cd_cls_id = p_cd_cls_id
	   AND cd_id = p_cd_id;
    RETURN return_val;
END;

;

CREATE DEFINER=`HNSOT01`@`%` FUNCTION `dmaru`.`fn_encrypt`(text varchar(20)) RETURNS varchar(64) CHARSET utf8 COLLATE utf8_bin
BEGIN
	DECLARE return_val varchar(64);
    SET return_val = NULL;
 	SELECT SHA2(UNHEX(SHA2(text,256)),256)
      INTO return_val;
    RETURN return_val;
END;

CREATE DEFINER=`HNSOT01`@`%` FUNCTION `dmaru`.`fn_generate_id`(prefix varchar(2), pad int) RETURNS varchar(30) CHARSET utf8 COLLATE utf8_bin
BEGIN
	DECLARE return_val varchar(30);
	
	# 운영자ID
	IF prefix = 'A'
		THEN SET return_val = (SELECT CONCAT(prefix, LPAD(IFNULL(CAST(SUBSTR(MAX(operr_id), LENGTH(prefix)+1) as UNSIGNED),0) +1, pad, '0')) AS max_id FROM adm_operr_mng);
	# 퀴즈ID
	ELSEIF prefix = 'QZ'
		THEN SET return_val = (SELECT CONCAT(prefix, LPAD(IFNULL(CAST(SUBSTR(MAX(quiz_id), LENGTH(prefix)+1) as UNSIGNED),0) +1, pad, '0')) AS max_id FROM adm_quiz_mng);
	# 이벤트ID
	ELSEIF prefix = 'EV'
		THEN SET return_val = (SELECT CONCAT(prefix, LPAD(IFNULL(CAST(SUBSTR(MAX(event_id), LENGTH(prefix)+1) as UNSIGNED),0) +1, pad, '0')) AS max_id FROM adm_event_mng);
	# 업체ID
	ELSEIF prefix = 'P'
		THEN SET return_val = (SELECT CONCAT(prefix, LPAD(IFNULL(CAST(SUBSTR(MAX(vend_id), LENGTH(prefix)+1) as UNSIGNED),0) +1, pad, '0')) AS max_id FROM scm_vend_basic);
	# 업체 계약관리ID
	ELSEIF prefix = 'CR'
		THEN SET return_val = (SELECT CONCAT(prefix, LPAD(IFNULL(CAST(SUBSTR(MAX(cntr_id), LENGTH(prefix)+1) as UNSIGNED),0) +1, pad, '0')) AS max_id FROM scm_cntr_mng);
	# 제휴사
	ELSEIF prefix = 'AF'
		THEN SET return_val = (SELECT CONCAT(prefix, LPAD(IFNULL(CAST(SUBSTR(MAX(afco_id), LENGTH(prefix)+1) as UNSIGNED),0) +1, pad, '0')) AS max_id FROM scm_afco_mng);
	# 콘텐츠 시리즈ID
	ELSEIF prefix = 'S' 
		THEN SET return_val = (SELECT CONCAT(prefix, LPAD(IFNULL(CAST(SUBSTR(MAX(srs_id), LENGTH(prefix)+1) as UNSIGNED),0) +1, pad, '0')) AS max_id FROM cms_srs_mng);
	# 제작사ID
	ELSEIF prefix = 'MK'
		THEN SET return_val = (SELECT CONCAT(prefix, LPAD(IFNULL(CAST(SUBSTR(MAX(mkr_id), LENGTH(prefix)+1) as UNSIGNED),0) +1, pad, '0')) AS max_id FROM cms_mkr_mng);
	# 브랜드ID
	ELSEIF prefix = 'BR'
		THEN SET return_val = (SELECT CONCAT(prefix, LPAD(IFNULL(CAST(SUBSTR(MAX(brnd_id), LENGTH(prefix)+1) as UNSIGNED),0) +1, pad, '0')) AS max_id FROM cms_brnd_mng);
	# 키워드
	ELSEIF prefix = 'KW'
		THEN SET return_val = (SELECT CONCAT(prefix, LPAD(IFNULL(CAST(SUBSTR(MAX(kwrd_id), LENGTH(prefix)+1) as UNSIGNED),0) +1, pad, '0')) AS max_id FROM cms_kwrd_mng);
	# 제휴사멤버
	ELSEIF prefix = 'AL'
		THEN SET return_val = (SELECT CONCAT(prefix, LPAD(IFNULL(CAST(SUBSTR(MAX(alli_mbr_id), LENGTH(prefix)+1) as UNSIGNED),0) +1, pad, '0')) AS max_id FROM mem_alli_mbr);
	# 요금제
	ELSEIF prefix = 'T'
		THEN SET return_val = (SELECT CONCAT(prefix, LPAD(IFNULL(CAST(SUBSTR(MAX(rtpn_id), LENGTH(prefix)+1) as UNSIGNED),0) +1, pad, '0')) AS max_id FROM set_rtpn_mng);
	# 회원ID
	ELSEIF prefix = 'C'
		THEN SET return_val = (SELECT CONCAT(prefix, LPAD(IFNULL(CAST(SUBSTR(MAX(mbr_id), LENGTH(prefix)+1) as UNSIGNED),0) +1, pad, '0')) AS max_id FROM mem_mbr_basic);
	# 가족회원ID
	ELSEIF prefix = 'F'
		THEN SET return_val = (SELECT CONCAT(prefix, LPAD(IFNULL(CAST(SUBSTR(MAX(fam_mbr_id), LENGTH(prefix)+1) as UNSIGNED),0) +1, pad, '0')) AS max_id FROM mem_fam_mbr);
	# 배너
	ELSEIF prefix = 'BN'
		THEN SET return_val = (SELECT CONCAT(prefix, LPAD(IFNULL(CAST(SUBSTR(MAX(bnr_id), LENGTH(prefix)+1) as UNSIGNED),0) +1, pad, '0')) AS max_id FROM adm_bnr_mng);
	# 메세지ID
	ELSEIF prefix = 'CM'
		THEN SET return_val = (SELECT CONCAT(prefix, DATE_FORMAT(NOW(),'%Y%m%d'), LPAD(CAST(SUBSTR(IFNULL(MAX(CMID), 1), LENGTH(prefix)+11) as UNSIGNED) +1, pad, '0')) AS max_id 
		                         FROM (SELECT MAX(CMID) AS CMID FROM BIZ_MSG WHERE CMID LIKE CONCAT(prefix, DATE_FORMAT(NOW(),'%Y%m%d'), '%')
		                               UNION
		                               SELECT MAX(CMID) AS CMID FROM BIZ_LOG WHERE CMID LIKE CONCAT(prefix, DATE_FORMAT(NOW(),'%Y%m%d'), '%')
		                              ) X
		                      );
	# 회원발송이력-발송연동식별
	ELSEIF prefix = 'MS'
		THEN SET return_val = (SELECT CONCAT(prefix, LPAD(IFNULL(CAST(SUBSTR(MAX(send_itlok_idnf_no), LENGTH(prefix)+1) as UNSIGNED),0) +1, pad, '0')) AS max_id FROM mem_mbr_send_hist);
	# 약관ID
	ELSEIF prefix = 'TS'
		THEN SET return_val = (SELECT CONCAT(prefix, LPAD(IFNULL(CAST(SUBSTR(MAX(terms_id), LENGTH(prefix)+1) as UNSIGNED),0) +1, pad, '0')) AS max_id FROM mem_terms_agre_hist);
	END IF;
	RETURN return_val;
END;

CREATE DEFINER=`HNSOT01`@`%` FUNCTION `dmaru`.`fn_inn_pblc_no`(p_cnts_id varchar(12), p_cnts_div_cd varchar(2)) RETURNS varchar(15) CHARSET utf8 COLLATE utf8_bin
BEGIN
	DECLARE return_val VARCHAR(15);
	SELECT concat(p_cnts_id, p_cnts_div_cd, right(p_cnts_id, 1))
	  INTO return_val;
	RETURN return_val;
END;

CREATE DEFINER=`HNSOT01`@`%` FUNCTION `dmaru`.`fn_nvl`(str text, str2 text) RETURNS text CHARSET utf8 COLLATE utf8_bin
BEGIN
	DECLARE temp text;
	SET temp = trim(str);
    RETURN IF(temp is null or temp = '', str2, str);
END;

CREATE DEFINER=`HNSOT01`@`%` FUNCTION `dmaru`.`fn_operr_nm`(operr_id_input varchar(9)) RETURNS varchar(20) CHARSET utf8 COLLATE utf8_bin
BEGIN
	DECLARE return_val varchar(20);

	SET return_val = (SELECT operr_nm FROM adm_operr_mng WHERE operr_id = operr_id_input);
	
	RETURN return_val;
END;

CREATE DEFINER=`HNSOT01`@`%` FUNCTION `dmaru`.`fn_root_cate`(
	`cate_no` integer
) RETURNS int
    READS SQL DATA
BEGIN
		DECLARE _cate_no integer default NULL;
		DECLARE _upp_cate_no integer default NULL;
		DECLARE CONTINUE HANDLER FOR NOT FOUND SET @cate_no = NULL;
		
		SET @lv := -1;
		SET @cate_no := cate_no;
		SET _cate_no = @cate_no;
		
		IF @cate_no IS NULL THEN
			RETURN NULL;
		END IF;

		LOOP
			SELECT cate_no, upp_cate_no, cate_lv INTO _cate_no, _upp_cate_no, @lv
			  FROM hur_cate
			 WHERE cate_no = _cate_no
			 LIMIT 1;
			
			IF @lv = 1 THEN
				RETURN @cate_no;
			END IF;
			
			SELECT cate_no, upp_cate_no, cate_lv INTO _cate_no, _upp_cate_no, @lv
			  FROM hur_cate
			 WHERE cate_no = _upp_cate_no
			 LIMIT 1;
			
			SET @cate_no := _cate_no;
			
		END LOOP;
	RETURN @cate_no;
END;

;

;

;

CREATE DEFINER=`HNSOT01`@`%` FUNCTION `dmaru`.`GET_FN_CATE_ID`(lv INT) RETURNS int
BEGIN
     DECLARE returnVal  INT;
         SET returnVal = 0;
 
     # 레벨에 따른 카테고리 번호
     IF 1= lv THEN
         SELECT IFNULL(MAX(cate_id)+1, 1000)
           INTO returnVal
           FROM cms_cate_mng
          WHERE cate_id > 999 
            AND cate_id < 2000;
     END IF;
	
     IF 2= lv THEN
         SELECT IFNULL(MAX(cate_id)+1, 2000)
           INTO returnVal
           FROM cms_cate_mng
          WHERE cate_id > 1999 
            AND cate_id < 3000;
     END IF;
	
     IF 3= lv THEN
         SELECT IFNULL(MAX(cate_id)+1, 3000)
           INTO returnVal
           FROM cms_cate_mng
          WHERE cate_id > 2999 
            AND cate_id < 4000;
     END IF;
		 

     IF 4= lv THEN
         SELECT IFNULL(MAX(cate_id)+1, 4000)
           INTO returnVal
           FROM cms_cate_mng
          WHERE cate_id > 3999
            AND cate_id < 5000;
     END IF;
      RETURN returnVal;
END;

CREATE DEFINER=`HNSOT01`@`%` FUNCTION `dmaru`.`GET_FN_CLS_CD_ID`() RETURNS int
BEGIN
     DECLARE returnVal  INT;
         SET returnVal = 0;
 
    
         SELECT IFNULL(MAX(cd_cls_id)+1, 1000)
           INTO returnVal
           FROM adm_cd_cls;
	
      RETURN returnVal;
END;

CREATE DEFINER=`HNSOT01`@`%` FUNCTION `dmaru`.`GET_FN_CNTR_SNO`() RETURNS int
BEGIN
	DECLARE returnVal  INT;
         SET returnVal = 0;
 	SELECT IFNULL(MAX(cntr_sno)+1, 000000000)
           INTO returnVal
           FROM scm_cntr_mng;
    RETURN returnVal;
END;

CREATE DEFINER=`HNSOT01`@`%` FUNCTION `dmaru`.`GET_FN_CNTS_ID`() RETURNS int
BEGIN
	DECLARE returnVal  INT;
         SET returnVal = 0;
 	SELECT IFNULL(MAX(cnts_id)+1, 1000)
           INTO returnVal
           FROM cms_cnts_basic;
    RETURN returnVal;
END;

CREATE DEFINER=`HNSOT01`@`%` FUNCTION `dmaru`.`GET_FN_CNTS_SNO`() RETURNS int
BEGIN
	DECLARE returnVal  INT;
         SET returnVal = 0;
 	SELECT IFNULL(MAX(cnts_dtl_sno)+1, 100000000)
           INTO returnVal
           FROM cms_cnts_dtl;
    RETURN returnVal;
END;

CREATE DEFINER=`HNSOT01`@`%` FUNCTION `dmaru`.`GET_FN_CRS_SNO`() RETURNS int
BEGIN
	DECLARE returnVal  INT;
         SET returnVal = 0;
 	SELECT IFNULL(MAX(hnr_crs_sno)+1, 1000)
           INTO returnVal
           FROM cms_hnr_crs;
    RETURN returnVal;
END;

CREATE DEFINER=`HNSOT01`@`%` FUNCTION `dmaru`.`GET_FN_KWRD_ID`() RETURNS int
BEGIN
	DECLARE returnVal  INT;
         SET returnVal = 0;
 	SELECT IFNULL(MAX(kwrd_id)+1, 1000)
           INTO returnVal
           FROM adm_kwrd_mng;
    RETURN returnVal;
END;

CREATE DEFINER=`HNSOT01`@`%` FUNCTION `dmaru`.`GET_FN_UNIT_SNO`() RETURNS int
BEGIN
	DECLARE returnVal  INT;
         SET returnVal = 0;
 	SELECT IFNULL(MAX(cnts_unit_sno)+1, 100000000)
           INTO returnVal
           FROM cms_cnts_unit;
    RETURN returnVal;
END;

CREATE DEFINER=`HNSOT01`@`%` PROCEDURE `dmaru`.`JOB_STT_CNTS_ACTS`(OUT RESULT INT)
BEGIN
	
	/* 만약 SQL에러라면 ROLLBACK 처리한다. */
	DECLARE exit handler for SQLEXCEPTION
	  BEGIN
		ROLLBACK;        
		SET RESULT = -1;  
	END;

	/* 트랜젝션 시작 */
	START TRANSACTION;
		/*com.jellypage.api.service.dao.SvcDAO plusWishCnt */
		INSERT INTO stt_cnts_real_cnt (cnts_id, seqn_no, now_dwld_cnt, now_wsh_cnt , now_revw_cnt , strt_ascr , fst_reg_dtm, last_upd_dtm)
		SELECT cnts_id, seqn_no, now_dw, now_wish, now_rvw, avg_strt, now(), NOW() 
		FROM (
			select d.cnts_id, 0 as seqn_no, count(1) as now_dw, IFNULL(s.now_wsh_cnt, 0) as now_wish, IFNULL(s.now_revw_cnt , 0) as now_rvw , IFNULL(s.strt_ascr,0) as avg_strt
			from (
					select CNTS_ID, mbr_id FROM svc_mbr_cnts_rels a WHERE IFNULL(del_yn,'N') ='N' GROUP BY CNTS_ID, mbr_id
				 ) d  
			left join stt_cnts_real_cnt s 
			on d.cnts_id = s.cnts_id and s.seqn_no =0
			group by d.cnts_id
			UNION ALL
			-- 현재 찜 카운트
			select w.cnts_id, 0 as seqn_no, IFNULL(s.now_dwld_cnt ,0) as now_dw, count(1) as now_wish, IFNULL(s.now_revw_cnt , 0) as now_rvw , IFNULL(s.strt_ascr,0) as avg_strt
			from svc_wsh_list w 
			left join stt_cnts_real_cnt s on w.cnts_id = s.cnts_id and s.seqn_no =0 
			group by w.cnts_id
			UNION ALL
			-- 리뷰 카운트, 별점평점
			-- 리뷰 카운트, 별점평점
			select sr.cnts_id, sr.seqn_no as seqn_no, IFNULL(s.now_dwld_cnt ,0) as now_dw, IFNULL(s.now_wsh_cnt, 0) as now_wish, count(1) as now_rvw , 
			CASE WHEN AVG(sr.strt) > 0 AND AVG(sr.strt) <= 0.5 THEN 0.5
			 WHEN AVG(sr.strt) > 0.5 AND AVG(sr.strt) <= 1 THEN 1
			 WHEN AVG(sr.strt) > 1 AND AVG(sr.strt) <= 1.5 THEN 1.5
			 WHEN AVG(sr.strt) > 1.5 AND AVG(sr.strt) <= 2 THEN 2
			 WHEN AVG(sr.strt) > 2 AND AVG(sr.strt) <= 2.5 THEN 2.5
			 WHEN AVG(sr.strt) > 2.5 AND AVG(sr.strt) <= 3 THEN 3
			 WHEN AVG(sr.strt) > 3 AND AVG(sr.strt) <= 3.5 THEN 3.5
			 WHEN AVG(sr.strt) > 3.5 AND AVG(sr.strt) <= 4 THEN 4
			 WHEN AVG(sr.strt) > 4 AND AVG(sr.strt) <= 4.5 THEN 4.5
			 WHEN AVG(sr.strt) > 4.5 AND AVG(sr.strt) <= 5 THEN 5
			ELSE 0 END as avg_strt
			from svc_revw sr 
			left join stt_cnts_real_cnt s on sr.cnts_id = s.cnts_id and sr.seqn_no =s.seqn_no 
			group by sr.cnts_id, sr.seqn_no 
		
		) STT 
		ON duplicate KEY UPDATE
			now_dwld_cnt = now_dw
			, now_wsh_cnt = now_wish
			, now_revw_cnt = now_rvw
			, strt_ascr = avg_strt
			,last_upd_dtm = now();
		
	COMMIT;
	SET RESULT = 0;
END;

;
