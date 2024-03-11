package com.cbt.dto;

import java.sql.Timestamp;

public class CbtQuVO {
	private String subject;
	private String qsubject;
	private int qcode;
	private String question;
	private String ans1;
	private String ans2;
	private String ans3;
	private String ans4;
	private String img;
	private String info;
	private int answer;
	private Timestamp testdate;
	
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getQsubject() {
		return qsubject;
	}
	public void setQsubject(String qsubject) {
		this.qsubject = qsubject;
	}
	public int getQcode() {
		return qcode;
	}
	public void setQcode(int qcode) {
		this.qcode = qcode;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getAns1() {
		return ans1;
	}
	public void setAns1(String ans1) {
		this.ans1 = ans1;
	}
	public String getAns2() {
		return ans2;
	}
	public void setAns2(String ans2) {
		this.ans2 = ans2;
	}
	public String getAns3() {
		return ans3;
	}
	public void setAns3(String ans3) {
		this.ans3 = ans3;
	}
	public String getAns4() {
		return ans4;
	}
	public void setAns4(String ans4) {
		this.ans4 = ans4;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public int getAnswer() {
		return answer;
	}
	public void setAnswer(int answer) {
		this.answer = answer;
	}
	public Timestamp getTestdate() {
		return testdate;
	}
	public void setTestdate(Timestamp testdate) {
		this.testdate = testdate;
	}
	
	@Override
	public String toString() {
		return "CbtQuVO [subject=" + subject + ", qsubject=" + qsubject + ", qcode=" + qcode + ", question=" + question
				+ ", ans1=" + ans1 + ", ans2=" + ans2 + ", ans3=" + ans3 + ", ans4=" + ans4 + ", img=" + img + ", info="
				+ info + ", answer=" + answer + ", testdate=" + testdate + "]";
	}
	
}
