package com.sjm.service;

import java.util.List;

import com.sjm.bean.Administrator;

public interface AdministratorService {

    void saveAdmin(Administrator admin);

    Administrator findAdminByAdminName(String username);

    Administrator getAdminById(Integer id);

    void updateAdmin(Administrator admin);

    List<Administrator> getAdmins(Administrator admin);

    void updatePwd(Administrator admin);

    void delAdmin(Integer id);

    Administrator findAdminByName(String name);
}
