package com.redis;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
@ComponentScan(basePackages = {"com.redis.*"})
@SpringBootApplication
public class RedisImplementationApplication {

	public static void main(String[] args) {
		SpringApplication.run(RedisImplementationApplication.class, args);
	}

}
