package com.kh.DAYWORK.address.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.DAYWORK.address.exception.AddressException;
import com.kh.DAYWORK.address.model.service.AddressService;
import com.kh.DAYWORK.address.model.vo.Address;
import com.kh.DAYWORK.address.model.vo.PageInfo;
import com.kh.DAYWORK.common.Pagination;
import com.kh.DAYWORK.member.model.vo.Member;



@Controller
public class AddressController {

	@Autowired
	private AddressService aService = new AddressService();
	
	@RequestMapping("addressInsertForm.ad")
	public String AddressInsertForm() {
		return "addressForm";
	}
	
	@RequestMapping("insertAddress.ad")
	public String insertAddress(HttpSession session, @ModelAttribute Address a, @RequestParam("profil") MultipartFile uploadFile, HttpServletRequest request) {
		
		Member loginUser = (Member)session.getAttribute("loginUser");

		System.out.println(uploadFile.getOriginalFilename());

		if(uploadFile != null && !uploadFile.isEmpty()) {			
	
			String renameFileName = saveFile(uploadFile, request);
			
			if(renameFileName != null) {
				a.setOriginalFileName(uploadFile.getOriginalFilename());
				a.setRenameFileName(renameFileName);
				a.setmNo(loginUser.getmNo());
			}			
		}
		
		a.setmNo(loginUser.getmNo());
		System.out.println(a);
		
		int result = aService.insertAddress(a);
		
		if(result > 0) {
			return "redirect:address.ad";
		} else {
			throw new AddressException("게시판 등록에 실패하였습니다.");
		}
	}
	
	public String saveFile(MultipartFile file, HttpServletRequest request) {

		String root = request.getSession().getServletContext().getRealPath("resources");
		
		System.out.println(root); 

		String savePath = root + "/addUploadFiles"; 
		
		File folder = new File(savePath);
		if(!folder.exists()) {
			folder.mkdirs();
		}
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");
		String originFileName = file.getOriginalFilename();
		String renameFileName = sdf.format(new Date(System.currentTimeMillis())) + "." + originFileName.substring(originFileName.lastIndexOf(".") + 1);
												
		String renamePath = folder + "\\" + renameFileName;
		
		try {
			file.transferTo(new File(renamePath));
		} catch (Exception e) {
			System.out.println("파일 전송 에러");
			e.printStackTrace();
		} 
		
		return renameFileName;
	}
	
	@RequestMapping("detailAddress.ad")
	public String detailAddress(@RequestParam(value="aNo", required=false) Integer aNo, @RequestParam(value="mNo", required=false) Integer mNo, @RequestParam(value="code", required=false) Integer code, Model model) {
		
		if(code != null) {
			Member m = aService.detailMember(mNo);
			
			model.addAttribute("member", m);
			model.addAttribute("code", code);
		} else {
			Address a = aService.detailAddress(aNo);
			
			model.addAttribute("add", a);
		}
		
		return "addressDetail";
	}
	
	@RequestMapping("deleteAddress.ad")
	public String deleteAddress(@RequestParam("checkedList") String checkedList) throws AddressException{

		String[] list = checkedList.split(","); 
		
		int result = aService.deleteAddress(list);
		
		if(result != list.length) {
			throw new AddressException("연락처 삭제에 실패했습니다.");
		} else {
			return "redirect:address.ad";			
		}
	}
	
	@RequestMapping("updateViewAddress.ad")
	public String updateViewAddress(@RequestParam("aNo") Integer aNo, Model model) {
		Address a = aService.detailAddress(aNo);
		
		model.addAttribute("add", a);
		
		return "addressUpdate";
	}
	
	@RequestMapping("updateAddress.ad")
	public ModelAndView updateAddress(@ModelAttribute Address a, @RequestParam("reloadFile") MultipartFile reloadFile, HttpServletRequest request, ModelAndView mv) {
		

		if(reloadFile != null && !reloadFile.isEmpty()) { 

			if(a.getRenameFileName() != null) { 
				deleteFile(request, a);
			}
			
			String renameFileName = saveFile(reloadFile, request);
			if(renameFileName != null) {
				a.setOriginalFileName(reloadFile.getOriginalFilename());
				a.setRenameFileName(renameFileName);
			}
		}
		
		System.out.println(a);
		int result = aService.updateAddress(a);
		
		if(result > 0) {
			Address add = aService.detailAddress(a.getaNo());
			mv.addObject("add", add);

			mv.setViewName("addressDetail");
		} else {
			throw new AddressException("주소록 수정에 실패하였습니다.");
		}
		return mv;

	}
	
	// 파일 삭제
	public void deleteFile(HttpServletRequest request, Address a) {
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\adduploadFiles";
		
		File f = new File(savePath + "\\" + a.getRenameFileName());
		if(f.exists()) {
			f.delete();
		}
	}
	
	@RequestMapping("address.ad")
	public String searchAddress(HttpSession session, @RequestParam(value="page", required=false) Integer page, @RequestParam(value="search", required=false) String key, @RequestParam(value="code", required=false) Integer code, @RequestParam(value="dept", required=false) String deptKey, @RequestParam(value="job", required=false) String jobKey, Model model) {
		
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		System.out.println("code : " + code);
		
		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
				
		HashMap map = new HashMap();
		map.put("key", key);
		map.put("mNo", loginUser.getmNo());			
		
		System.out.println("사외의 키값 : " + key);

		int listCount = aService.getListCount(map);
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		ArrayList<Address> list = aService.selectAddress(pi, map);
		
		System.out.println("listCount : " + pi.getListCount());
		System.out.println("currentPage: " + pi.getCurrentPage());
		System.out.println("startPage : " + pi.getStartPage());
		System.out.println("endPage : " + pi.getEndPage());
		System.out.println("maxPage : " + pi.getMaxPage());
		
		if(code != null) { 
			map.put("deptKey", deptKey);
			map.put("jobKey", jobKey);

			listCount = aService.getListCount2(map);
			pi = Pagination.getPageInfo(currentPage, listCount); 
			list = aService.selectAddress2(pi, map);
			
			System.out.println("부서 : " + deptKey);
			System.out.println("직급 : " + jobKey);
			System.out.println("키 값 : " + key);
			System.out.println("사내 리스트 카운트 : " + listCount);
			System.out.println(list);
			
			model.addAttribute("list", list);
			model.addAttribute("pi", pi);
			model.addAttribute("code", code);
			model.addAttribute("key", key);
			model.addAttribute("dept", deptKey);
			model.addAttribute("job", jobKey);
			
			return "addressList";
		}
		
		if(list != null) {
			System.out.println(list);
			model.addAttribute("list", list);
			model.addAttribute("pi", pi);
			model.addAttribute("key", key);
			return "addressList";
		} else {
			throw new AddressException("주소록 조회에 실패하였습니다.");
		}
	}
	
	
	
}
