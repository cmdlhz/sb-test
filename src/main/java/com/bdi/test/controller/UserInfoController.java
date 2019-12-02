package com.bdi.test.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.bdi.test.model.UserInfo;
import com.bdi.test.service.UserInfoService;

@RestController
public class UserInfoController {
	@Autowired
	private UserInfoService uis;
	
	@RequestMapping(value="/userinfos", method=RequestMethod.GET)
	public List<UserInfo> getUserInfoList(){
		return uis.findAll();
	}
	
}
