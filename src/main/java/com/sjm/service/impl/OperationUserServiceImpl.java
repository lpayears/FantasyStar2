package com.sjm.service.impl;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sjm.bean.OperationUser;
import com.sjm.bean.OperationUserExample;
import com.sjm.dao.OperationUserMapper;
import com.sjm.service.OperationUserService;
import com.sjm.util.MD5Util;

@Service
public class OperationUserServiceImpl implements OperationUserService {

    @Autowired
    private OperationUserMapper operationUserMapper;

    @Override
    public void saveOperUser(OperationUser operUser) {
        // TODO Auto-generated method stub
        UUID uuid = UUID.randomUUID();
        String param = uuid.toString().substring(0, 6);
        // 通过uuid作为盐值加密密码
        String credentials = MD5Util.getPassword(param, operUser.getPassword());

        operUser.setSalt(param);
        operUser.setPassword(credentials);
        //设置一些默认值
        operUser.setOnline("N");
        operUser.setStatus("N");
        operationUserMapper.insertSelective(operUser);
    }

    @Override
    public List<OperationUser> getOperUsers(OperationUser operUser) {
        // TODO Auto-generated method stub
        OperationUserExample example = new OperationUserExample();
        example.createCriteria().andUsernameLike("%" + operUser.getUsername() + "%")
                .andNameLike("%" + operUser.getName() + "%").andStatusLike("%" + operUser.getStatus() + "%");
        return operationUserMapper.selectByExample(example);
    }

    @Override
    public OperationUser getOperUser(Integer id) {
        // TODO Auto-generated method stub
        return operationUserMapper.selectByPrimaryKey(id);
    }

    @Override
    public void updatePwd(OperationUser operUser) {
        // TODO Auto-generated method stub
        String password = MD5Util.getPassword(operUser.getSalt(), "123456");
        operUser.setPassword(password);
        operationUserMapper.updateByPrimaryKeySelective(operUser);
    }

    @Override
    public void updateOperUser(OperationUser operUser) {
        // TODO Auto-generated method stub
        operationUserMapper.updateByPrimaryKeySelective(operUser);
    }

    @Override
    public void delOperUser(Integer id) {
        // TODO Auto-generated method stub
        operationUserMapper.deleteByPrimaryKey(id);
    }

    @Override
    public long countOnlinePerson() {
        // TODO Auto-generated method stub
        OperationUserExample example = new OperationUserExample();
        example.createCriteria().andOnlineEqualTo("Y");
        long count = operationUserMapper.countByExample(example);
        return count;
    }

    @Override
    public List<String> getOpernames() {
        // TODO Auto-generated method stub
        List<String> list = operationUserMapper.selectNames();
        return list;
    }
}
