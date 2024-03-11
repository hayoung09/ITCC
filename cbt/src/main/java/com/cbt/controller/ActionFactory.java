package com.cbt.controller;

import com.cbt.controller.action.Action;
import com.cbt.controller.action.CbtAnswerCheck;
import com.cbt.controller.action.CbtChoose;
import com.cbt.controller.action.CbtDeleteAction;
import com.cbt.controller.action.CbtListAction;
import com.cbt.controller.action.CbtListFormAction;
import com.cbt.controller.action.CbtOddAction;
import com.cbt.controller.action.CbtScoreGraph;
import com.cbt.controller.action.CbtTestAction;
import com.cbt.controller.action.CbtUpdateAction;
import com.cbt.controller.action.CbtUpdateFormAction;
import com.cbt.controller.action.CbtViewAction;
import com.cbt.controller.action.CbtWriteAction;
import com.cbt.controller.action.CbtWriteFormAction;
import com.cbt.controller.action.CbtWrongComment;
import com.cbt.controller.action.NextCbtAction;
import com.cbt.controller.action.OneCbtAction;

public class ActionFactory {
	private static ActionFactory instance = new ActionFactory();

	private ActionFactory() {
		super();
	}

	public static ActionFactory getInstance() {
		return instance;
	}

	public Action getAction(String command) {
		Action action = null;
		System.out.println("ActionFactory :" + command);

		if (command.equals("cbt_list")) {
			action = new CbtListAction();
		} else if (command.equals("cbt_choose")) {
			action = new CbtChoose();
		} else if (command.equals("cbt_write_form")) {
			action = new CbtWriteFormAction();
		} else if (command.equals("cbt_write")) {
			action = new CbtWriteAction();
		} else if (command.equals("cbt_list_form")) {
			action = new CbtListFormAction();
		} else if (command.equals("cbt_view")) {
			action = new CbtViewAction();
		} else if (command.equals("cbt_update_form")) {
			action = new CbtUpdateFormAction();
		}else if(command.equals("cbt_update")) {
			action = new CbtUpdateAction();
		}else if(command.equals("cbt_delete")) {
			action = new CbtDeleteAction();
		}else if(command.equals("cbt")) {
			action = new CbtOddAction();
		}else if(command.equals("test")) {
			action = new CbtTestAction();
		}else if(command.equals("onecbt")) {
			action = new OneCbtAction();
		}else if(command.equals("cbt_next")) {
			action = new NextCbtAction();
		}else if(command.equals("cbt_answer_check")) {
			action = new CbtAnswerCheck();
		}else if(command.equals("cbt_wrong_comment")) {
			action = new CbtWrongComment();
		}else if(command.equals("cbt_score_graph")) {
			action = new CbtScoreGraph();
		}
		return action;
	}
}
