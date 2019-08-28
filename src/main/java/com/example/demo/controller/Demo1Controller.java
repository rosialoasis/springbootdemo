package com.example.demo.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 测试控制器
 *
 * @author: @rosia
 * @create: 2018-05-08-下午 16:46
 */
@RestController
public class Demo1Controller {

    @RequestMapping("/hello")
    public String hello() {
        return "Hello Spring Boot! Big step!";
    }
}
