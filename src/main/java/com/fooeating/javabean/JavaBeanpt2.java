package com.fooeating.javabean;

import java.util.Arrays;

public class JavaBeanpt2 {

	private String descriptions;
//	private String file_out;
//	private String file_in;
//	private String file_menu;
  //  private String[] convenience;
	public String getDescriptions() {
		return descriptions;
	}
	public void setDescriptions(String descriptions) {
		this.descriptions = descriptions;
	}
//	public String getFile_out() {
//		return file_out;
//	}
//	public void setFile_out(String file_out) {
//		this.file_out = file_out;
//	}
//	public String getFile_in() {
//		return file_in;
//	}
//	public void setFile_in(String file_in) {
//		this.file_in = file_in;
//	}
//	public String getFile_menu() {
//		return file_menu;
//	}
//	public void setFile_menu(String file_menu) {
//		this.file_menu = file_menu;
//	}
	//public String[] getConvenience() {
//		return convenience;
//	}
//	public void setConvenience(String[] convenience) {
//		this.convenience = convenience;
//	}
	
	@Override
	public String toString() {
		return "JavaBeanpt2 [descriptions=" + descriptions +"]" ;
	}
// + ", file_out=" + file_out + ", file_in=" + file_in
//	+ ", file_menu=" + file_menu + ", convenience=" + Arrays.toString(convenience) + "]"
	
}