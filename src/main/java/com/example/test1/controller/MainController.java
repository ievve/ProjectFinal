package com.example.test1.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
//	@Autowired
//	Member2Mapper mapper;
	
	@RequestMapping("/testpage")
	public String testt() {
		return "testpage";
	}
	
	// 메인페이지(분양)
	@RequestMapping("/index.do")
	public String main() {
		return "index";
	}
	
	// 지도
	@RequestMapping("/properties.do")
	public String properties() {
		return "properties";
	}
	

	
	// 지도 테스트 용
	@RequestMapping("/property1.do")
	public String property1() {
		return "property-single1";
	}
	@RequestMapping("/property2.do")
	public String property2() {
		return "property-single2";
	}
	@RequestMapping("/property3.do")
	public String property3() {
		return "property-single3";
	}
	@RequestMapping("/property4.do")
	public String property4() {
		return "property-single4";
	}
	

	
//	
//	@RequestMapping("/list")
//	public String list(@RequestParam HashMap<String, Object> map, Model model) {
//		model.addAttribute("list", mapper.selectAllMembers(map));
//		return "list";
//	}
//	
//	@PostMapping("/login")
//	public String login(@RequestParam HashMap<String, Object> map, Model model) {
//		
//		Long userId = Long.parseLong((String) map.get("userId"));
//		Member m = mapper.selectMemberById(userId);
//		if(m == null) {
//			model.addAttribute("message", "없는 아이디");
//			return "main";
//		} else {
//			if(!m.getPassword().equals((String) map.get("password"))) {
//				model.addAttribute("message", "비밀번호 틀림");
//				return "main";
//			}
//		}
//		return "redirect:list";
//	}
//	
//	@GetMapping("/join")
//	public String join() {
//
//		return "join";
//	}
//	
//	@PostMapping("/join")
//	public String insertMember(@RequestParam HashMap<String, Object> map, Model model) {
//		// 숫자로 아이디 가입 불가
//		int cnt = mapper.memberCnt(map);
//		if(cnt > 0) {
//			model.addAttribute("message", "중북된 이름이 있습니다.");
//			return "join";
//		} else {
//			mapper.insertMember(map);
//			return "main";
//		}
//	}
	
}