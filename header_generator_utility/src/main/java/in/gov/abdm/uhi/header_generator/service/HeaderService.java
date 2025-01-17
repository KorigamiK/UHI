package in.gov.abdm.uhi.header_generator.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.gov.abdm.uhi.header_generator.Crypt;

@Service
public class HeaderService {
	
	@Autowired
	Crypt crypt; 
	
	public Map<String,String> getHeaders(){
		return crypt.generateAuthorizationParams(null, null, null, null);
	}

}
