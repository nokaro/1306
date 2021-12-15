package com.ospk.edu.model;

import java.util.Date;

public class BoardVo {
	private int pno;
	private String id = "";
	private String content = "";
	private String tag = "";
	private Date regiDate;
	private Date corDate;
	
	public BoardVo(){
		super();
	}
	public BoardVo(int pno, String id, String content, String tag, Date regiDate) {
		this.pno = pno;
		this.id = id;
		this.content = content;
		this.tag = tag;
		this.regiDate = regiDate;
	}
	public int getPno() {
		return pno;
	}
	public void setPno(int pno) {
		this.pno = pno;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
	public Date getRegiDate() {
		return regiDate;
	}
	public void setRegiDate(Date regiDate) {
		this.regiDate = regiDate;
	}
	public Date getCorDate() {
		return corDate;
	}
	public void setCorDate(Date corDate) {
		this.corDate = corDate;
	}
	
	@Override
	public String toString() {
		return "BoardVo [pno=" + pno + ", id=" + id + ", "
				+ "content=" + content + ", tag=" + tag + ", "
				+ "regiDate=" + regiDate + "]";
	} 
}
