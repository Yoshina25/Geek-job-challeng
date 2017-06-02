/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kagoyume;

import java.io.Serializable;

/**
 *
 * @author yoshina
 */

    public class BuyData implements Serializable{
    private int UserID;
    private String itemCord;
    private int type;
    private int total;
    
    public BuyData(){
        this.UserID = 0;
        this.itemCord = "";
        this.type = 0;
        this.total = 0;
    }
    
    public void getUserID(int UserID){
        this.UserID = UserID;
    }
    //空文字(未入力)の場合空文字をセット
    public void setUserID(int UserID){
        if(UserID == 0){
            this.UserID = 0;
        }else{
            this.UserID = UserID;
        }
    }   

    public void getItemCord(String itemCord){
        this.itemCord = itemCord;
    }
    //空文字(未入力)の場合空文字をセット
    public void setItemCord(String itemCord){
        if(itemCord.trim().length()==0){
            this.itemCord = "";
        }else{
            this.itemCord = itemCord;
        }
    }

    public void getType(int type){
        this.type = type;
    }
    //空文字(未入力)の場合空文字をセット
    public void setType(int type){
        if(type == 0){
            this.type = 0;
        }else{
            this.type = type;
        }
    }
    
    public void getTotal(int total){
        this.total = total;
    }
    //空文字(未入力)の場合空文字をセット
    public void setTotal(int total){
        if(total == 0){
            this.total = 0;
        }else{
            this.total = total;
        }
    }
    
       public void UD2DTOMapping(BuyDataDTO bdb){
        bdb.setUserID(this.UserID);
        bdb.setItemCord(this.itemCord);
        bdb.setType(this.type);
        bdb.setTotal(this.total);
        }
}
