package com.timebank_system_springboot.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebConfig implements WebMvcConfigurer {
    @Override
    public void addCorsMappings(CorsRegistry registry) {
        registry.addMapping("/**") // 允许所有路径
                .allowedOrigins("http://localhost:5172") // 允许来自 http://localhost:3000 的跨域请求
                .allowedMethods("GET", "POST", "PUT", "DELETE", "OPTIONS", "HEAD") // 允许的HTTP方法
                .allowCredentials(true) // 是否允许发送Cookie
                .maxAge(3600); // 预检请求的缓存时间（秒）
    }
}
