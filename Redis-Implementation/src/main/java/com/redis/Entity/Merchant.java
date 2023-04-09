package com.redis.Entity;

import java.io.Serializable;

import org.springframework.data.annotation.Id;
import org.springframework.data.redis.core.index.Indexed;

public class Merchant implements Serializable {

	private int id;

	private String name;


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "Merchant [id=" + id + ", name=" + name + "]";
	}

	

	
}
