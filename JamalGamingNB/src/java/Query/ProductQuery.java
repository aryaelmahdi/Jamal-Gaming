/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Query;

/**
 *
 * @author LENOVO
 */
public class ProductQuery {
    public String create_trans = "INSERT INTO transaction (Username, UserID, " + 
            "Product, Payment) VALUES (?, ?, ?, ?)";
}
