package com.example.demo.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.StockDao;
import com.example.demo.entity.Stock;

@Service
public class StockService 
{
	@Autowired
	public StockDao stockdao;
	
	
	public static List<String>al=new ArrayList<String>();
	public Stock save(Stock save)
	{
		return stockdao.save(save);
	}
	
	public List<Stock> findAll()
	{
		
		return stockdao.findAll();
		
	}
	public Stock findByStockName(String stockExchangeCompany)
	{
		return stockdao.findByStockName(stockExchangeCompany);
	}
	
	public String StockList()
	{
		List<Stock>al1=stockdao.findAll();
		for(int i=0;i<al1.size();i++)
		{
			if(!(al.contains(al1.get(i).getStockName())))
					{
			
				al.add(al1.get(i).getStockName());
		
					}
		}
		StringBuffer sb = new StringBuffer(); 
		  sb.append("["); 
		  for(int i=0;i<al.size(); i++)
		  { 
			  sb.append("\"").append(al.get(i)).append("\""); 
			  if(i+1 <al.size())
			  { 
				  sb.append(","); 
			  } 
		  } 
		  sb.append("]");
		  String s= sb.toString();
		return s;
	}
	
	
}
