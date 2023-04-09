package com.techgeeknext.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.kafka.core.KafkaTemplate;
import org.springframework.stereotype.Service;

@Service
public class KafkaProducerService {
    @Autowired
    private KafkaTemplate<String, String> kafkaTemplate;

    String kafkaTopic = "techgeeknext-topic";

    public void send(String message) {

        kafkaTemplate.send(kafkaTopic, message);
    }
}
