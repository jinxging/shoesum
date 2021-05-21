package com.product.model.dao;

import static com.common.JDBCTemplate.close;

import java.io.FileReader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.member.model.dao.MemberDao;

public class ProductDao {
	private Properties prop= new Properties();
	
	public ProductDao() {
		try {
			String filePath=MemberDao.class.getResource("/sql/product_sql.properties").getPath();
			prop.load(new FileReader(filePath));
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	public String selectImages(Connection conn, int proNo) {
		//이미지들 가져오는 것
		PreparedStatement pstmt= null;
		ResultSet rs=null;
		String images="";
		try {
			pstmt=conn.prepareStatement(prop.getProperty("selectImages"));
			pstmt.setInt(1, proNo);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				images=rs.getString("img_src");
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		return images;
	}
}
