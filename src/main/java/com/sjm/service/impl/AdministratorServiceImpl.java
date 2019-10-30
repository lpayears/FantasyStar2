package com.sjm.service.impl;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sjm.bean.Administrator;
import com.sjm.bean.AdministratorExample;
import com.sjm.dao.AdministratorMapper;
import com.sjm.service.AdministratorService;
import com.sjm.util.MD5Util;
import com.sjm.util.MyUtil;

@Service
public class AdministratorServiceImpl implements AdministratorService {

    @Autowired
    private AdministratorMapper administratorMapper;

    /**
     * 加密密码后保存用户
     */
    @Override
    public void saveAdmin(Administrator admin) {
        // TODO Auto-generated method stub
        UUID uuid = UUID.randomUUID();
        String param = uuid.toString().substring(0, 6);
        //通过uuid作为盐值加密密码
        String credentials = MD5Util.getPassword(param, admin.getPassword());

        admin.setSalt(param);
        admin.setPassword(credentials);
        admin.setStatus("N");
        administratorMapper.insertSelective(admin);
    }

    @Override
    public Administrator findAdminByAdminName(String username) {
        // TODO Auto-generated method stub
        AdministratorExample example = new AdministratorExample();
        example.createCriteria().andAdminNameEqualTo(username);
        List<Administrator> list = administratorMapper.selectByExample(example);
        if (MyUtil.ListNull(list)) {
            return null;
        }
        return list.get(0);
    }

    @Override
    public Administrator getAdminById(Integer id) {
        // TODO Auto-generated method stub
        return administratorMapper.selectByPrimaryKey(id);
    }

    @Override
    public void updateAdmin(Administrator admin) {
        // TODO Auto-generated method stub
        administratorMapper.updateByPrimaryKeySelective(admin);
    }

    @Override
    public List<Administrator> getAdmins(Administrator admin) {
        AdministratorExample example = new AdministratorExample();
        //id为1的为超级管理员
        example.createCriteria().andAdminNameLike("%" + admin.getAdminName() + "%").andIdNotEqualTo(1)
                .andNameLike("%" + admin.getName() + "%").andStatusLike("%" + admin.getStatus() + "%");
        List<Administrator> admins = administratorMapper.selectByExample(example);
        return admins;
    }

    @Override
    public void updatePwd(Administrator admin) {
        // TODO Auto-generated method stub
        String password = MD5Util.getPassword(admin.getSalt(), "123456");
        admin.setPassword(password);
        administratorMapper.updateByPrimaryKeySelective(admin);
    }

    @Override
    public void delAdmin(Integer id) {
        administratorMapper.deleteByPrimaryKey(id);
    }

    @Override
    public Administrator findAdminByName(String name) {
        // TODO Auto-generated method stub
        AdministratorExample example = new AdministratorExample();
        example.createCriteria().andNameEqualTo(name);
        List<Administrator> admins = administratorMapper.selectByExample(example);
        return admins.get(0);
    }
}
