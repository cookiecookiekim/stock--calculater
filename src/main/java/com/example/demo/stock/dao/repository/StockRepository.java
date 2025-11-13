package com.example.demo.stock.dao.repository;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface StockRepository {
	
	String findUserName();

}
