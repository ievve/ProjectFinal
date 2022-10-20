package com.example.test1.dao;

import java.util.HashMap;
import java.util.List;

import com.example.test1.model.Home;

public interface HomeService {

    //
    public List<Home> getHomeList(HashMap<String, Object> map) throws Exception;
    
    // 삽입
    void insertHome(HashMap<String, Object> map);
    void insertHomeDetail(HashMap<String, Object> map);
	
}
