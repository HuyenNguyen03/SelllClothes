package com.ps20673.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.ps20673.interceptor.LoggerInterceptor;
import com.ps20673.interceptor.SecurityInterceptor;

@Configuration
public class InterceptorConfig implements WebMvcConfigurer {
	@Autowired
	LoggerInterceptor loggerInterceptor;
	@Autowired
	SecurityInterceptor aut;

	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(loggerInterceptor).addPathPatterns("/*", "/**");

		registry.addInterceptor(aut).addPathPatterns("/home/order-detail","/home/checkout","/home/profile","home/myorder", "/home/change-password", "/admin/**")
				.excludePathPatterns("/admin/home/index");
	}

}
