package com.sjm.controller;

import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UnknownAccountException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import com.sjm.util.Message;

/**
 * 开启Controller增强
 *
 * @author sonkabin
 */
@RestControllerAdvice
public class MyControllerAdvice {


    @ExceptionHandler(value = UnknownAccountException.class)
    public Message unknownAccountHandler(UnknownAccountException exception) {
        System.out.println(exception.getMessage());
        return pack(exception.getMessage());
    }

    @ExceptionHandler(value = LockedAccountException.class)
    public Message lockedAccountHandler(LockedAccountException exception) {
        System.out.println(exception.getMessage());
        return pack(exception.getMessage());
    }

    private Message pack(String errorMsg) {
        Message message = Message.fail();
        message.setMsg(errorMsg);
        return message;
    }
}
