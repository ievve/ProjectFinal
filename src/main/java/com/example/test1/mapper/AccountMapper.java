package com.example.test1.mapper;

import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;
import com.example.test1.model.Account;
 
@Mapper
public interface AccountMapper {

//  ------------------------------------회원가입--------------------------------------------
    
    // 중복확인
    int selectId(HashMap<String, Object> map);
    
	// 유저 삽입
	void insertAccount(HashMap<String, Object> map);

// ------------------------------------회원가입---------------------------------------------

	// 아이디 및 비밀번호 확인
	int selectLogin(HashMap<String, Object> map);
	
	// 세션 정보
	Account login(Account account);
	
// ------------------------------------마이페이지--------------------------------------------
	
	// 회원정보 추출
	Account selectAccountList(HashMap<String, Object> map) throws Exception;

	// 수정
	void updateAccount(HashMap<String, Object> map);

	// 삭제
	void deleteAccount(HashMap<String, Object> map);

}
