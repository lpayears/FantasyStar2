package com.sjm.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sjm.bean.Plan;
import com.sjm.bean.PlanExample;
import com.sjm.bean.Task;
import com.sjm.bean.TaskExample;
import com.sjm.bean.TaskExample.Criteria;
import com.sjm.dao.PlanMapper;
import com.sjm.dao.TaskMapper;
import com.sjm.service.TaskService;
import com.sjm.util.MyUtil;

@Service
public class TaskServiceImpl implements TaskService {

    @Autowired
    private TaskMapper taskMapper;

    @Autowired
    private PlanMapper planMapper;

    @Override
    public void saveTask(Task task) {
        // TODO Auto-generated method stub
        task.setCreateTime(new Date());
        task.setTaskStatus("N");
        taskMapper.insertSelective(task);

    }

    @Override
    public void delPlans(String ids) {
        // TODO Auto-generated method stub
        String[] idStrs = ids.split(",");
        List<Integer> list = new ArrayList<>();
        for (String idStr : idStrs) {
            list.add(Integer.parseInt(idStr));
        }
        planMapper.deleteByIds(list);
    }

    @Override
    public List<Task> getTasks(Task task) {
        // TODO Auto-generated method stub
        TaskExample example = new TaskExample();
        Criteria criteria = example.createCriteria();
        Integer buildNo = task.getBuildNo();
        Integer layerNo = task.getLayerNo();
        if (!MyUtil.ObjectNull(buildNo)) {
            criteria.andBuildNoEqualTo(buildNo);
        }
        if (!MyUtil.ObjectNull(layerNo)) {
            criteria.andLayerNoEqualTo(layerNo);
        }
        criteria.andTaskStatusLike("%" + task.getTaskStatus() + "%").andOperationTypeLike("%" + task.getOperationType() + "%");
        List<Task> tasks = taskMapper.selectByExample(example);
        return tasks;
    }

    @Override
    public Task getTask(Integer id) {
        // TODO Auto-generated method stub
        return taskMapper.selectByPrimaryKey(id);
    }

    @Override
    public void updateTask(Task task) {
        // TODO Auto-generated method stub
        taskMapper.updateByPrimaryKeySelective(task);
    }

    @Override
    public void delTask(Integer id) {
        // TODO Auto-generated method stub
        taskMapper.deleteByPrimaryKey(id);
    }

    @Override
    public List<Plan> getPlan(Plan plan) {
        // TODO Auto-generated method stub
        String operationType = plan.getOperationType();
        Integer buildNo = plan.getBuildNo();
        PlanExample example = new PlanExample();
        com.sjm.bean.PlanExample.Criteria criteria = example.createCriteria().andOperationTypeLike("%" + operationType + "%");
        if (!MyUtil.ObjectNull(buildNo)) {
            criteria.andBuildNoEqualTo(buildNo);
        }
        List<Plan> list = planMapper.selectByExample(example);
        return list;
    }
}
