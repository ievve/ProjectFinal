package com.example.test1.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.test1.dao.BoardService;
import com.example.test1.model.Board;
import com.google.gson.Gson;

@Controller
public class BoardController {

//	------------------------------------공지사항--------------------------------------------

	@Autowired
	private BoardService boardService;

	// 전체 list
	@RequestMapping("/notice.do")
	public String mainNotice(Model model) throws Exception {
		return "/notice-list";
	}

	@RequestMapping(value = "/list_notice.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String mainNoticeBody(Model model) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		List<Board> list = boardService.selectNoticeList();
		resultMap.put("list", list);
		return new Gson().toJson(resultMap);
	}

	// 삭제
	@ResponseBody
	@RequestMapping(value = "/del_notice.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	public String deleteNoticeBody(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		boardService.deleteBoard(map);
		resultMap.put("message", "성공");
		return new Gson().toJson(resultMap);
	}

	// 상세 list
	@RequestMapping("/view_notice.do")
	public String viewNotice(HttpServletRequest request, HttpServletResponse response, Model model,
			@RequestParam HashMap<String, Object> map) throws Exception {
		request.setAttribute("map", map);
		return "notice-view";
	}

	@ResponseBody
	@RequestMapping(value = "/view_notice.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	public String viewNoticeBody(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		resultMap = boardService.selectBoardList(map);
		return new Gson().toJson(resultMap);
	}

	// 삽입
	@RequestMapping("/add_notice.do")
	public String addNotice(HttpServletRequest request, HttpServletResponse response, Model model,
			@RequestParam HashMap<String, Object> map) throws Exception {
		request.setAttribute("map", map);
		return "notice-add";
	}

	@ResponseBody
	@RequestMapping(value = "/add_notice.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	public String addNotice(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		boardService.insertBoard(map);
		resultMap.put("message", "성공");
		return new Gson().toJson(resultMap);
	}

//	------------------------------------익명게시판------------------------------------------

	// 전체 list
	@RequestMapping("/anoymous.do")
	public String mainAnoymous(Model model) throws Exception {
		return "/anoymous-list";
	}

	// 리스트출력
	@RequestMapping(value = "/list_anoymous.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String mainAnoymousBody(Model model) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		List<Board> list = boardService.selectAnoymousList();
		resultMap.put("list", list);
		return new Gson().toJson(resultMap);
	}

	// 삭제
	@ResponseBody
	@RequestMapping(value = "/del_anoymous.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	public String deleteAnoymousBody(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		boardService.deleteBoard(map);
		resultMap.put("message", "성공");
		return new Gson().toJson(resultMap);
	}

	// 수정
	@RequestMapping("/update_anoymous.do")
	public String updateAnoymous(HttpServletRequest request, HttpServletResponse response, Model model,
			@RequestParam HashMap<String, Object> map) throws Exception {
		request.setAttribute("map", map);
		return "anoymous-upd";
	}

	@ResponseBody
	@RequestMapping(value = "/upd_anoymous.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	public String updateAnoymousBody(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		boardService.updateBoard(map);
		resultMap.put("message", "성공");
		return new Gson().toJson(resultMap);
	}

	// 상세 list
	@RequestMapping("/view_anoymous.do")
	public String viewAnoymous(HttpServletRequest request, HttpServletResponse response, Model model,
			@RequestParam HashMap<String, Object> map) throws Exception {
		request.setAttribute("map", map);
		return "anoymous-view";
	}

	@ResponseBody
	@RequestMapping(value = "/view_anoymous.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	public String viewAnoymousBody(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		resultMap = boardService.selectBoardList(map);
		return new Gson().toJson(resultMap);
	}

	// 삽입
	@RequestMapping("/add_anoymous.do")
	public String addAnoymous(HttpServletRequest request, HttpServletResponse response, Model model,
			@RequestParam HashMap<String, Object> map) throws Exception {
		request.setAttribute("map", map);
		return "anoymous-add";
	}

	@ResponseBody
	@RequestMapping(value = "/add_anoymous.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	public String addAnoymousBody(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		boardService.insertBoard(map);
		resultMap.put("message", "성공");
		return new Gson().toJson(resultMap);
	}

//	------------------------------------자유게시판------------------------------------------

	// 전체 list
	@RequestMapping("/board.do")
	public String mainBoard(Model model) throws Exception {
		return "/board-list";
	}

	@RequestMapping(value = "/list_board.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String mainBoardBody(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		resultMap = boardService.selectBoardList(map);
		return new Gson().toJson(resultMap);
	}

	// 삭제
	@ResponseBody
	@RequestMapping(value = "/del_board.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	public String deleteBoardBody(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		boardService.deleteBoard(map);
		resultMap.put("message", "성공");
		return new Gson().toJson(resultMap);
	}

	// 상세 list
	@RequestMapping("/view_board.do")
	public String viewBoard(HttpServletRequest request, HttpServletResponse response, Model model,
			@RequestParam HashMap<String, Object> map) throws Exception {
		request.setAttribute("map", map);
		return "board-view";
	}

	@ResponseBody
	@RequestMapping(value = "/view_board.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	public String viewBoardBody(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
		HashMap<String, Object> resultMap = boardService.selectBoard(map);
		resultMap.put("board", resultMap.get("board"));
		resultMap.put("commentList", resultMap.get("commentList"));
		resultMap.put("recommentList", resultMap.get("recommentList"));
		resultMap.put("message", "성공");
		return new Gson().toJson(resultMap);
	}

	// 삽입
	@RequestMapping("/add_board.do")
	public String addBoard(HttpServletRequest request, HttpServletResponse response, Model model,
			@RequestParam HashMap<String, Object> map) throws Exception {
		request.setAttribute("map", map);
		return "board-add";
	}

	@ResponseBody
	@RequestMapping(value = "/add_board.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	public String addBoardBody(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		boardService.insertBoard(map);
		resultMap.put("message", "성공");
		return new Gson().toJson(resultMap);
	}
	
	
	// 댓글 삽입
	@ResponseBody
	@RequestMapping(value = "/add_comment.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	public String addComment(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		boardService.insertComment(map);
		resultMap.put("message", "성공");
		return new Gson().toJson(resultMap);
	}
	

}