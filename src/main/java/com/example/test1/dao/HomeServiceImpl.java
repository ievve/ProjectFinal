package com.example.test1.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.test1.mapper.HomeMapper;
import com.example.test1.model.Home;

@Service
public class HomeServiceImpl implements HomeService {

    @Autowired // Mapper와 연결
    private HomeMapper homeMapper;

//  ------------------------------------회원가입--------------------------------------------
   
    //중개사 마이페이지 - 올린매물
    @Override
    public List<Home> getHomeList(HashMap<String, Object> map) throws Exception {
        return homeMapper.getHomeList(map);
    }
   
    // 유저 삽입
    @Override
    public void insertHome(HashMap<String, Object> map) {
        homeMapper.insertHome(map);
    }
    
    @Override
    public void insertHomeDetail(HashMap<String, Object> map) {
        homeMapper.insertHomeDetail(map);
    }

}
