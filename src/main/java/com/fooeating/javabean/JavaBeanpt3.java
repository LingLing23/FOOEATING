package com.fooeating.javabean;


public class JavaBeanpt3 {

	private String name;
	private String descriptions;
	private String price;
	private String file;
	public String getName() {
		return name;	
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescriptions() {
		return descriptions;
	}
	public void setDescriptions(String descriptions) {
		this.descriptions = descriptions;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getFile() {
		return file;
	}
	public void setFile(String file) {
		this.file = file;
	}
	@Override
	public String toString() {
		return "JavaBeanpt3 [name=" + name + ", descriptions=" + descriptions + ", price=" + price + ", file=" + file
				+ "]";
	}

	
 
}