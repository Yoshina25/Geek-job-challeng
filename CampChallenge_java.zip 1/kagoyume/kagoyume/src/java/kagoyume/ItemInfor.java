/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kagoyume;

/**
 *
 * @author yoshina
 */
public class ItemInfor {
    private String Name;
    private String ItemID;
    private String Description;
    private String Image;
    private String ImageList;
    private String Price;
    
    
   public String getName(){
        return this.Name;
    }
    public void setName(String Name){
        this.Name = Name;
    }   

    public String getItemID(){
        return this.ItemID;
    }
    public void setItemID(String ItemID){
            this.ItemID = ItemID;
    }

    public String getDiscription(){
        return this.Description;
    }
    public void setDescription(String Description){
            this.Description = Description;
    }

    public String getImage(){
    return this.Image;
    }
    public void setImage (String Image){
            this.Image = Image;
    }
    
    public String getImageList(){
        return this.ImageList;
    }
    public void setImageList(String ImageList) {
            this.ImageList = ImageList;
    }
    
    public String getPrice(){
         return this.Price;
    }
    public void setPrice(String Price) {
            this.Price = Price;
    }
}
