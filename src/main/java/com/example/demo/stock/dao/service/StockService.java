package com.example.demo.stock.dao.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.stock.dao.repository.StockRepository;

@Service
public class StockService {
	
	private final StockRepository stockRepository;
	
	@Autowired
	public StockService (StockRepository stockRepository) {
		this.stockRepository = stockRepository;
	}
	
	public List<String> findUserName () {
		
		List<String> result = stockRepository.findUserName();
		
		return result;
	}

}
