/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kagoyume;

import java.util.ArrayList;

/**
 *top.jspへのリンクを定数化
 * top.jspへリンクを返却する処理
 * 入力情報に空欄があるかチェックする処理。
 * @author yoshina
 */
public class Helper {   
    
    public static Helper getInstance(){
        return new Helper();
    }    
    
    //top.jspへリンクを返却する処理。
    public String Top(){
        return "<a href=top.jsp>トップに戻る</a>";
    }
    
    //チェックに従いどの項目が、空欄なのか返却する処理。
    public String chkinput(ArrayList<String> chkList){
        String output = "";
        for(String val : chkList){
            if(val.equals("name")){
                output += "名前";
            }
            if(val.equals("pass")){
                 output +="パスワード";
            }
            if(val.equals("mail")){
                 output +="メールアドレス";
            }
            if(val.equals("address")){
                 output +="住所";
            }
            output +="が未記入です<br>";
        }
        return output;
    }
    
 /**
     * 発送方法は数字で取り扱っているので画面に表示するときは日本語に変換
     * @param i
     * @return 
     */
    public String exTypenum(int i){
        switch(i){
            case 1:
                return "郵送";
            case 2:
                return "コンビニ受け取り";
            case 3:
                return "その他";
        }
        return "";
    }
}

