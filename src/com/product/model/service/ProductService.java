package com.product.model.service;

import java.sql.Connection;

import com.product.model.dao.ProductDao;
import static com.common.JDBCTemplate.getConnection;
import static com.common.JDBCTemplate.close;
import static com.common.JDBCTemplate.commit;
import static com.common.JDBCTemplate.rollback;

public class ProductService {

	private ProductDao dao= new ProductDao();
	
	public String selectImages(int proNo) {
		//상품번호로 이미지테이블 연결하여 주소들 가져오기
		Connection conn=getConnection();
		String images=dao.selectImages(conn, proNo);
		close(conn);
		return images;
	}
}
