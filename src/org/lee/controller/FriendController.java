package org.lee.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import org.lee.model.Friend;
import org.lee.model.Manager;
import org.lee.model.Result;
import org.lee.service.FriendService;
import org.lee.util.Constant;
import org.lee.util.JsonUtil;
import org.lee.util.Pager;
import org.lee.util.StringUtils;

@Controller
public class FriendController{
	
	@Autowired
	private FriendService friendService;
	
	/**
	 * 跳转列表
	 */
	@RequestMapping(value = "/admin/friend/list")
	public String list(HttpSession session,ModelMap map) {
		Manager manager = (Manager)session.getAttribute(Constant.USERINFO);
		map.put("manager", manager);
		return "/admin/partner/partner_list";
	}
	
	/**
	 * 获取分页列表
	 */
	@RequestMapping(value = "/admin/friend/load")
	public String loadPartnerPageList(HttpSession session,ModelMap map,String param,Pager<Friend> pager) throws UnsupportedEncodingException {
		Manager manager = (Manager)session.getAttribute(Constant.USERINFO);
		map.put("manager", manager);
		
		HashMap<String, Object> paramMap = new HashMap<String,Object>();
		Friend friend = JsonUtil.fromJson(param, Friend.class);
		if(!StringUtils.isEmpty(friend.getSiteName())){
			friend.setSiteName(URLDecoder.decode(friend.getSiteName(), "utf-8"));
		}
		paramMap.put("friend", friend);
		paramMap.put("manager", manager);
		List<Friend> partnerList = friendService.getFriendList(paramMap, pager);
		map.put("partnerList", partnerList);
		map.put("pager", pager);
		return "/admin/partner/partner_pager_list";
	}
	
	/**
	 * 跳转新增页面
	 */
	@RequestMapping(value = "/admin/friend/addJump")
	public String addJump(ModelMap map) {
		return "/admin/partner/add_partner";
	}
	
	/**
	 * 新增
	 */
	@RequestMapping(value = "/admin/friend/add")
	public @ResponseBody Result addPartner(Friend friend) throws UnsupportedEncodingException {
		friend.setSiteName(URLDecoder.decode(friend.getSiteName(), "utf-8"));
		friend.setSiteDesc(URLDecoder.decode(friend.getSiteDesc(), "utf-8"));
		friend.setSiteUrl(URLDecoder.decode(friend.getSiteUrl(), "utf-8"));
		if(friendService.addFriend(friend) > 0){
			return new Result("success", Constant.DEAL_SUCCESS);
		}else{
			return new Result("fail", Constant.DEAL_FAIL);
		}
	}
	
	/**
	 * 跳转编辑页面
	 */
	@RequestMapping(value = "/admin/friend/editJump")
	public String editJump(ModelMap map,String id){
		Friend friend = friendService.getFriendById(id);
		map.put("friend", friend);
		return "/admin/partner/edit_partner";
	}
	
	/**
	 * 编辑
	 */
	@RequestMapping(value = "/admin/friend/edit")
	public @ResponseBody Result editPartner(Friend friend) throws UnsupportedEncodingException {
		friend.setSiteName(URLDecoder.decode(friend.getSiteName(), "utf-8"));
		friend.setSiteDesc(URLDecoder.decode(friend.getSiteDesc(), "utf-8"));
		friend.setSiteUrl(URLDecoder.decode(friend.getSiteUrl(), "utf-8"));
		if(friendService.editFriend(friend) > 0){
			return new Result("success", Constant.DEAL_SUCCESS);
		}else{
			return new Result("fail", Constant.DEAL_FAIL);
		}
	}
	
	/**
	 * 删除
	 */
	@RequestMapping(value = "/admin/friend/delete")
	public @ResponseBody Result deletePartner(String id) {
		if(friendService.deleteFriend(id) > 0){
			return new Result("success", Constant.DEAL_SUCCESS);
		}else{
			return new Result("fail", Constant.DEAL_FAIL);
		}
	}
	
}
