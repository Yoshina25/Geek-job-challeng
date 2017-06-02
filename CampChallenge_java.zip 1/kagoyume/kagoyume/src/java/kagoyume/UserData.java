/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kagoyume;

import java.io.*;
import java.util.ArrayList;

/**
 *ページで入出力されるユーザー情報を持ちまわるJavaBeans。DTOと違い画面表示系への結びつきが強い
 * DTOへの変換メソッド、入力チェックリストを出力するメソッド
 *【巨大なソース修正2のUSERDataBeansのコメントを流用】
 * @author yoshina
 */
public class UserData implements Serializable{
    private String name;
    private String pass;
    private String mail;
    private String address; 
    private int total;
    
    public UserData(){
        this.name = "";
        this.pass = "";
        this.mail = "";
        this.address = "";
        this.total = 0;
    }
    
    public void getName(String name){
        this.name = name;
    }
    //空文字(未入力)の場合空文字をセット
    public void setName(String name) {
        if(name.trim().length()==0){
            this.name = "";
        }else{
            this.name = name;
        }
    }   

    public void getPass(String pass){
        this.pass = pass;
    }
    //空文字(未入力)の場合空文字をセット
    public void setPass(String pass) {
        if(pass.trim().length()==0){
            this.pass = "";
        }else{
            this.pass = pass;
        }
    }

    public void getMail(String mail){
        this.mail = mail;
    }
    //空文字(未入力)の場合空文字をセット
    public void setMail(String mail) {
        if(mail.trim().length()==0){
            this.mail = "";
        }else{
            this.mail = mail;
        }
    }

    public void getAddress(String address){
        this.address = address;
    }
    //空文字(未入力)の場合空文字をセット
    public void setAddress(String address) {
        if(address.trim().length()==0){
            this.address = "";
        }else{
            this.address = address;
        }
    }
    
    public void SetTotal(int total){
        this.total = total;
    }
    //空文字(未入力)の場合空文字をセット
    public void setTotal(Integer total) {
        if(total == 0){
            this.total = 0;
        }else{
            this.total = total;
        }
    }
    
       public void UD2DTOMapping(UserDataDTO udd){
        udd.setName(this.name);
        udd.setPass(this.pass);
        udd.setMail(this.mail);
        udd.setAddress(this.address);
        udd.setTotal(this.total);
    }
    
    //巨大なソース修正2の空欄チェックを流用。
    public ArrayList<String> chkproperties(){
        ArrayList<String> chkList = new ArrayList<String>();
        if(this.name.equals("")){
            chkList.add("name");
        }
        if(this.pass.equals("")){
            chkList.add("pass");
        }
        if(this.mail.equals("")){
            chkList.add("mail");
        }
        if(this.address.equals("")){
            chkList.add("address");
        }
        if(this.total == 0){
            chkList.add("total");
        }      
        return chkList;
    }
}
