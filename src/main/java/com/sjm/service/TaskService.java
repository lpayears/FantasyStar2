package com.sjm.service;

import java.util.List;

import com.sjm.bean.Plan;
import com.sjm.bean.Task;

public interface TaskService {

    void saveTask(Task task);

    List<Task> getTasks(Task task);

    Task getTask(Integer id);

    void updateTask(Task task);

    void delTask(Integer id);

    List<Plan> getPlan(Plan plan);

    void delPlans(String ids);

}
