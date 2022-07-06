package com.market.client;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.JsonObject;

@RequestMapping(value = "/client")
@Controller
public class ClientController {
	@Autowired
	private ClientService service;
	@Autowired
	private HttpSession session;

	public ClientController() {
		System.out.println("ClientController 인스턴스 생성");
	}

	@RequestMapping(value = "/toClient_post") // QnA게시판 이동
	public String toClient_post(int curPage, Model model) throws Exception {
		System.out.println(curPage);
		List<ClientDTO> list = service.selectAll();// 전체항목
		// List<ClientDTO> list =service.selectAllP(curPage*10-9,curPage*10);//전체항목
		List<ClientDTO> buySell = service.search("buySell");
		List<ClientDTO> account = service.search("account");
		List<ClientDTO> items = service.search("items");
		List<ClientDTO> manner = service.search("manner");
		List<ClientDTO> sanction = service.search("sanction");
		List<ClientDTO> addition = service.search("addition");

		HashMap<String, Object> mapbuySell = service.getPageNaviC(curPage, "buySell");
		HashMap<String, Object> mapaccount = service.getPageNaviC(curPage, "account");
		HashMap<String, Object> mapitems = service.getPageNaviC(curPage, "items");
		HashMap<String, Object> mapmanner = service.getPageNaviC(curPage, "manner");
		HashMap<String, Object> mapsanction = service.getPageNaviC(curPage, "sanction");
		HashMap<String, Object> mapaddition = service.getPageNaviC(curPage, "addition");

		model.addAttribute("list", list);
		model.addAttribute("buySell", buySell);
		model.addAttribute("account", account);
		model.addAttribute("items", items);
		model.addAttribute("manner", manner);
		model.addAttribute("sanction", sanction);
		model.addAttribute("addition", addition);

		// model.addAttribute("list",maplist);
		model.addAttribute("mapbuySell", mapbuySell);
		model.addAttribute("mapaccount", mapaccount);
		model.addAttribute("mapitems", mapitems);
		model.addAttribute("mapmanner", mapmanner);
		model.addAttribute("mapsanction", mapsanction);
		model.addAttribute("mapaddition", mapaddition);

		return "client/client_post";
	}

	@RequestMapping(value = "/toWrite") // write페이지 요청
	public String toWrite() {
		System.out.println("toPostWrite");
		return "client/client_postWrite";
	}

	@RequestMapping(value = "/toManager") // write페이지 요청
	public String toManager() {
		System.out.println("toManager");
		return "/manager/manager";
	}

	@RequestMapping(value = "/write") // 게시글 작성 요청
	public String write(ClientDTO dto) throws Exception {
		System.out.println("ClientDTO : " + dto.toString());
		service.insert(dto);
		return "redirect:/client/toClient_post";
	}

	// 서머노트 이미지 콜백 함수
	@RequestMapping(value = "/uploadSummernoteImageFile", produces = "application/json; charset=utf8")
	@ResponseBody
	public String uploadSummernoteImageFile(@RequestParam("file") MultipartFile multipartFile,
			HttpServletRequest request) {
		JsonObject jsonObject = new JsonObject();

		/*
		 * String fileRoot = "C:\\summernote_image\\"; // 외부경로로 저장을 희망할때.
		 */

		// 내부경로로 저장
		String contextRoot = new HttpServletRequestWrapper(request).getRealPath("/");
		String fileRoot = contextRoot + "resources/fileupload/";

		String originalFileName = multipartFile.getOriginalFilename(); // 오리지날 파일명
		String extension = originalFileName.substring(originalFileName.lastIndexOf(".")); // 파일 확장자
		String savedFileName = UUID.randomUUID() + extension; // 저장될 파일 명

		File targetFile = new File(fileRoot + savedFileName);
		System.out.println(targetFile);
		try {
			InputStream fileStream = multipartFile.getInputStream();
			FileUtils.copyInputStreamToFile(fileStream, targetFile); // 파일 저장
			jsonObject.addProperty("url", "/resources/fileupload/" + savedFileName); // contextroot + resources + 저장할 내부
																						// 폴더명
			jsonObject.addProperty("responseCode", "success");

		} catch (IOException e) {
			FileUtils.deleteQuietly(targetFile); // 저장된 파일 삭제
			jsonObject.addProperty("responseCode", "error");
			e.printStackTrace();
		}
		String a = jsonObject.toString();
		return a;
	}
}
