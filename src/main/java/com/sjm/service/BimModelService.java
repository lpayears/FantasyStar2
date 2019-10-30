package com.sjm.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.sjm.bean.BimModel;

public interface BimModelService {

    void saveBim(MultipartFile uploadFile);

    List<BimModel> getModels(BimModel model);

    BimModel getModel(Integer id);

    void updateModel(BimModel model);

    void delModel(Integer id);

    void integrationModel(String ids);

}
