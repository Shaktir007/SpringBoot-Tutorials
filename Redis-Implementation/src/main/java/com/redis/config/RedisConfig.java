package com.redis.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.connection.jedis.JedisConnectionFactory;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.serializer.StringRedisSerializer;

import com.redis.Entity.Merchant;

@Configuration
public class RedisConfig {
	
	@Bean
	JedisConnectionFactory redisConnectionFactory() {
	
		JedisConnectionFactory jedisConnectionFactory = new JedisConnectionFactory();
		 jedisConnectionFactory.setHostName("localhost");
	        jedisConnectionFactory.setPort(6379);
	        jedisConnectionFactory.afterPropertiesSet();	
	return new JedisConnectionFactory();
	}

	
	public RedisTemplate<String, Merchant> reduisTemplate() {
	RedisTemplate<String, Merchant> myRedisTemplate = new RedisTemplate<>();
	myRedisTemplate.setConnectionFactory(redisConnectionFactory());
	myRedisTemplate.setKeySerializer(new StringRedisSerializer());
	myRedisTemplate.afterPropertiesSet();
	return myRedisTemplate;
	}

}