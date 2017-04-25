/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jums;

import java.io.*;


/**
 *
 * @author yoshina
 */
public class UserDataBeans implements Serializable{
    
    private String name;
    private int year;
    private int month;
    private int day;
    private String tell;
    private int type;
    private String comment;
    
    /*コンストラクタの生成*/
    public UserDataBeans(){
        this.name = "";
        this.year = 0;
        this.month = 0;
        this.day = 0;
        this.tell = "";
        this.type = 0;
        this.comment = "";
    }
    
    /*setterとgetterの生成*/
    public void SetName(String name){
        this.name = name;
    }   
    public String getName(){
        return this.name;
    }
    
    public void SetYear(Integer year){
        this.year = year;
    }
    public Integer setYear(){
        return this.year;
    }    
    
    public void SetMonth(Integer month){
        this.month = month;
    }
    public Integer setMonth(){
        return this.month;
    }
        
    public void SetDay(Integer day){
        this.day = day;
    }
    public Integer setDay(){
        return this.day;
    }    
    
    public void SetTell(String tell){
        this.tell = tell;
    }
    public String setTell(){
        return this.tell;
    }    
    
    public void SetType(Integer type){
        this.type = type;
    }
    public Integer setType(){
        return this.type;
    }    
    
    public void SetComment(String comment){
        this.comment = comment;
    }
    public String setComment(){
        return this.comment;
    }
}
