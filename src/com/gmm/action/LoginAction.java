package com.gmm.action;

import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
    private String name;
    private String password;
     public String execute()  
        {  
            if("zzdoreen".equals(this.name) && "zz8986123".equals(this.password))  
                return "success";  
            else  
                return "error";  
        }  
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }    

}
