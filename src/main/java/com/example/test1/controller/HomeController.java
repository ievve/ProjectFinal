package com.example.test1.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.test1.dao.HomeService;
import com.example.test1.model.Home;
import com.google.gson.Gson;

@Controller
public class HomeController {

    @Autowired
    private HomeService homeService;

    @Autowired
    HttpSession session;

//	------------------------------------방내놓기--------------------------------------------
    
    //
    @RequestMapping(value = "/get_home.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String getHomeList(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
        HashMap<String, Object> resultMap = new HashMap<String, Object>();
        List<Home> home = homeService.getHomeList(map);
        resultMap.put("home", home);
        return new Gson().toJson(resultMap);
    }
    
    // 삽입
    @RequestMapping("/services.do")
    public String index2() {
        return "services";
    }
    
    @ResponseBody
    @RequestMapping(value = "/add_home.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
    public String insertHomeBody(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
        HashMap<String, Object> resultMap = new HashMap<String, Object>();
        homeService.insertHome(map);
        resultMap.put("message", "성공");
        return new Gson().toJson(resultMap);
    }
    
    @ResponseBody
    @RequestMapping(value = "/add_home_detail.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
    public String insertHomeDetailBody(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
        HashMap<String, Object> resultMap = new HashMap<String, Object>();
        homeService.insertHomeDetail(map);
        resultMap.put("message", "성공");
        return new Gson().toJson(resultMap);
    }

}