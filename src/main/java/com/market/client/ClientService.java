package com.market.client;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ClientService {
	@Autowired
	private ClientDAO clientDAO;
	
	public void insert(ClientDTO dto) throws Exception{
		clientDAO.insert(dto);
	}
	public List<ClientDTO> selectAll() throws Exception{
		return clientDAO.selectAll();
	}
	public List<ClientDTO> search(String category) throws Exception{
		return clientDAO.search(category);
	}
	
	
}
