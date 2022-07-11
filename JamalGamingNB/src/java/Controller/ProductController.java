/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.ProductModel;
import Query.ProductQuery;
import java.sql.ResultSet;
import java.text.ParseException;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author LENOVO
 */
public class ProductController extends BaseController {
    
    ProductQuery query = new ProductQuery();
    
//    public ResultSet get() {
//        String sql = this.query.get;
//        return this.get(sql);
//    }
    public boolean create(ProductModel model) throws ParseException {
        Map<Integer, Object> map = new HashMap<>();
        map.put(1, model.getUsername());
        map.put(2, model.getUid());
        map.put(3, model.getProduct());
        map.put(4, model.getPay());
        String sql = this.query.create_trans;
        return this.preparedStatement(map, sql);
    }
}