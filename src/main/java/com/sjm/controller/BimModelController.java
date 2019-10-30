package com.sjm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.sjm.bean.BimModel;
import com.sjm.service.BimModelService;
import com.sjm.util.Message;

@RestController
public class BimModelController {

    @Autowired
    private BimModelService bimModelService;

    @RequestMapping(value = "/uploadBim", method = RequestMethod.POST)
    public Message uploadBim(@RequestParam("file") MultipartFile file) {
        bimModelService.saveBim(file);
        return Message.success();
    }

    @RequestMapping(value = "/getModels", method = RequestMethod.GET)
    public Message getModels(@RequestParam(value = "pn", defaultValue = "1") Integer pn, BimModel model) {
        PageHelper.startPage(pn, 10);
        List<BimModel> models = bimModelService.getModels(model);
        PageInfo<?> page = new PageInfo<>(models, 10);
        return Message.success().add("pageInfo", page);
    }

    @RequestMapping(value = "/getModel/{id}", method = RequestMethod.GET)
    public Message getModel(@PathVariable("id") Integer id) {
        BimModel model = bimModelService.getModel(id);
        return Message.success().add("model", model);
    }

    @RequestMapping(value = "/updateModel/{id}", method = RequestMethod.PUT)
    public Message updateModel(BimModel model) {
        bimModelService.updateModel(model);
        return Message.success();
    }

    @RequestMapping(value = "/delModel/{id}", method = RequestMethod.DELETE)
    public Message delModel(@PathVariable("id") Integer id) {
        bimModelService.delModel(id);
        return Message.success();
    }

    /**
     * 模型集成
     */
    @RequestMapping(value = "/integrationModel/{ids}", method = RequestMethod.POST)
    public Message integrationModel(@PathVariable("ids") String ids) {
        bimModelService.integrationModel(ids);
        return Message.success();
    }
}
