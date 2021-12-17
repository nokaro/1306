package com.ospk.edu.model;

import java.util.Date;

public class ReplyVo {

	private int pno;
	private int rno;
	private String content;
	private String writer;
	private Date wdate;
	
	public ReplyVo(){
		super();
	}
	public ReplyVo(int pno, int rno, String content, String writer, Date wdate) {
		this.pno = pno;
		this.rno = rno;
		this.content = content;
		this.writer = writer;
		this.wdate = wdate;
	}

	public int getPno() {
		return pno;
	}

	public void setPno(int pno) {
		this.pno = pno;
	}

	public int getRno() {
		return rno;
	}

	public void setRno(int rno) {
		this.rno = rno;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public Date getWdate() {
		return wdate;
	}

	public void setWdate(Date wdate) {
		this.wdate = wdate;
	}

	@Override
	public String toString() {
		return "ReplyVo [pno=" + pno + ", rno=" + rno + ", content=" + content + ", writer=" + writer + ", wdate="
				+ wdate + "]";
	}

}
