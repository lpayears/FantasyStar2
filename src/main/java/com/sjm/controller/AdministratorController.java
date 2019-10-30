package com.sjm.controller;

import java.util.List;
import java.util.Map;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.sjm.bean.Administrator;
import com.sjm.service.AdministratorService;
import com.sjm.service.BuildingService;
import com.sjm.service.DeviceService;
import com.sjm.service.OperationUserService;
import com.sjm.util.Message;

/**
 * 使用注解@RestController后，不用为每个方法添加@ResponseBody注解
 *
 * @author sonkabin
 */
@RestController
public class AdministratorController {

    @Autowired
    private AdministratorService administratorService;

    @Autowired
    private OperationUserService operationUserService;

    @Autowired
    private DeviceService deviceService;

    @Autowired
    private BuildingService buildingService;

    @RequestMapping(value = "/saveAdmin", method = RequestMethod.POST)
    public Message saveAdmin(Administrator admin) {
        administratorService.saveAdmin(admin);
        return Message.success();
    }

    @RequestMapping(value = "/adminLogin", method = RequestMethod.POST)
    public Message login(@RequestParam("adminName") String adminName, @RequestParam("password") String password) {
        Subject currentUser = SecurityUtils.getSubject();
        if (!currentUser.isAuthenticated()) {
            UsernamePasswordToken token = new UsernamePasswordToken(adminName, password);
            currentUser.login(token);
        }
        return Message.success();
    }

    /**
     * 获取管理员详细信息
     */
    @RequestMapping(value = "/getAdmin/{id}", method = RequestMethod.GET)
    public Message getAdmin(@PathVariable("id") Integer id) {
        Administrator admin = administratorService.getAdminById(id);
        return Message.success().add("admin", admin);
    }

    /**
     * 更新管理员信息，但不允许更新密码
     */
    @RequestMapping(value = "/updateAdmin/{id}", method = RequestMethod.PUT)
    public Message updateAdmin(Administrator admin) {
        administratorService.updateAdmin(admin);
        return Message.success();
    }

    /**
     * 重置管理员密码
     */
    @RequestMapping(value = "/resetAdminPwd/{id}", method = RequestMethod.PUT)
    public Message resetAdminPwd(Administrator admin) {
        administratorService.updatePwd(admin);
        return Message.success();
    }

    /**
     * 获取管理员分页信息
     */
    @RequestMapping(value = "/getAdmins", method = RequestMethod.GET)
    public Message getAdmins(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Administrator admin) {
        PageHelper.startPage(pn, 5);
        List<Administrator> admins = administratorService.getAdmins(admin);
        PageInfo<?> page = new PageInfo<>(admins, 5);
        return Message.success().add("pageInfo", page);
    }

    @RequestMapping(value = "/delAdmin/{id}", method = RequestMethod.DELETE)
    public Message delAdmin(@PathVariable("id") Integer id) {
        administratorService.delAdmin(id);
        return Message.success();
    }

    @RequestMapping(value = "/getSelfInfo", method = RequestMethod.GET)
    public Message getSelfInfo(@RequestParam("adminName") String adminName) {
        Administrator admin = administratorService.findAdminByAdminName(adminName);
        return Message.success().add("admin", admin);
    }

    @RequestMapping(value = "/getIndexInfo", method = RequestMethod.GET)
    public Message getIndexInfo() {
        Map<String, Integer> no = buildingService.getNo();
        long onlineCount = operationUserService.countOnlinePerson();
        long alarmCount = deviceService.countCurrentAlarm();
        return Message.success().add("no", no).add("onlineCount", onlineCount).add("alarmCount", alarmCount);
    }

}
