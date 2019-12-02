package com.bdi.test;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

// 자동으로 생성된 파일

@SpringBootApplication(scanBasePackages = {"com.bdi.test"})	// servlet-context에 있던거
public class SbTestApplication {

	public static void main(String[] args) {
		SpringApplication.run(SbTestApplication.class, args);
	}

}
