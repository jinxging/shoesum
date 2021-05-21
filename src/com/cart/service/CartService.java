package com.cart.service;

import java.sql.Connection;
import java.util.List;

import com.cart.dao.CartDao;
import com.cart.model.vo.Cart;
import static com.common.JDBCTemplate.getConnection;
import static com.common.JDBCTemplate.close;


public class CartService {

	
	private CartDao dao = new CartDao();
	
	
	public List<Cart> cartListView(String userId){
		
		Connection conn = getConnection();
		
		List<Cart> list = dao.cartListView(conn,userId);
		
		
		close(conn);
		
		return list;
	}
	
	
	
}
