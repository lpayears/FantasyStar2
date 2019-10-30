package com.sjm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.sjm.bean.OperationUser;
import com.sjm.service.OperationUserService;
import com.sjm.util.Message;

@RestController
public class OperationUserController {

    @Autowired
    private OperationUserService operationUserService;

    @RequestMapping(value = "/saveOperUser", method = RequestMethod.POST)
    public Message saveOperUser(OperationUser operUser) {
        operationUserService.saveOperUser(operUser);
        return Message.success();
    }

    @RequestMapping(value = "/getOperUsers", method = RequestMethod.GET)
    public Message getOperUsers(@RequestParam(value = "pn", defaultValue = "1") Integer pn, OperationUser operUser) {
        PageHelper.startPage(pn, 5);
        List<OperationUser> operUsers = operationUserService.getOperUsers(operUser);
        PageInfo<?> page = new PageInfo<>(operUsers, 5);
        return Message.success().add("pageInfo", page);
    }

    /**
     * 通过id获取运维人员信息，从而回显到表单上
     */
    @RequestMapping(value = "/getOperUser/{id}", method = RequestMethod.GET)
    public Message getOperUser(@PathVariable("id") Integer id) {
        OperationUser operUser = operationUserService.getOperUser(id);
        return Message.success().add("operUser", operUser);
    }

    @RequestMapping(value = "/resetOperUserPwd/{id}", method = RequestMethod.PUT)
    public Message resetOperUserPwd(OperationUser operUser) {
        operationUserService.updatePwd(operUser);
        return Message.success();
    }

    /**
     * 更新运维人员信息，但不更新密码
     */
    @RequestMapping(value = "/updateOperUser/{id}", method = RequestMethod.PUT)
    public Message updateOperUser(OperationUser operUser) {
        operationUserService.updateOperUser(operUser);
        return Message.success();
    }

    @RequestMapping(value = "/delOperUser/{id}", method = RequestMethod.DELETE)
    public Message delOperUser(@PathVariable("id") Integer id) {
        operationUserService.delOperUser(id);
        return Message.success();
    }

    @RequestMapping(value = "/getOpernames", method = RequestMethod.GET)
    public Message getOpernames() {
        List<String> opernames = operationUserService.getOpernames();
        return Message.success().add("opernames", opernames);
    }
}
