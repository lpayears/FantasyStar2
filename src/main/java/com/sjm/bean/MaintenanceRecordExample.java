package com.sjm.bean;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class MaintenanceRecordExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public MaintenanceRecordExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andDeviceNameIsNull() {
            addCriterion("device_name is null");
            return (Criteria) this;
        }

        public Criteria andDeviceNameIsNotNull() {
            addCriterion("device_name is not null");
            return (Criteria) this;
        }

        public Criteria andDeviceNameEqualTo(String value) {
            addCriterion("device_name =", value, "deviceName");
            return (Criteria) this;
        }

        public Criteria andDeviceNameNotEqualTo(String value) {
            addCriterion("device_name <>", value, "deviceName");
            return (Criteria) this;
        }

        public Criteria andDeviceNameGreaterThan(String value) {
            addCriterion("device_name >", value, "deviceName");
            return (Criteria) this;
        }

        public Criteria andDeviceNameGreaterThanOrEqualTo(String value) {
            addCriterion("device_name >=", value, "deviceName");
            return (Criteria) this;
        }

        public Criteria andDeviceNameLessThan(String value) {
            addCriterion("device_name <", value, "deviceName");
            return (Criteria) this;
        }

        public Criteria andDeviceNameLessThanOrEqualTo(String value) {
            addCriterion("device_name <=", value, "deviceName");
            return (Criteria) this;
        }

        public Criteria andDeviceNameLike(String value) {
            addCriterion("device_name like", value, "deviceName");
            return (Criteria) this;
        }

        public Criteria andDeviceNameNotLike(String value) {
            addCriterion("device_name not like", value, "deviceName");
            return (Criteria) this;
        }

        public Criteria andDeviceNameIn(List<String> values) {
            addCriterion("device_name in", values, "deviceName");
            return (Criteria) this;
        }

        public Criteria andDeviceNameNotIn(List<String> values) {
            addCriterion("device_name not in", values, "deviceName");
            return (Criteria) this;
        }

        public Criteria andDeviceNameBetween(String value1, String value2) {
            addCriterion("device_name between", value1, value2, "deviceName");
            return (Criteria) this;
        }

        public Criteria andDeviceNameNotBetween(String value1, String value2) {
            addCriterion("device_name not between", value1, value2, "deviceName");
            return (Criteria) this;
        }

        public Criteria andOuNameIsNull() {
            addCriterion("ou_name is null");
            return (Criteria) this;
        }

        public Criteria andOuNameIsNotNull() {
            addCriterion("ou_name is not null");
            return (Criteria) this;
        }

        public Criteria andOuNameEqualTo(String value) {
            addCriterion("ou_name =", value, "ouName");
            return (Criteria) this;
        }

        public Criteria andOuNameNotEqualTo(String value) {
            addCriterion("ou_name <>", value, "ouName");
            return (Criteria) this;
        }

        public Criteria andOuNameGreaterThan(String value) {
            addCriterion("ou_name >", value, "ouName");
            return (Criteria) this;
        }

        public Criteria andOuNameGreaterThanOrEqualTo(String value) {
            addCriterion("ou_name >=", value, "ouName");
            return (Criteria) this;
        }

        public Criteria andOuNameLessThan(String value) {
            addCriterion("ou_name <", value, "ouName");
            return (Criteria) this;
        }

        public Criteria andOuNameLessThanOrEqualTo(String value) {
            addCriterion("ou_name <=", value, "ouName");
            return (Criteria) this;
        }

        public Criteria andOuNameLike(String value) {
            addCriterion("ou_name like", value, "ouName");
            return (Criteria) this;
        }

        public Criteria andOuNameNotLike(String value) {
            addCriterion("ou_name not like", value, "ouName");
            return (Criteria) this;
        }

        public Criteria andOuNameIn(List<String> values) {
            addCriterion("ou_name in", values, "ouName");
            return (Criteria) this;
        }

        public Criteria andOuNameNotIn(List<String> values) {
            addCriterion("ou_name not in", values, "ouName");
            return (Criteria) this;
        }

        public Criteria andOuNameBetween(String value1, String value2) {
            addCriterion("ou_name between", value1, value2, "ouName");
            return (Criteria) this;
        }

        public Criteria andOuNameNotBetween(String value1, String value2) {
            addCriterion("ou_name not between", value1, value2, "ouName");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIsNull() {
            addCriterion("create_time is null");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIsNotNull() {
            addCriterion("create_time is not null");
            return (Criteria) this;
        }

        public Criteria andCreateTimeEqualTo(Date value) {
            addCriterion("create_time =", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotEqualTo(Date value) {
            addCriterion("create_time <>", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeGreaterThan(Date value) {
            addCriterion("create_time >", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("create_time >=", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeLessThan(Date value) {
            addCriterion("create_time <", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeLessThanOrEqualTo(Date value) {
            addCriterion("create_time <=", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIn(List<Date> values) {
            addCriterion("create_time in", values, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotIn(List<Date> values) {
            addCriterion("create_time not in", values, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeBetween(Date value1, Date value2) {
            addCriterion("create_time between", value1, value2, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotBetween(Date value1, Date value2) {
            addCriterion("create_time not between", value1, value2, "createTime");
            return (Criteria) this;
        }

        public Criteria andContentIsNull() {
            addCriterion("content is null");
            return (Criteria) this;
        }

        public Criteria andContentIsNotNull() {
            addCriterion("content is not null");
            return (Criteria) this;
        }

        public Criteria andContentEqualTo(String value) {
            addCriterion("content =", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentNotEqualTo(String value) {
            addCriterion("content <>", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentGreaterThan(String value) {
            addCriterion("content >", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentGreaterThanOrEqualTo(String value) {
            addCriterion("content >=", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentLessThan(String value) {
            addCriterion("content <", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentLessThanOrEqualTo(String value) {
            addCriterion("content <=", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentLike(String value) {
            addCriterion("content like", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentNotLike(String value) {
            addCriterion("content not like", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentIn(List<String> values) {
            addCriterion("content in", values, "content");
            return (Criteria) this;
        }

        public Criteria andContentNotIn(List<String> values) {
            addCriterion("content not in", values, "content");
            return (Criteria) this;
        }

        public Criteria andContentBetween(String value1, String value2) {
            addCriterion("content between", value1, value2, "content");
            return (Criteria) this;
        }

        public Criteria andContentNotBetween(String value1, String value2) {
            addCriterion("content not between", value1, value2, "content");
            return (Criteria) this;
        }

        public Criteria andMaintenanceTimeIsNull() {
            addCriterion("maintenance_time is null");
            return (Criteria) this;
        }

        public Criteria andMaintenanceTimeIsNotNull() {
            addCriterion("maintenance_time is not null");
            return (Criteria) this;
        }

        public Criteria andMaintenanceTimeEqualTo(Date value) {
            addCriterion("maintenance_time =", value, "maintenanceTime");
            return (Criteria) this;
        }

        public Criteria andMaintenanceTimeNotEqualTo(Date value) {
            addCriterion("maintenance_time <>", value, "maintenanceTime");
            return (Criteria) this;
        }

        public Criteria andMaintenanceTimeGreaterThan(Date value) {
            addCriterion("maintenance_time >", value, "maintenanceTime");
            return (Criteria) this;
        }

        public Criteria andMaintenanceTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("maintenance_time >=", value, "maintenanceTime");
            return (Criteria) this;
        }

        public Criteria andMaintenanceTimeLessThan(Date value) {
            addCriterion("maintenance_time <", value, "maintenanceTime");
            return (Criteria) this;
        }

        public Criteria andMaintenanceTimeLessThanOrEqualTo(Date value) {
            addCriterion("maintenance_time <=", value, "maintenanceTime");
            return (Criteria) this;
        }

        public Criteria andMaintenanceTimeIn(List<Date> values) {
            addCriterion("maintenance_time in", values, "maintenanceTime");
            return (Criteria) this;
        }

        public Criteria andMaintenanceTimeNotIn(List<Date> values) {
            addCriterion("maintenance_time not in", values, "maintenanceTime");
            return (Criteria) this;
        }

        public Criteria andMaintenanceTimeBetween(Date value1, Date value2) {
            addCriterion("maintenance_time between", value1, value2, "maintenanceTime");
            return (Criteria) this;
        }

        public Criteria andMaintenanceTimeNotBetween(Date value1, Date value2) {
            addCriterion("maintenance_time not between", value1, value2, "maintenanceTime");
            return (Criteria) this;
        }

        public Criteria andMaintenanceStatusIsNull() {
            addCriterion("maintenance_status is null");
            return (Criteria) this;
        }

        public Criteria andMaintenanceStatusIsNotNull() {
            addCriterion("maintenance_status is not null");
            return (Criteria) this;
        }

        public Criteria andMaintenanceStatusEqualTo(String value) {
            addCriterion("maintenance_status =", value, "maintenanceStatus");
            return (Criteria) this;
        }

        public Criteria andMaintenanceStatusNotEqualTo(String value) {
            addCriterion("maintenance_status <>", value, "maintenanceStatus");
            return (Criteria) this;
        }

        public Criteria andMaintenanceStatusGreaterThan(String value) {
            addCriterion("maintenance_status >", value, "maintenanceStatus");
            return (Criteria) this;
        }

        public Criteria andMaintenanceStatusGreaterThanOrEqualTo(String value) {
            addCriterion("maintenance_status >=", value, "maintenanceStatus");
            return (Criteria) this;
        }

        public Criteria andMaintenanceStatusLessThan(String value) {
            addCriterion("maintenance_status <", value, "maintenanceStatus");
            return (Criteria) this;
        }

        public Criteria andMaintenanceStatusLessThanOrEqualTo(String value) {
            addCriterion("maintenance_status <=", value, "maintenanceStatus");
            return (Criteria) this;
        }

        public Criteria andMaintenanceStatusLike(String value) {
            addCriterion("maintenance_status like", value, "maintenanceStatus");
            return (Criteria) this;
        }

        public Criteria andMaintenanceStatusNotLike(String value) {
            addCriterion("maintenance_status not like", value, "maintenanceStatus");
            return (Criteria) this;
        }

        public Criteria andMaintenanceStatusIn(List<String> values) {
            addCriterion("maintenance_status in", values, "maintenanceStatus");
            return (Criteria) this;
        }

        public Criteria andMaintenanceStatusNotIn(List<String> values) {
            addCriterion("maintenance_status not in", values, "maintenanceStatus");
            return (Criteria) this;
        }

        public Criteria andMaintenanceStatusBetween(String value1, String value2) {
            addCriterion("maintenance_status between", value1, value2, "maintenanceStatus");
            return (Criteria) this;
        }

        public Criteria andMaintenanceStatusNotBetween(String value1, String value2) {
            addCriterion("maintenance_status not between", value1, value2, "maintenanceStatus");
            return (Criteria) this;
        }

        public Criteria andLogicIdIsNull() {
            addCriterion("logic_id is null");
            return (Criteria) this;
        }

        public Criteria andLogicIdIsNotNull() {
            addCriterion("logic_id is not null");
            return (Criteria) this;
        }

        public Criteria andLogicIdEqualTo(Integer value) {
            addCriterion("logic_id =", value, "logicId");
            return (Criteria) this;
        }

        public Criteria andLogicIdNotEqualTo(Integer value) {
            addCriterion("logic_id <>", value, "logicId");
            return (Criteria) this;
        }

        public Criteria andLogicIdGreaterThan(Integer value) {
            addCriterion("logic_id >", value, "logicId");
            return (Criteria) this;
        }

        public Criteria andLogicIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("logic_id >=", value, "logicId");
            return (Criteria) this;
        }

        public Criteria andLogicIdLessThan(Integer value) {
            addCriterion("logic_id <", value, "logicId");
            return (Criteria) this;
        }

        public Criteria andLogicIdLessThanOrEqualTo(Integer value) {
            addCriterion("logic_id <=", value, "logicId");
            return (Criteria) this;
        }

        public Criteria andLogicIdIn(List<Integer> values) {
            addCriterion("logic_id in", values, "logicId");
            return (Criteria) this;
        }

        public Criteria andLogicIdNotIn(List<Integer> values) {
            addCriterion("logic_id not in", values, "logicId");
            return (Criteria) this;
        }

        public Criteria andLogicIdBetween(Integer value1, Integer value2) {
            addCriterion("logic_id between", value1, value2, "logicId");
            return (Criteria) this;
        }

        public Criteria andLogicIdNotBetween(Integer value1, Integer value2) {
            addCriterion("logic_id not between", value1, value2, "logicId");
            return (Criteria) this;
        }

        public Criteria andPositionIsNull() {
            addCriterion("position is null");
            return (Criteria) this;
        }

        public Criteria andPositionIsNotNull() {
            addCriterion("position is not null");
            return (Criteria) this;
        }

        public Criteria andPositionEqualTo(String value) {
            addCriterion("position =", value, "position");
            return (Criteria) this;
        }

        public Criteria andPositionNotEqualTo(String value) {
            addCriterion("position <>", value, "position");
            return (Criteria) this;
        }

        public Criteria andPositionGreaterThan(String value) {
            addCriterion("position >", value, "position");
            return (Criteria) this;
        }

        public Criteria andPositionGreaterThanOrEqualTo(String value) {
            addCriterion("position >=", value, "position");
            return (Criteria) this;
        }

        public Criteria andPositionLessThan(String value) {
            addCriterion("position <", value, "position");
            return (Criteria) this;
        }

        public Criteria andPositionLessThanOrEqualTo(String value) {
            addCriterion("position <=", value, "position");
            return (Criteria) this;
        }

        public Criteria andPositionLike(String value) {
            addCriterion("position like", value, "position");
            return (Criteria) this;
        }

        public Criteria andPositionNotLike(String value) {
            addCriterion("position not like", value, "position");
            return (Criteria) this;
        }

        public Criteria andPositionIn(List<String> values) {
            addCriterion("position in", values, "position");
            return (Criteria) this;
        }

        public Criteria andPositionNotIn(List<String> values) {
            addCriterion("position not in", values, "position");
            return (Criteria) this;
        }

        public Criteria andPositionBetween(String value1, String value2) {
            addCriterion("position between", value1, value2, "position");
            return (Criteria) this;
        }

        public Criteria andPositionNotBetween(String value1, String value2) {
            addCriterion("position not between", value1, value2, "position");
            return (Criteria) this;
        }

        public Criteria andOuPhoneIsNull() {
            addCriterion("ou_phone is null");
            return (Criteria) this;
        }

        public Criteria andOuPhoneIsNotNull() {
            addCriterion("ou_phone is not null");
            return (Criteria) this;
        }

        public Criteria andOuPhoneEqualTo(String value) {
            addCriterion("ou_phone =", value, "ouPhone");
            return (Criteria) this;
        }

        public Criteria andOuPhoneNotEqualTo(String value) {
            addCriterion("ou_phone <>", value, "ouPhone");
            return (Criteria) this;
        }

        public Criteria andOuPhoneGreaterThan(String value) {
            addCriterion("ou_phone >", value, "ouPhone");
            return (Criteria) this;
        }

        public Criteria andOuPhoneGreaterThanOrEqualTo(String value) {
            addCriterion("ou_phone >=", value, "ouPhone");
            return (Criteria) this;
        }

        public Criteria andOuPhoneLessThan(String value) {
            addCriterion("ou_phone <", value, "ouPhone");
            return (Criteria) this;
        }

        public Criteria andOuPhoneLessThanOrEqualTo(String value) {
            addCriterion("ou_phone <=", value, "ouPhone");
            return (Criteria) this;
        }

        public Criteria andOuPhoneLike(String value) {
            addCriterion("ou_phone like", value, "ouPhone");
            return (Criteria) this;
        }

        public Criteria andOuPhoneNotLike(String value) {
            addCriterion("ou_phone not like", value, "ouPhone");
            return (Criteria) this;
        }

        public Criteria andOuPhoneIn(List<String> values) {
            addCriterion("ou_phone in", values, "ouPhone");
            return (Criteria) this;
        }

        public Criteria andOuPhoneNotIn(List<String> values) {
            addCriterion("ou_phone not in", values, "ouPhone");
            return (Criteria) this;
        }

        public Criteria andOuPhoneBetween(String value1, String value2) {
            addCriterion("ou_phone between", value1, value2, "ouPhone");
            return (Criteria) this;
        }

        public Criteria andOuPhoneNotBetween(String value1, String value2) {
            addCriterion("ou_phone not between", value1, value2, "ouPhone");
            return (Criteria) this;
        }

        public Criteria andAdminNameIsNull() {
            addCriterion("admin_name is null");
            return (Criteria) this;
        }

        public Criteria andAdminNameIsNotNull() {
            addCriterion("admin_name is not null");
            return (Criteria) this;
        }

        public Criteria andAdminNameEqualTo(String value) {
            addCriterion("admin_name =", value, "adminName");
            return (Criteria) this;
        }

        public Criteria andAdminNameNotEqualTo(String value) {
            addCriterion("admin_name <>", value, "adminName");
            return (Criteria) this;
        }

        public Criteria andAdminNameGreaterThan(String value) {
            addCriterion("admin_name >", value, "adminName");
            return (Criteria) this;
        }

        public Criteria andAdminNameGreaterThanOrEqualTo(String value) {
            addCriterion("admin_name >=", value, "adminName");
            return (Criteria) this;
        }

        public Criteria andAdminNameLessThan(String value) {
            addCriterion("admin_name <", value, "adminName");
            return (Criteria) this;
        }

        public Criteria andAdminNameLessThanOrEqualTo(String value) {
            addCriterion("admin_name <=", value, "adminName");
            return (Criteria) this;
        }

        public Criteria andAdminNameLike(String value) {
            addCriterion("admin_name like", value, "adminName");
            return (Criteria) this;
        }

        public Criteria andAdminNameNotLike(String value) {
            addCriterion("admin_name not like", value, "adminName");
            return (Criteria) this;
        }

        public Criteria andAdminNameIn(List<String> values) {
            addCriterion("admin_name in", values, "adminName");
            return (Criteria) this;
        }

        public Criteria andAdminNameNotIn(List<String> values) {
            addCriterion("admin_name not in", values, "adminName");
            return (Criteria) this;
        }

        public Criteria andAdminNameBetween(String value1, String value2) {
            addCriterion("admin_name between", value1, value2, "adminName");
            return (Criteria) this;
        }

        public Criteria andAdminNameNotBetween(String value1, String value2) {
            addCriterion("admin_name not between", value1, value2, "adminName");
            return (Criteria) this;
        }

        public Criteria andMaintenancePersonIsNull() {
            addCriterion("maintenance_person is null");
            return (Criteria) this;
        }

        public Criteria andMaintenancePersonIsNotNull() {
            addCriterion("maintenance_person is not null");
            return (Criteria) this;
        }

        public Criteria andMaintenancePersonEqualTo(String value) {
            addCriterion("maintenance_person =", value, "maintenancePerson");
            return (Criteria) this;
        }

        public Criteria andMaintenancePersonNotEqualTo(String value) {
            addCriterion("maintenance_person <>", value, "maintenancePerson");
            return (Criteria) this;
        }

        public Criteria andMaintenancePersonGreaterThan(String value) {
            addCriterion("maintenance_person >", value, "maintenancePerson");
            return (Criteria) this;
        }

        public Criteria andMaintenancePersonGreaterThanOrEqualTo(String value) {
            addCriterion("maintenance_person >=", value, "maintenancePerson");
            return (Criteria) this;
        }

        public Criteria andMaintenancePersonLessThan(String value) {
            addCriterion("maintenance_person <", value, "maintenancePerson");
            return (Criteria) this;
        }

        public Criteria andMaintenancePersonLessThanOrEqualTo(String value) {
            addCriterion("maintenance_person <=", value, "maintenancePerson");
            return (Criteria) this;
        }

        public Criteria andMaintenancePersonLike(String value) {
            addCriterion("maintenance_person like", value, "maintenancePerson");
            return (Criteria) this;
        }

        public Criteria andMaintenancePersonNotLike(String value) {
            addCriterion("maintenance_person not like", value, "maintenancePerson");
            return (Criteria) this;
        }

        public Criteria andMaintenancePersonIn(List<String> values) {
            addCriterion("maintenance_person in", values, "maintenancePerson");
            return (Criteria) this;
        }

        public Criteria andMaintenancePersonNotIn(List<String> values) {
            addCriterion("maintenance_person not in", values, "maintenancePerson");
            return (Criteria) this;
        }

        public Criteria andMaintenancePersonBetween(String value1, String value2) {
            addCriterion("maintenance_person between", value1, value2, "maintenancePerson");
            return (Criteria) this;
        }

        public Criteria andMaintenancePersonNotBetween(String value1, String value2) {
            addCriterion("maintenance_person not between", value1, value2, "maintenancePerson");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}