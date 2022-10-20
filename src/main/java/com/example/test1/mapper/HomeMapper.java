package com.example.test1.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.test1.model.Home;
 
@Mapper
public interface HomeMapper {

//  ------------------------------------방내놓기--------------------------------------------
    
    //
    List<Home> getHomeList(HashMap<String, Object> map) throws Exception;

    // 삽입
    void insertHome(HashMap<String, Object> map);
    void insertHomeDetail(HashMap<String, Object> map);
    
}
