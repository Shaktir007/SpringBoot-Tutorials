package com.redis.repository;



import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.HashOperations;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Repository;

import com.redis.Entity.Merchant;


@Repository

public class MerchantRepository {
	
	private static final String hashkey="Merchant";
  
	@Autowired
	RedisTemplate redisTemplate;	
	
    final Logger logger =LoggerFactory.getLogger(MerchantRepository.class);
	private HashOperations hashOperations;
	
	
	public void create(Merchant merchant) {
		
        logger.info(String.format("Merchant with ID %s saved",redisTemplate.opsForHash().entries(hashkey)));
	}
	
	public Merchant get(String userId) {
		
		 logger.info(String.format("Merchant with ID 1",(Merchant) redisTemplate.opsForHash().get(hashkey, userId)));
		 logger.info(String.format("Merchant with ID 2",(Merchant) redisTemplate.opsForHash().get(userId,hashkey)));
		return (Merchant) redisTemplate.opsForHash().get(hashkey, userId);
	}
}
