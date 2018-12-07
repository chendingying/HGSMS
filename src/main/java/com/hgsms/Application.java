//package com.hgsms;
//
//import com.hgsms.conf.UserAuthConfig;
//import org.mybatis.spring.annotation.MapperScan;
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.boot.SpringApplication;
//import org.springframework.boot.autoconfigure.SpringBootApplication;
//import org.springframework.boot.builder.SpringApplicationBuilder;
//import org.springframework.boot.web.servlet.ServletComponentScan;
//import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.ImportResource;
//import org.springframework.web.servlet.config.annotation.CorsRegistry;
//import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
//
///**
// * Created by CDZ on 2018/11/22.
// */
//@SpringBootApplication
//@MapperScan(basePackages = "com.hgsms.mapper")
////重点
//@ServletComponentScan
//@ImportResource(locations= {"classpath:*.xml"})
//public class Application extends SpringBootServletInitializer {
//
////    private static Logger logger = LoggerFactory.getLogger(Application.class);
////    /**
////     */
////    public static void main(String[] args) {
////        SpringApplication.run(Application.class, args);
////        logger.debug("启动成功");
////    }
//    @Override
//    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
//        return application.sources(Application.class);
//    }
//
//    @Bean
//    UserAuthConfig getUserAuthConfig(){
//        return new UserAuthConfig();
//    }
//
//}