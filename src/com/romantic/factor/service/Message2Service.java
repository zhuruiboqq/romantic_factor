package com.romantic.factor.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.romantic.factor.dao.Message2Dao;
import com.romantic.factor.entity.Message2;

@Service
public class Message2Service {
	@Autowired
	private Message2Dao message2Dao;

	public void addMessage(Message2 message) {
		message2Dao.insert(message);

	}
}
