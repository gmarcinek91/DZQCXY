package com.ecannetwork.tech.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ecannetwork.dto.tech.TechTestDb;
import com.ecannetwork.core.module.service.CommonService;

@Controller
@RequestMapping("/info")
public class InfoController {
	@Autowired
	private CommonService commonService;
	
	@SuppressWarnings("unchecked")
	@RequestMapping("index")
	public String GetNewsList(Model model){
		List<TechTestDb> list = commonService.list("", null);
	return "tech/info/index";
	}
}
