package com.product.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.product.model.service.ProductService;
import com.product.model.vo.Product;

/**
 * Servlet implementation class ProductDetailServlet
 */
@WebServlet("/product/productDetail")
public class ProductDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//상품 디테일로 보내주는 서블릿
		//상품 jsp에서 그 상품의 번호를 넘겨받기
		int proNo=Integer.parseInt(request.getParameter("proNo"));
//		String proName=request.getParameter("proName");
//		int price=Integer.parseInt(request.getParameter("price"));
//		int size=Integer.parseInt(request.getParameter("size"));
//		String color=request.getParameter("color");
//		int stock=Integer.parseInt(request.getParameter("stock"));
		String images=new ProductService().selectImages(proNo);
		String[] value=images.split(",");
		for(String s : value) {
			System.out.println(s);
		}
		request.setAttribute("images", value);
		request.getRequestDispatcher("/views/mypage/test.jsp").forward(request, response);
		//Product p = new Product(proNo, proName, price, size, color, stock, images);
		
	
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
