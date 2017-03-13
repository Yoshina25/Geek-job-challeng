/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BJ;
import java.util.ArrayList; 
import java.util.Random;

/**
 *
 * @author yoshina
 */
abstract public class human {
    public abstract int open();//手札を公開する処理。
    public abstract ArrayList setcard(ArrayList<Integer>cards);//山札から手札を受け取る処理。
    public abstract boolean checksum();//手札の判定。
    ArrayList<Integer>mycard=new ArrayList();//手札を作る処理。
                             }

//ディラー作り。
class  Dealer extends human{
     ArrayList<Integer>Dealercards=new ArrayList<Integer>();
      Dealer(){
      //カードと得点の定義。
          for(int mark=1;mark<=4;mark++){
            for(int card=1;card<=10;card++){
                Dealercards.add(card);
         }for(int cards=1;cards<=3;cards++){
                Dealercards.add(10);}
                                }
                                                              
      
      }
      
      public ArrayList<Integer>deal(){
      ArrayList<Integer>deal=new ArrayList<>();
      Random cards=new Random();
      for(int n=0;n<2;n++){
         //カードのランダム化。
       Integer Cards=cards.nextInt(Dealercards.size());
        //ランダム処理を受け取る＝二枚引く
            deal.add(Dealercards.get(Cards)); 
                                      }
                     return deal;
      }
      
     public ArrayList<Integer>hit(){
        //hit用のカードづくり。
      ArrayList<Integer>hit=new ArrayList<>();
       
      Random cards=new Random();
         //カードのランダム化。
      Integer Cards=cards.nextInt(Dealercards.size());
      if(checksum()){
            hit.add(Dealercards.get(Cards));
                  }
               return hit;
                                    }
       
@Override
      public int open(){
       //公開されるカードをmycardと同じにする。
        int open=0;
          for (int num=0;num<mycard.size();num++){
            open +=mycard.get(num);
                                                 }
               return open;
                       }
                       
@Override
      public ArrayList setcard(ArrayList<Integer>cards){
       //ユーザーの前に配られたカードをmycardと同じにする。
               mycard.addAll(cards);
               return mycard;
                                                                  }

@Override
      public boolean checksum(){
       //16以下の時、hitが発生するように設定。
         if(open()<=16){
            return true;
                      }else{
            return false;
                           }
                            }
                                    }
      
      
//userのカードづくり。
 class User extends human{
      ArrayList<Integer>usercards=new ArrayList<Integer>();
      //カードと得点の定義。
      User(){
          for(int mark=1;mark<=4;mark++){
            for(int card=1;card<=10;card++){
                usercards.add(card);
           } for(int cards=1;cards<=3;cards++){
                usercards.add(10);
           }
                                           }
              }
                

      
      public ArrayList<Integer>deals(){
            //ランダム処理を受け取る＝二枚引く。
        ArrayList<Integer>deal=new ArrayList<>();
        
         Random cards=new Random();
         //カードのランダム化。
         for(int n=0;n<2;n++){
         Integer Cards=cards.nextInt(usercards.size());
            deal.add(usercards.get(Cards)); 
                               }
                  return deal;
                                      }
      
      public ArrayList<Integer>hit(){
        //hit用のカードづくり。
       ArrayList<Integer>hit=new ArrayList<>();
       
         Random cards=new Random();
         //カードのランダム化。
         Integer Cards=cards.nextInt(usercards.size());
         
         if(checksum()){
            hit.add(usercards.get(Cards));
                  }
               return hit;
         }
                                    
       
@Override
      public int open(){
       //公開されるカードをmycardと同じにする。
       int open =0;
          for (int num=0;num<mycard.size();num++){
            open +=mycard.get(num);
                                                 }
               return open;
                       }
                       
@Override
      public ArrayList setcard(ArrayList<Integer>cards){
        //ユーザーの前に配られたカードをmycardと同じにする。
               mycard.addAll(cards);
               return mycard;
                                                                  }

@Override
      public boolean checksum(){
        //16以下の時、hitが発生するようにする処理。
         if(open()<=16){
            return true;
                      }else{
            return false;
                           }
                            }
                                        }
