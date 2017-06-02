/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kagoyume;

import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URLEncoder;
import java.net.URL;
import java.util.*;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.DocumentBuilder;

/**
 *
 * @author yoshina
 */
public class YahooSearch {
    //yahooAPIを定数にする処理。
    private final String ApiID = "dj0zaiZpPU1hcGFPYmk3WEMzUCZzPWNvbnN1bWVyc2VjcmV0Jng9NDc-";
    //商品検索のURL
    private final String SearchURL = "http://shopping.yahooapis.jp/ShoppingWebService/V1/itemSearch";
    //商品コード検索のURL
    private final String URLOfItemCord = "http://shopping.yahooapis.jp/ShoppingWebService/V1/itemLookup";

    public static YahooSearch getInstance(){
        return new YahooSearch();   
    }

  //キーワードによる情報検索
    public ArrayList<ItemInfor> searchForBuy(String keyword){
        try{
            String keyword_Enc = URLEncoder.encode(keyword,"UTF8");
            URL url = new URL(SearchURL + "?appid=" + ApiID + "&query=" + keyword_Enc + "&image_size=300");
        
            //変数urlの値を返す。
            Document document = UrlDocument(url);
           
            ArrayList<ItemInfor> itemSearch = ConvertForSearch(document);

            return itemSearch;
        }catch(Exception e){
        return null;
        }
    }
    
    
    //取得したxmlファイル内の情報を所得し、変換する処理。
    public ArrayList<ItemInfor> ConvertForSearch(Document document){
        try{
            ArrayList<ItemInfor> ItemSearch = new ArrayList<>();
        
            //ドキュメントから要素を取得する。
            Element result_root = document.getDocumentElement();
        
            //rootから最初のノードを取得する。
            Node FstChild_Node = result_root.getFirstChild();
        
            //rootから子ノードの一覧を取得する。
            NodeList root_List = FstChild_Node.getChildNodes();
        
            for(int num = 0;num < root_List.getLength();num++){
            //num番目のノードの情報を取り出す。
                 Node Child_Result = root_List.item(num);
                
                 //ノードの名前がHITの時、ItemSearchに加える。
                if(Child_Result.getNodeName().equals("HIT")){
                    ItemInfor ItemInfor = parseOfHit(Child_Result);
                
                    ItemSearch.add(ItemInfor);
                }
            } 
        return ItemSearch;
        }catch (Exception e){
            return null;
        }
    }
    
    
    //商品コードからの情報の取得。
    public ArrayList<ItemInfor> RecordOfSearch(ArrayList<BuyDataDTO> recordList){
        try{
            ArrayList<ItemInfor> ItemRecord = new ArrayList<>();
            
            for (BuyDataDTO bdd : recordList){
                URL url = new URL(URLOfItemCord + "?appid=" + ApiID + "&itemcode=" + bdd.getItemCord() + "&responsegroup=medium=" +"&image_size=200");
                
                Document recordDocument = UrlDocument(url);
                
                ItemInfor record = ItemRecord(recordDocument);
                ItemRecord.add(record);
        }
            return ItemRecord;
        }catch (Exception e){
            return null;
        }
    }
    

    //RecordOfSearchで取得したURLからItemインスタンスを返す。
    public Document UrlDocument(URL url) throws Exception{
        
        HttpURLConnection urlcon = (HttpURLConnection)url.openConnection();
        
        urlcon.setRequestMethod("GET");
        urlcon.setInstanceFollowRedirects(false);
        urlcon.connect();
        
        InputStream is = urlcon.getInputStream();
        
        //xmlファイルの取得   
        Document document = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(is);
    
//        DocumentBuilderFactory dbfactory = DocumentBuilderFactory.newInstance();
//        DocumentBuilder builder = dbfactory.newDocumentBuilder();
//        Document document = builder.parse(urlcon.getInputStream());

        urlcon.disconnect();
        
        return document;
    }
    
    
    //RecordOfSearchで取得したxmlファイル内の情報を取得する。 
    public ItemInfor ItemRecord(Document document){
        try{
        ItemInfor record = new ItemInfor();
        
        Element result_root = document.getDocumentElement();
         //rootから最初のノードを取得する。

        Node FstChild_Node = result_root.getFirstChild();
        
        //rootから子ノードの一覧を取得する。
        NodeList root_List = FstChild_Node.getChildNodes();
        
            for(int num = 0;num < root_List.getLength();num++){
                //num番目のノードの情報を取り出す。
                Node Child_Result = root_List.item(num);  
                //ノードの名前がHITの時、ItemSearchに加える。
                if(Child_Result.getNodeName().equals("HIT")){
                    record = parseOfHit(Child_Result);
            }
        } 
            
        return record;
        }catch (Exception e){
            return null;
        }
    }
        
    
    //xmlファイルの中から各要素を取り出す処理。
    public ItemInfor parseOfHit(Node hit){
    
        ItemInfor itemInfor = new ItemInfor();
        //HitListから子ノードを取り出す。
        NodeList hitList = hit.getChildNodes();
    
        //HitListの中から要素を全て取り出す処理。
        for(int num = 0;num < hitList.getLength();num++){
            
            Node childHit = hitList.item(num);
            
            if(childHit.getNodeName().equals("Name")){
                itemInfor.setName(childHit.getTextContent());
            }
            if(childHit.getNodeName().equals("Code")){
                itemInfor.setItemID(childHit.getTextContent());
            }
            if(childHit.getNodeName().equals("Description")){
                itemInfor.setDescription(childHit.getTextContent());
            }
            if(childHit.getNodeName().equals("Image")){
                Node child_Image = hitList.item(num);
                NodeList ImageList = child_Image.getChildNodes();
                for(int number = 0;number < ImageList.getLength();number++){
                Node child_image = ImageList.item(number);
               
                    if(child_image.getNodeName().equals("Medium")){
                        itemInfor.setImage(child_image.getTextContent());
                    }
                }
            }
            if(childHit.getNodeName().equals("ExImage")){
                Node childe_image = hitList.item(num);
                NodeList ImageList = childe_image.getChildNodes();
                for(int number = 0;number < ImageList.getLength();number++){
                    Node Child_image = ImageList.item(number);
                
                    if(Child_image.getNodeName().equals("Url")){
                        itemInfor.setImageList(Child_image.getTextContent());
                    }
                }
            }
            if(childHit.getNodeName().equals("price")){
                itemInfor.setPrice(childHit.getTextContent());
            }
         }
        return itemInfor;
    }
}
                      

