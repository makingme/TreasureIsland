package com.happy.world.usage.apache.commons;

import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.message.BasicNameValuePair;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

/**
 * UMS 푸시>알림톡>SMS 회원발송 예제
 */
public class HttpTest {
    public static void main(String[] args){
        HttpClient client = HttpClientBuilder.create().build();
        HttpPost postMethod = new HttpPost("https://ums.morpheus.kr/api/umsSendPushApi.ums");

        try {
            // 헤더 셋팅
            postMethod.setHeader("Content-Type", "application/x-www-form-urlencoded");

            // 푸시 발송 파라미터 셋팅
            List<NameValuePair> urlParameters = new ArrayList<NameValuePair>();

            // 설명 : API 인증키. 프로젝트 생성 후 API키를 생성하신 정보를 입력해 주세요.
            urlParameters.add(new BasicNameValuePair("APIKEY", "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"));

      // 설명 : 클라우드 프로젝트아이디.
            urlParameters.add(new BasicNameValuePair("CLOUD_PROJECT_ID", "xxxxxxxxxxxxxxxxxxxxx"));

            //설명 : 푸시 메세지 정보 아래 예제 중 택 1
            urlParameters.add(new BasicNameValuePair("PUSH_MSG", "안녕하세요. 테스트 발송입니다."));  // 일반 스트링
            //urlParameters.add(new BasicNameValuePair("PUSH_MSG", "{\"title\":\"안녕하세요.유라클 공지사항입니다.\",\"body\":\"오늘 새벽에 정기점검 있습니다.\n 감사합니다.\"}"));

            //설명 : 발송대상자 타켓팅
            urlParameters.add(new BasicNameValuePair("TYPE", "MP"));  //MU :UMS회원아이디로 타겟팅, MP : 푸시서비스가입 아이디로 타겟팅
            urlParameters.add(new BasicNameValuePair("CUIDS", "choiyj@uracle.co.kr"));   // 한명 보낼 경우
            //urlParameters.add(new BasicNameValuePair("CUIDS", "[\"testuser1\",\"testuser2\",\"testuser3\"]"));  //여러명 보낼 경우

            //설명 : 서비스코드 정보
            urlParameters.add(new BasicNameValuePair("SERVICECODE", "ALL"));

            //설명 : 발송자 정보
            urlParameters.add(new BasicNameValuePair("SENDERID", "TEST_SYSTEM"));

            //설명 : 메세지 타입 (I: 정보성 메시지, A: 광고성 메시지 중  택일 ex) I)
            urlParameters.add(new BasicNameValuePair("MSG_TYPE", "I"));

            //설명 : 부가정보 EXT값에 빈값이 아닌 Value를 넣을경우 반드시 EXT_KIND값을 D롤 세팅
            //urlParameters.add(new BasicNameValuePair("EXT_KIND", "")); // 아래의 값의 빈값이 아닐 경우 D로 세팅
            //urlParameters.add(new BasicNameValuePair("EXT", "")); // 기본
            //urlParameters.add(new BasicNameValuePair("EXT", "")); // 이미지
            //urlParameters.add(new BasicNameValuePair("EXT", "")); // 이미지+링크
            //urlParameters.add(new BasicNameValuePair("EXT", "")); // 동영상


            //알림톡 대체발송을 할경우 아래값 셋팅
            urlParameters.add(new BasicNameValuePair("PLUS_ID", "")); //카카오톡 플러스친구 아이디
            urlParameters.add(new BasicNameValuePair("KKOALT_SVCID", ""));  //카카오알림톡 서비스아이디 ex)1910028xxxx
            urlParameters.add(new BasicNameValuePair("ALLIMTOLK_TEMPLCODE", "")); //카카오알림톡 등록 승인 처리된 메세지 템플릿코드
            /*
            카카오알림톡 템플릿 대체발송시 사용.
            - 알림톡 템플릿에 내용에 #{변수명}과 같은 치환변수가 템플릿 내용에 있을 경우 필수값.
            - 메시지 형태 JSON Object
            - ex)
            메시지 내용 : 안녕하세요. 결제일은 #{날짜} 입니다. #{금액}이 청구됩니다.
            넘겨야 될 파라미터값 : {“#{날짜}”:”2019-07-07”, “#{금액}”:”1,000”}
             */
            urlParameters.add(new BasicNameValuePair("REPLACE_VARS", ""));


            //SMS 대체발송을 할 경우 아래값 셋팅
            urlParameters.add(new BasicNameValuePair("SMS_TITLE", "")); //MMS문자일 경우 타이틀
            urlParameters.add(new BasicNameValuePair("SMS_MSG", "")); //보낼 문자내용. 90byte이상은 MMS로 발송됩니다
            urlParameters.add(new BasicNameValuePair("CALLBACK_NUM", "")); //회신번호. SMS대체발송일 경우 필수
            urlParameters.add(new BasicNameValuePair("MMS_IMGURL", ""));  //MMS일 경우 이미지 URL: http://xxxx.com/sample.jpg


            postMethod.setEntity(new UrlEncodedFormEntity(urlParameters, "UTF-8"));

            HttpResponse upmcResponse = client.execute(postMethod);
            if (upmcResponse.getStatusLine().getStatusCode() == 200) {
                // 성공 비즈니스 로직 처리
                BufferedReader rd = new BufferedReader(new InputStreamReader(upmcResponse.getEntity().getContent()));
                StringBuffer result = new StringBuffer();
                String line = "";
                while ((line = rd.readLine()) != null) {
                    result.append(line);
                }
                System.out.println(" 응답 스트링 : " + result.toString());
            }else{
            	System.out.println("HTTP 에러"+upmcResponse.getStatusLine().getStatusCode());
                BufferedReader rd = new BufferedReader(new InputStreamReader(upmcResponse.getEntity().getContent()));
                StringBuffer result = new StringBuffer();
                String line = "";
                while ((line = rd.readLine()) != null) {
                    result.append(line);
                }
                System.out.println(" 응답 스트링 : " + result.toString());
            }

        } catch (Exception e) {
            e.printStackTrace();
        }


    }
}
