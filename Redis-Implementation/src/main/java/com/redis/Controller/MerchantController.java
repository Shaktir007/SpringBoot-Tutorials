package com.redis.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.redis.Entity.Merchant;
import com.redis.repository.MerchantRepository;

@RestController
public class MerchantController {
	
	@Autowired
	MerchantRepository objMerchantRepository;
		
	@GetMapping("/merchant/{id}")
    public ResponseEntity<Merchant> getMerchantById(@PathVariable("id") String Id){
        Merchant merchant = objMerchantRepository.get(Id);
        return new ResponseEntity<>(merchant, HttpStatus.OK);
    }
	
	@PostMapping("/merchant")
    public ResponseEntity<Merchant> createMerchant(@RequestBody Merchant merchant){
		System.out.println("In Merchant Create-->");
		objMerchantRepository.create(merchant);
        return new ResponseEntity<>(merchant, HttpStatus.OK);
    }

}
