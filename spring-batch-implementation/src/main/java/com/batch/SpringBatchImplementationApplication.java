package com.batch;

import org.springframework.batch.core.configuration.annotation.EnableBatchProcessing;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@ComponentScan(basePackages = {"com.batch.*"})

@SpringBootApplication
@EnableBatchProcessing
public class SpringBatchImplementationApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringBatchImplementationApplication.class, args);
	}

}
