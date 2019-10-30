package com.sjm.service;

import java.util.List;

import com.sjm.bean.OperationUser;

public interface OperationUserService {

    void saveOperUser(OperationUser operUser);

    List<OperationUser> getOperUsers(OperationUser operUser);

    OperationUser getOperUser(Integer id);

    void updatePwd(OperationUser operUser);

    void updateOperUser(OperationUser operUser);

    void delOperUser(Integer id);

    long countOnlinePerson();

    List<String> getOpernames();

}
