/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kagoyume;

import java.sql.Timestamp;

/**
 *商品情報管理テーブル(buy_t)用のDTO。
 * @author yoshina
 */
public class BuyDataDTO{
    private int buyID;
    private int UserID;
    private String itemCord;
    private Timestamp buyDate;
    private int type;
    private int total;
    
    public int getBuyId(){
        return buyID;
    }
    public void setBuyID(int buyID){
        this.buyID = buyID;
    }
    
    public int getUserID(){
        return UserID;
    }
    public void setUserID(int UserID){
        this.UserID = UserID;
    } 
    
    public String getItemCord(){
        return itemCord;
    }
    public void setItemCord(String itemCord){
        this.itemCord = itemCord;
    }
    
    public Timestamp getBuyDate() {
        return buyDate;
    }
    public void setBuyDate(Timestamp buyDate){
        this.buyDate = buyDate;
    }
    
    public int getType(){
        return type;
    }
    public void setType(int type){
        this.type = type;
    } 
    
    public int getTotal(){
        return total;
    }
    public void setTotal(int total){
        this.total = total;
    } 
}

