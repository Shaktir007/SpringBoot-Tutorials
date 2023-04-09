package com.techgeeknext;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.kafka.annotation.KafkaListener;

@SpringBootApplication
public class KafaExampleApplication {

    public static void main(String[] args) {
        SpringApplication.run(KafaExampleApplication.class, args);
    }

    @KafkaListener(topics = "techgeeknext-topic", groupId = "group-id")
    public void listen(String message) {

        System.out.println("Received Messasge : " + message);
    }
}
