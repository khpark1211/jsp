package com.ict.model;

import java.io.File;
import java.io.FileOutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.w3c.dom.Document;
import org.w3c.dom.Element;

public class Xml_Data_Command_02 {
	public void exec(HttpServletRequest request, HttpServletResponse response) {
		// DOM 방식 (안드로이드에서사용가능)
		
		DocumentBuilderFactory factory = null;
		DocumentBuilder builder = null;
		Document document = null;
		try {
			factory = DocumentBuilderFactory.newInstance();
			builder = factory.newDocumentBuilder();
			document = builder.newDocument();
				
			// 요소
			Element products = document.createElement("products");
			document.appendChild(products);
			
			Element product = document.createElement("product");
			products.appendChild(product);
			
			
			Element name = document.createElement("name");
			name.appendChild(document.createTextNode("커피우유"));
			product.appendChild(name);
			
			Element price = document.createElement("price");
			price.appendChild(document.createTextNode("950"));
			product.appendChild(price);
			
			
			Element product2 = document.createElement("product");
			products.appendChild(product2);
			product2.setAttribute("name", "바바나 우유");
			product2.setAttribute("price", "1250");
			
			Element product3 = document.createElement("product");
			products.appendChild(product3);
			product3.appendChild(document.createTextNode("맛있는 우유"));
			product3.setAttribute("price", "2550");				
			
			// xml 파일로 쓰기 
			TransformerFactory t_factory = TransformerFactory.newInstance();
			Transformer transformer = t_factory.newTransformer();
			
			transformer.setOutputProperty(OutputKeys.ENCODING, "UTF-8");  // 인코딩
			
			DOMSource source = new DOMSource(document);
			String path = "C:/study/util/test.xml" ;
			StreamResult result 
				= new StreamResult(new FileOutputStream(new File(path)));
			
			transformer.transform(source, result);
		} catch (Exception e) {
			
		}
		
		
		
	}
}
