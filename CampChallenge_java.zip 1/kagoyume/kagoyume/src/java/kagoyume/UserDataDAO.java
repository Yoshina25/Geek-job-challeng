/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kagoyume;


import Base.DBManager;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Timestamp;


/**
 *
 * @author yoshina
 */
public class UserDataDAO {
    
    //インスタンスオブジェクトを返却させてコードの簡略化
    public static UserDataDAO getInstance(){
        return new UserDataDAO();
    }
    

    public void insert(UserDataDTO ud) throws SQLException{
        
        Connection con = null;
        PreparedStatement st = null;
        
        try{
            
            con = DBManager.getConnection();
            
            st =  con.prepareStatement("INSERT INTO user_t(name,birthday,tell,type,comment,newDate) VALUES(?,?,?,?,?,?)");;
            st.setTimestamp(6, new Timestamp(System.currentTimeMillis()));
            
            st.executeUpdate();
            
            System.out.println("insert completed");
            
        }catch(SQLException e){
            System.out.println(e.getMessage());
            throw new SQLException(e);
        }finally{
            if(con != null){
                con.close();
            }
        }

    }
}
