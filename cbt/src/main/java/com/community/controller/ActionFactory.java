package com.community.controller;

import com.community.controller.action.Action;
import com.community.controller.action.CommentsWriteAction;
import com.community.controller.action.CommentsWriteFormAction;
import com.community.controller.action.CommunityListAction;
import com.community.controller.action.CommunityViewAction;
import com.community.controller.action.CommunityWriteAction;
import com.community.controller.action.CommunityWriteFormAction;

public class ActionFactory {

private ActionFactory() {}
	
	//싱글톤 객체 만들기
	private static ActionFactory instance = new ActionFactory();	
	
	public static ActionFactory getInstance() {
		return instance;
	}
	
	
	public Action getAction(String command) {
		
		Action action = null;
		System.out.println("ActionFactory : " + command);
		
		if(command.equals("community_list")) {
			action = new CommunityListAction();
		}else if(command.equals("community_write_form")) {
			action = new CommunityWriteFormAction();
		}else if(command.equals("community_write")) {
			action = new CommunityWriteAction();
		}else if(command.equals("community_view")) {
			action = new CommunityViewAction();
		}else if(command.equals("comments_write")) {
			action = new CommentsWriteAction();
		}else if(command.equals("comments_write_form")) {
			action = new CommentsWriteFormAction();
		}
		
		return action;
	}
	
}
