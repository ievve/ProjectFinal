package com.example.test1.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.test1.mapper.AccountMapper;
import com.example.test1.mapper.HomeMapper;
import com.example.test1.model.Account;
import com.example.test1.model.Home;

@Service
public class AccountServiceImpl implements AccountService {

    @Autowired // Mapper와 연결
    private AccountMapper accountMapper;
    
    @Autowired // Mapper와 연결
    private HomeMapper homeMapper;
//  ------------------------------------회원가입--------------------------------------------

    // 중복확인
    @Override
    public int selectId(HashMap<String, Object> map) {
        int cnt = accountMapper.selectId(map);
        return cnt;
    }

    // 유저 삽입
    @Override
    public void insertAccount(HashMap<String, Object> map) {
        accountMapper.insertAccount(map);
    }

//  ------------------------------------로그인----------------------------------------------

    // 아이디 및 비밀번호 확인
    @Override
    public int selectLogin(HashMap<String, Object> map) {
        int cnt = accountMapper.selectLogin(map);
        return cnt;
    }
    
    // 세션 정보
    @Override
    public Account login(Account account) {
        return accountMapper.login(account);
    }

//  ------------------------------------마이페이지------------------------------------------
    
    // 회원정보 추출
    @Override
    public HashMap<String, Object> selectAccountList(HashMap<String, Object> map) throws Exception {
        HashMap<String, Object> resultMap = new HashMap<String, Object>(); 
        List<Home> home = homeMapper.getHomeList(map);
        Account account = accountMapper.selectAccountList(map);
        resultMap.put("home", home);
        resultMap.put("account", account);
        return resultMap;
    }
    
    // 수정
    @Override
    public void updateAccount(HashMap<String, Object> map) {
        accountMapper.updateAccount(map);
    }
    
    // 삭제
    @Override
    public void deleteAccount(HashMap<String, Object> map) {
        accountMapper.deleteAccount(map);
    }



}