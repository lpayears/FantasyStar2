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
import com.sjm.bean.DeviceDetail;
import com.sjm.bean.Plan;
import com.sjm.bean.Task;
import com.sjm.service.DeviceService;
import com.sjm.service.TaskService;
import com.sjm.util.Message;

@RestController
public class TaskController {

    @Autowired
    private TaskService taskService;

    @Autowired
    private DeviceService deviceService;

    /**
     * 首页保存发布任务
     */
//	@RequestMapping(value="/saveTask",method=RequestMethod.POST)
//	public Message saveTask(Task task) {
//		taskService.saveTask(task);
//		return Message.success();
//	}
    @RequestMapping(value = "/saveTask", method = RequestMethod.POST)
    public Message saveTask(Task task, @RequestParam("ids") String ids) {
        taskService.saveTask(task);
        taskService.delPlans(ids);
        return Message.success();
    }

    /**
     * 任务管理中分页信息
     */
    @RequestMapping(value = "/getTasks", method = RequestMethod.GET)
    public Message getTasks(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Task task) {
        PageHelper.startPage(pn, 8);
        List<Task> tasks = taskService.getTasks(task);
        PageInfo<?> page = new PageInfo<>(tasks, 8);
        return Message.success().add("pageInfo", page);
    }

    /**
     * 通过taskId获取Task，然后获取具体台账
     *
     * @param taskId
     * @return
     */
    @RequestMapping(value = "/getDevicesWithCondition/{taskId}", method = RequestMethod.GET)
    public Message getDevicesWithCondition(@PathVariable("taskId") Integer taskId) {
        Task task = taskService.getTask(taskId);
        List<DeviceDetail> deviceDetails = deviceService.getDevicesWithCondition(task);
        return Message.success().add("deviceDetails", deviceDetails);
    }

    @RequestMapping(value = "/getTask/{id}", method = RequestMethod.GET)
    public Message getTask(@PathVariable("id") Integer id) {
        Task task = taskService.getTask(id);
        return Message.success().add("task", task);
    }

    @RequestMapping(value = "/updateTask/{id}", method = RequestMethod.PUT)
    public Message updateTask(Task task) {
        taskService.updateTask(task);
        return Message.success();
    }

    @RequestMapping(value = "/delTask/{id}", method = RequestMethod.DELETE)
    public Message delTask(@PathVariable("id") Integer id) {
        taskService.delTask(id);
        return Message.success();
    }

    /**
     * 首页中可分配的任务
     */
    @RequestMapping(value = "/getPlans", method = RequestMethod.GET)
    public Message getIndexTasks(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Plan plan) {
        PageHelper.startPage(pn, 5);
        List<Plan> plans = taskService.getPlan(plan);
        PageInfo<?> page = new PageInfo<>(plans, 5);
        return Message.success().add("pageInfo", page);
    }
}
