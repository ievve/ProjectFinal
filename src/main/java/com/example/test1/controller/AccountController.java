package com.example.test1.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.test1.dao.AccountService;
import com.example.test1.model.Account;
import com.google.gson.Gson;

@Controller
public class AccountController {

    private ModelAndView mv;

    @Autowired
    private AccountService accountService;

    @Autowired
    HttpSession session;

//	------------------------------------회원가입--------------------------------------------

    @RequestMapping("/signup.do")
    public String signup(HttpServletRequest request, HttpServletResponse response, Model model,
            @RequestParam HashMap<String, Object> map) throws Exception {
        request.setAttribute("map", map);
        return "login-signup";
    }

    @ResponseBody
    @RequestMapping(value = "/add_account.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
    public String signupBody(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
        HashMap<String, Object> resultMap = new HashMap<String, Object>();
        accountService.insertAccount(map);
        resultMap.put("message", "성공");
        return new Gson().toJson(resultMap);
    }

    // 중복확인
    @RequestMapping(value = "/selectId.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
    @ResponseBody
    public int selectId(@RequestParam HashMap<String, Object> map) {
        int cnt = accountService.selectId(map);
        return cnt;
    }

//  ------------------------------------로그인--------------------------------------------

    @RequestMapping("/login.do")
    public String login(HttpServletRequest request, HttpServletResponse response, Model model,
            @RequestParam HashMap<String, Object> map) throws Exception {
        request.setAttribute("map", map);
        return "login-login";
    }

    // 세션 정보
    @RequestMapping(value = "/login-login", 
            method = RequestMethod.POST, produces = "application/json; charset=UTF-8")
    public ModelAndView login(Model model, Account user) {

        mv = new ModelAndView();
        Account account = accountService.login(user);

        if (account != null) {
            session.setAttribute("userIdSession", account.getAId());
            session.setAttribute("userPwSession", account.getPasswd());
            session.setAttribute("userNameSession", account.getAName());
            session.setAttribute("userTellSession", account.getATel());
            session.setAttribute("userEmailSession", account.getAEmail());
            session.setAttribute("sellerNameSession", account.getSName());
            session.setAttribute("sellertellSession", account.getSTel());
            session.setAttribute("sellerNumSession", account.getSNum());
            session.setAttribute("sellerAddrSession", account.getSAdd());
            session.setAttribute("StatusSession", account.getStatus());

            mv.setViewName("redirect:/");
            return mv;
        } else {
            mv.setViewName("/login-login");
            return mv;

        }
    }

    // 아이디 및 비밀번호 체크
    @RequestMapping(value = "/selectLogin.dox", 
            method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
    @ResponseBody
    public int loginCheck(@RequestParam HashMap<String, Object> map) {
        int cnt = accountService.selectLogin(map);
        return cnt;
    }

    // 사업자번호체크
    @RequestMapping("/sellerCheck.do")
    public String sellerCheck(HttpServletRequest request, HttpServletResponse response, Model model,
            @RequestParam HashMap<String, Object> map) throws Exception {
        request.setAttribute("map", map);
        return "login-sellerCheck";
    }

    // 로그아웃
    @RequestMapping("/logout")
    public ModelAndView logout(Model model) {
        mv = new ModelAndView();
        session.invalidate();
        mv.setViewName("redirect:/");
        return mv;
    }

//  ------------------------------------마이페이지----------------------------------------

    // 사용자
    @RequestMapping("/mypage_user.do")
    public String mypageB() {
        return "mypage-user";
    }
    
    // 회원정보 수정 페이지 이동
    @RequestMapping("/mypage_userUpd.do")
    public String mypageUpdB() {
        return "mypage-userUpd";
    }

    // 중개사
    @RequestMapping("/mypage_seller.do")
    public String mypageF() {
        return "mypage-seller";
    }

    // 회원정보 수정 페이지 이동
    @RequestMapping("/mypage_sellerUpd.do")
    public String mypageUpdF() {
        return "mypage-sellerUpd";
    }

    // 회원정보 추출
    @RequestMapping(value = "/get_account.dox", 
            method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String selectAccountList(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
        HashMap<String, Object> resultMap = new HashMap<String, Object>();
        resultMap = accountService.selectAccountList(map);
        return new Gson().toJson(resultMap);
    }
    
    // 수정
    @RequestMapping(value = "/update_account.dox", 
            method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String updateAccount(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
        HashMap<String, Object> resultMap = new HashMap<String, Object>();
        accountService.updateAccount(map);
        resultMap.put("message", "성공");
        return new Gson().toJson(resultMap);
    }
    
    // 삭제
    @RequestMapping(value = "/delete_account.dox", 
            method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String deleteAccount(Model model, @RequestParam HashMap<String, Object> map ) throws Exception {
        HashMap<String, Object> resultMap = new HashMap<String, Object>();
        accountService.deleteAccount(map);
        resultMap.put("message", "성공");
        return new Gson().toJson(resultMap);
    }


}