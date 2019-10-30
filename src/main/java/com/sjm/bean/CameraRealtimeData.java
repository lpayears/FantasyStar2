package com.sjm.bean;

import java.util.Date;

public class CameraRealtimeData {
    private Integer id;

    private Integer logicId;

    private Date startTime;

    private String connect;

    private String path;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getLogicId() {
        return logicId;
    }

    public void setLogicId(Integer logicId) {
        this.logicId = logicId;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public String getConnect() {
        return connect;
    }

    public void setConnect(String connect) {
        this.connect = connect == null ? null : connect.trim();
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path == null ? null : path.trim();
    }
}