package com.sjm.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.bimface.sdk.BimfaceClient;
import com.bimface.sdk.bean.request.integrate.IntegrateRequest;
import com.bimface.sdk.bean.request.integrate.IntegrateSource;
import com.bimface.sdk.bean.response.FileBean;
import com.bimface.sdk.bean.response.IntegrateBean;
import com.bimface.sdk.exception.BimfaceException;
import com.sjm.bean.BimModel;
import com.sjm.bean.BimModelExample;
import com.sjm.dao.BimModelMapper;
import com.sjm.service.BimModelService;
import com.sjm.util.MyUtil;

@Service
public class BimModelServiceImpl implements BimModelService {

    @Autowired
    private BimModelMapper bimModelMapper;

    private static final String appKey = "9w6dHaSBqwuwe05FTAyL1ZGbJYFEYUWe";
    private static final String appSecret = "ZrJvOZBkgx3u4hm8F5izj1rscYoHDxGV";

    @Override
    public void saveBim(MultipartFile uploadFile) {
        // TODO Auto-generated method stub
        // 1.初始化BIMFACE
        BimfaceClient bimfaceClient = new BimfaceClient(appKey, appSecret);

        String name = uploadFile.getOriginalFilename();
        long contentLength = uploadFile.getSize();
        FileBean fileBean = null;
        Long fileId = null;

        try {
            // 2.上传模型
            fileBean = bimfaceClient.upload(name, contentLength, uploadFile.getInputStream());

            // 3.获取文件id
            fileId = fileBean.getFileId();

            // 4.发起文件转换
            bimfaceClient.translate(fileId);

        } catch (Exception e) {
            e.printStackTrace();
        }

        BimModel record = new BimModel();
        record.setFileId(fileId);
        record.setName(name);
        record.setCreateTime(new Date());
        record.setSize(contentLength);
        bimModelMapper.insertSelective(record);
    }

    @Override
    public List<BimModel> getModels(BimModel model) {
        // TODO Auto-generated method stub
        BimModelExample example = new BimModelExample();
        if (!MyUtil.ObjectNull(model)) {
            example.createCriteria().andNameLike("%" + model.getName() + "%");
        }
        List<BimModel> models = bimModelMapper.selectByExample(example);
        return models;
    }

    @Override
    public BimModel getModel(Integer id) {
        // TODO Auto-generated method stub
        return bimModelMapper.selectByPrimaryKey(id);
    }

    @Override
    public void updateModel(BimModel model) {
        // TODO Auto-generated method stub
        bimModelMapper.updateByPrimaryKeySelective(model);
    }

    @Override
    public void delModel(Integer id) {
        // TODO Auto-generated method stub
        bimModelMapper.deleteByPrimaryKey(id);
    }

    @Override
    public void integrationModel(String ids) {
        // TODO Auto-generated method stub
        String[] idStr = ids.split(",");
        List<Integer> list = new ArrayList<>();
        for (String id : idStr) {
            list.add(Integer.parseInt(id));
        }
        List<Long> models = bimModelMapper.selectByIds(list);


        List<IntegrateSource> sources = new ArrayList<>();
        for (Long each : models) {
            IntegrateSource integrateSource = new IntegrateSource();
            integrateSource.setFileId(each);
            sources.add(integrateSource);
        }

        IntegrateRequest request = new IntegrateRequest();
        request.setSources(sources);

        BimfaceClient bimfaceClient = new BimfaceClient(appKey, appSecret);
        try {
            IntegrateBean integrate = bimfaceClient.integrate(request);
            System.out.println(integrate);
        } catch (BimfaceException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

    }
}
