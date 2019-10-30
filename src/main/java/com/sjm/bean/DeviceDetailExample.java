package com.sjm.bean;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class DeviceDetailExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public DeviceDetailExample() {
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

        protected void addCriterionForJDBCDate(String condition, Date value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value.getTime()), property);
        }

        protected void addCriterionForJDBCDate(String condition, List<Date> values, String property) {
            if (values == null || values.size() == 0) {
                throw new RuntimeException("Value list for " + property + " cannot be null or empty");
            }
            List<java.sql.Date> dateList = new ArrayList<java.sql.Date>();
            Iterator<Date> iter = values.iterator();
            while (iter.hasNext()) {
                dateList.add(new java.sql.Date(iter.next().getTime()));
            }
            addCriterion(condition, dateList, property);
        }

        protected void addCriterionForJDBCDate(String condition, Date value1, Date value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value1.getTime()), new java.sql.Date(value2.getTime()), property);
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

        public Criteria andTypeIsNull() {
            addCriterion("type is null");
            return (Criteria) this;
        }

        public Criteria andTypeIsNotNull() {
            addCriterion("type is not null");
            return (Criteria) this;
        }

        public Criteria andTypeEqualTo(String value) {
            addCriterion("type =", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeNotEqualTo(String value) {
            addCriterion("type <>", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeGreaterThan(String value) {
            addCriterion("type >", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeGreaterThanOrEqualTo(String value) {
            addCriterion("type >=", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeLessThan(String value) {
            addCriterion("type <", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeLessThanOrEqualTo(String value) {
            addCriterion("type <=", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeLike(String value) {
            addCriterion("type like", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeNotLike(String value) {
            addCriterion("type not like", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeIn(List<String> values) {
            addCriterion("type in", values, "type");
            return (Criteria) this;
        }

        public Criteria andTypeNotIn(List<String> values) {
            addCriterion("type not in", values, "type");
            return (Criteria) this;
        }

        public Criteria andTypeBetween(String value1, String value2) {
            addCriterion("type between", value1, value2, "type");
            return (Criteria) this;
        }

        public Criteria andTypeNotBetween(String value1, String value2) {
            addCriterion("type not between", value1, value2, "type");
            return (Criteria) this;
        }

        public Criteria andApplyFactoryIsNull() {
            addCriterion("apply_factory is null");
            return (Criteria) this;
        }

        public Criteria andApplyFactoryIsNotNull() {
            addCriterion("apply_factory is not null");
            return (Criteria) this;
        }

        public Criteria andApplyFactoryEqualTo(String value) {
            addCriterion("apply_factory =", value, "applyFactory");
            return (Criteria) this;
        }

        public Criteria andApplyFactoryNotEqualTo(String value) {
            addCriterion("apply_factory <>", value, "applyFactory");
            return (Criteria) this;
        }

        public Criteria andApplyFactoryGreaterThan(String value) {
            addCriterion("apply_factory >", value, "applyFactory");
            return (Criteria) this;
        }

        public Criteria andApplyFactoryGreaterThanOrEqualTo(String value) {
            addCriterion("apply_factory >=", value, "applyFactory");
            return (Criteria) this;
        }

        public Criteria andApplyFactoryLessThan(String value) {
            addCriterion("apply_factory <", value, "applyFactory");
            return (Criteria) this;
        }

        public Criteria andApplyFactoryLessThanOrEqualTo(String value) {
            addCriterion("apply_factory <=", value, "applyFactory");
            return (Criteria) this;
        }

        public Criteria andApplyFactoryLike(String value) {
            addCriterion("apply_factory like", value, "applyFactory");
            return (Criteria) this;
        }

        public Criteria andApplyFactoryNotLike(String value) {
            addCriterion("apply_factory not like", value, "applyFactory");
            return (Criteria) this;
        }

        public Criteria andApplyFactoryIn(List<String> values) {
            addCriterion("apply_factory in", values, "applyFactory");
            return (Criteria) this;
        }

        public Criteria andApplyFactoryNotIn(List<String> values) {
            addCriterion("apply_factory not in", values, "applyFactory");
            return (Criteria) this;
        }

        public Criteria andApplyFactoryBetween(String value1, String value2) {
            addCriterion("apply_factory between", value1, value2, "applyFactory");
            return (Criteria) this;
        }

        public Criteria andApplyFactoryNotBetween(String value1, String value2) {
            addCriterion("apply_factory not between", value1, value2, "applyFactory");
            return (Criteria) this;
        }

        public Criteria andLeaveFactoryNoIsNull() {
            addCriterion("leave_factory_no is null");
            return (Criteria) this;
        }

        public Criteria andLeaveFactoryNoIsNotNull() {
            addCriterion("leave_factory_no is not null");
            return (Criteria) this;
        }

        public Criteria andLeaveFactoryNoEqualTo(String value) {
            addCriterion("leave_factory_no =", value, "leaveFactoryNo");
            return (Criteria) this;
        }

        public Criteria andLeaveFactoryNoNotEqualTo(String value) {
            addCriterion("leave_factory_no <>", value, "leaveFactoryNo");
            return (Criteria) this;
        }

        public Criteria andLeaveFactoryNoGreaterThan(String value) {
            addCriterion("leave_factory_no >", value, "leaveFactoryNo");
            return (Criteria) this;
        }

        public Criteria andLeaveFactoryNoGreaterThanOrEqualTo(String value) {
            addCriterion("leave_factory_no >=", value, "leaveFactoryNo");
            return (Criteria) this;
        }

        public Criteria andLeaveFactoryNoLessThan(String value) {
            addCriterion("leave_factory_no <", value, "leaveFactoryNo");
            return (Criteria) this;
        }

        public Criteria andLeaveFactoryNoLessThanOrEqualTo(String value) {
            addCriterion("leave_factory_no <=", value, "leaveFactoryNo");
            return (Criteria) this;
        }

        public Criteria andLeaveFactoryNoLike(String value) {
            addCriterion("leave_factory_no like", value, "leaveFactoryNo");
            return (Criteria) this;
        }

        public Criteria andLeaveFactoryNoNotLike(String value) {
            addCriterion("leave_factory_no not like", value, "leaveFactoryNo");
            return (Criteria) this;
        }

        public Criteria andLeaveFactoryNoIn(List<String> values) {
            addCriterion("leave_factory_no in", values, "leaveFactoryNo");
            return (Criteria) this;
        }

        public Criteria andLeaveFactoryNoNotIn(List<String> values) {
            addCriterion("leave_factory_no not in", values, "leaveFactoryNo");
            return (Criteria) this;
        }

        public Criteria andLeaveFactoryNoBetween(String value1, String value2) {
            addCriterion("leave_factory_no between", value1, value2, "leaveFactoryNo");
            return (Criteria) this;
        }

        public Criteria andLeaveFactoryNoNotBetween(String value1, String value2) {
            addCriterion("leave_factory_no not between", value1, value2, "leaveFactoryNo");
            return (Criteria) this;
        }

        public Criteria andLeaveFactoryDateIsNull() {
            addCriterion("leave_factory_date is null");
            return (Criteria) this;
        }

        public Criteria andLeaveFactoryDateIsNotNull() {
            addCriterion("leave_factory_date is not null");
            return (Criteria) this;
        }

        public Criteria andLeaveFactoryDateEqualTo(Date value) {
            addCriterionForJDBCDate("leave_factory_date =", value, "leaveFactoryDate");
            return (Criteria) this;
        }

        public Criteria andLeaveFactoryDateNotEqualTo(Date value) {
            addCriterionForJDBCDate("leave_factory_date <>", value, "leaveFactoryDate");
            return (Criteria) this;
        }

        public Criteria andLeaveFactoryDateGreaterThan(Date value) {
            addCriterionForJDBCDate("leave_factory_date >", value, "leaveFactoryDate");
            return (Criteria) this;
        }

        public Criteria andLeaveFactoryDateGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("leave_factory_date >=", value, "leaveFactoryDate");
            return (Criteria) this;
        }

        public Criteria andLeaveFactoryDateLessThan(Date value) {
            addCriterionForJDBCDate("leave_factory_date <", value, "leaveFactoryDate");
            return (Criteria) this;
        }

        public Criteria andLeaveFactoryDateLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("leave_factory_date <=", value, "leaveFactoryDate");
            return (Criteria) this;
        }

        public Criteria andLeaveFactoryDateIn(List<Date> values) {
            addCriterionForJDBCDate("leave_factory_date in", values, "leaveFactoryDate");
            return (Criteria) this;
        }

        public Criteria andLeaveFactoryDateNotIn(List<Date> values) {
            addCriterionForJDBCDate("leave_factory_date not in", values, "leaveFactoryDate");
            return (Criteria) this;
        }

        public Criteria andLeaveFactoryDateBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("leave_factory_date between", value1, value2, "leaveFactoryDate");
            return (Criteria) this;
        }

        public Criteria andLeaveFactoryDateNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("leave_factory_date not between", value1, value2, "leaveFactoryDate");
            return (Criteria) this;
        }

        public Criteria andInstallDateIsNull() {
            addCriterion("install_date is null");
            return (Criteria) this;
        }

        public Criteria andInstallDateIsNotNull() {
            addCriterion("install_date is not null");
            return (Criteria) this;
        }

        public Criteria andInstallDateEqualTo(Date value) {
            addCriterionForJDBCDate("install_date =", value, "installDate");
            return (Criteria) this;
        }

        public Criteria andInstallDateNotEqualTo(Date value) {
            addCriterionForJDBCDate("install_date <>", value, "installDate");
            return (Criteria) this;
        }

        public Criteria andInstallDateGreaterThan(Date value) {
            addCriterionForJDBCDate("install_date >", value, "installDate");
            return (Criteria) this;
        }

        public Criteria andInstallDateGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("install_date >=", value, "installDate");
            return (Criteria) this;
        }

        public Criteria andInstallDateLessThan(Date value) {
            addCriterionForJDBCDate("install_date <", value, "installDate");
            return (Criteria) this;
        }

        public Criteria andInstallDateLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("install_date <=", value, "installDate");
            return (Criteria) this;
        }

        public Criteria andInstallDateIn(List<Date> values) {
            addCriterionForJDBCDate("install_date in", values, "installDate");
            return (Criteria) this;
        }

        public Criteria andInstallDateNotIn(List<Date> values) {
            addCriterionForJDBCDate("install_date not in", values, "installDate");
            return (Criteria) this;
        }

        public Criteria andInstallDateBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("install_date between", value1, value2, "installDate");
            return (Criteria) this;
        }

        public Criteria andInstallDateNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("install_date not between", value1, value2, "installDate");
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

        public Criteria andAvailableYearIsNull() {
            addCriterion("available_year is null");
            return (Criteria) this;
        }

        public Criteria andAvailableYearIsNotNull() {
            addCriterion("available_year is not null");
            return (Criteria) this;
        }

        public Criteria andAvailableYearEqualTo(Integer value) {
            addCriterion("available_year =", value, "availableYear");
            return (Criteria) this;
        }

        public Criteria andAvailableYearNotEqualTo(Integer value) {
            addCriterion("available_year <>", value, "availableYear");
            return (Criteria) this;
        }

        public Criteria andAvailableYearGreaterThan(Integer value) {
            addCriterion("available_year >", value, "availableYear");
            return (Criteria) this;
        }

        public Criteria andAvailableYearGreaterThanOrEqualTo(Integer value) {
            addCriterion("available_year >=", value, "availableYear");
            return (Criteria) this;
        }

        public Criteria andAvailableYearLessThan(Integer value) {
            addCriterion("available_year <", value, "availableYear");
            return (Criteria) this;
        }

        public Criteria andAvailableYearLessThanOrEqualTo(Integer value) {
            addCriterion("available_year <=", value, "availableYear");
            return (Criteria) this;
        }

        public Criteria andAvailableYearIn(List<Integer> values) {
            addCriterion("available_year in", values, "availableYear");
            return (Criteria) this;
        }

        public Criteria andAvailableYearNotIn(List<Integer> values) {
            addCriterion("available_year not in", values, "availableYear");
            return (Criteria) this;
        }

        public Criteria andAvailableYearBetween(Integer value1, Integer value2) {
            addCriterion("available_year between", value1, value2, "availableYear");
            return (Criteria) this;
        }

        public Criteria andAvailableYearNotBetween(Integer value1, Integer value2) {
            addCriterion("available_year not between", value1, value2, "availableYear");
            return (Criteria) this;
        }

        public Criteria andEtcIsNull() {
            addCriterion("etc is null");
            return (Criteria) this;
        }

        public Criteria andEtcIsNotNull() {
            addCriterion("etc is not null");
            return (Criteria) this;
        }

        public Criteria andEtcEqualTo(String value) {
            addCriterion("etc =", value, "etc");
            return (Criteria) this;
        }

        public Criteria andEtcNotEqualTo(String value) {
            addCriterion("etc <>", value, "etc");
            return (Criteria) this;
        }

        public Criteria andEtcGreaterThan(String value) {
            addCriterion("etc >", value, "etc");
            return (Criteria) this;
        }

        public Criteria andEtcGreaterThanOrEqualTo(String value) {
            addCriterion("etc >=", value, "etc");
            return (Criteria) this;
        }

        public Criteria andEtcLessThan(String value) {
            addCriterion("etc <", value, "etc");
            return (Criteria) this;
        }

        public Criteria andEtcLessThanOrEqualTo(String value) {
            addCriterion("etc <=", value, "etc");
            return (Criteria) this;
        }

        public Criteria andEtcLike(String value) {
            addCriterion("etc like", value, "etc");
            return (Criteria) this;
        }

        public Criteria andEtcNotLike(String value) {
            addCriterion("etc not like", value, "etc");
            return (Criteria) this;
        }

        public Criteria andEtcIn(List<String> values) {
            addCriterion("etc in", values, "etc");
            return (Criteria) this;
        }

        public Criteria andEtcNotIn(List<String> values) {
            addCriterion("etc not in", values, "etc");
            return (Criteria) this;
        }

        public Criteria andEtcBetween(String value1, String value2) {
            addCriterion("etc between", value1, value2, "etc");
            return (Criteria) this;
        }

        public Criteria andEtcNotBetween(String value1, String value2) {
            addCriterion("etc not between", value1, value2, "etc");
            return (Criteria) this;
        }

        public Criteria andStartDateIsNull() {
            addCriterion("start_date is null");
            return (Criteria) this;
        }

        public Criteria andStartDateIsNotNull() {
            addCriterion("start_date is not null");
            return (Criteria) this;
        }

        public Criteria andStartDateEqualTo(Date value) {
            addCriterion("start_date =", value, "startDate");
            return (Criteria) this;
        }

        public Criteria andStartDateNotEqualTo(Date value) {
            addCriterion("start_date <>", value, "startDate");
            return (Criteria) this;
        }

        public Criteria andStartDateGreaterThan(Date value) {
            addCriterion("start_date >", value, "startDate");
            return (Criteria) this;
        }

        public Criteria andStartDateGreaterThanOrEqualTo(Date value) {
            addCriterion("start_date >=", value, "startDate");
            return (Criteria) this;
        }

        public Criteria andStartDateLessThan(Date value) {
            addCriterion("start_date <", value, "startDate");
            return (Criteria) this;
        }

        public Criteria andStartDateLessThanOrEqualTo(Date value) {
            addCriterion("start_date <=", value, "startDate");
            return (Criteria) this;
        }

        public Criteria andStartDateIn(List<Date> values) {
            addCriterion("start_date in", values, "startDate");
            return (Criteria) this;
        }

        public Criteria andStartDateNotIn(List<Date> values) {
            addCriterion("start_date not in", values, "startDate");
            return (Criteria) this;
        }

        public Criteria andStartDateBetween(Date value1, Date value2) {
            addCriterion("start_date between", value1, value2, "startDate");
            return (Criteria) this;
        }

        public Criteria andStartDateNotBetween(Date value1, Date value2) {
            addCriterion("start_date not between", value1, value2, "startDate");
            return (Criteria) this;
        }

        public Criteria andRatedVoltageIsNull() {
            addCriterion("rated_voltage is null");
            return (Criteria) this;
        }

        public Criteria andRatedVoltageIsNotNull() {
            addCriterion("rated_voltage is not null");
            return (Criteria) this;
        }

        public Criteria andRatedVoltageEqualTo(String value) {
            addCriterion("rated_voltage =", value, "ratedVoltage");
            return (Criteria) this;
        }

        public Criteria andRatedVoltageNotEqualTo(String value) {
            addCriterion("rated_voltage <>", value, "ratedVoltage");
            return (Criteria) this;
        }

        public Criteria andRatedVoltageGreaterThan(String value) {
            addCriterion("rated_voltage >", value, "ratedVoltage");
            return (Criteria) this;
        }

        public Criteria andRatedVoltageGreaterThanOrEqualTo(String value) {
            addCriterion("rated_voltage >=", value, "ratedVoltage");
            return (Criteria) this;
        }

        public Criteria andRatedVoltageLessThan(String value) {
            addCriterion("rated_voltage <", value, "ratedVoltage");
            return (Criteria) this;
        }

        public Criteria andRatedVoltageLessThanOrEqualTo(String value) {
            addCriterion("rated_voltage <=", value, "ratedVoltage");
            return (Criteria) this;
        }

        public Criteria andRatedVoltageLike(String value) {
            addCriterion("rated_voltage like", value, "ratedVoltage");
            return (Criteria) this;
        }

        public Criteria andRatedVoltageNotLike(String value) {
            addCriterion("rated_voltage not like", value, "ratedVoltage");
            return (Criteria) this;
        }

        public Criteria andRatedVoltageIn(List<String> values) {
            addCriterion("rated_voltage in", values, "ratedVoltage");
            return (Criteria) this;
        }

        public Criteria andRatedVoltageNotIn(List<String> values) {
            addCriterion("rated_voltage not in", values, "ratedVoltage");
            return (Criteria) this;
        }

        public Criteria andRatedVoltageBetween(String value1, String value2) {
            addCriterion("rated_voltage between", value1, value2, "ratedVoltage");
            return (Criteria) this;
        }

        public Criteria andRatedVoltageNotBetween(String value1, String value2) {
            addCriterion("rated_voltage not between", value1, value2, "ratedVoltage");
            return (Criteria) this;
        }

        public Criteria andRatedFrequencyIsNull() {
            addCriterion("rated_frequency is null");
            return (Criteria) this;
        }

        public Criteria andRatedFrequencyIsNotNull() {
            addCriterion("rated_frequency is not null");
            return (Criteria) this;
        }

        public Criteria andRatedFrequencyEqualTo(String value) {
            addCriterion("rated_frequency =", value, "ratedFrequency");
            return (Criteria) this;
        }

        public Criteria andRatedFrequencyNotEqualTo(String value) {
            addCriterion("rated_frequency <>", value, "ratedFrequency");
            return (Criteria) this;
        }

        public Criteria andRatedFrequencyGreaterThan(String value) {
            addCriterion("rated_frequency >", value, "ratedFrequency");
            return (Criteria) this;
        }

        public Criteria andRatedFrequencyGreaterThanOrEqualTo(String value) {
            addCriterion("rated_frequency >=", value, "ratedFrequency");
            return (Criteria) this;
        }

        public Criteria andRatedFrequencyLessThan(String value) {
            addCriterion("rated_frequency <", value, "ratedFrequency");
            return (Criteria) this;
        }

        public Criteria andRatedFrequencyLessThanOrEqualTo(String value) {
            addCriterion("rated_frequency <=", value, "ratedFrequency");
            return (Criteria) this;
        }

        public Criteria andRatedFrequencyLike(String value) {
            addCriterion("rated_frequency like", value, "ratedFrequency");
            return (Criteria) this;
        }

        public Criteria andRatedFrequencyNotLike(String value) {
            addCriterion("rated_frequency not like", value, "ratedFrequency");
            return (Criteria) this;
        }

        public Criteria andRatedFrequencyIn(List<String> values) {
            addCriterion("rated_frequency in", values, "ratedFrequency");
            return (Criteria) this;
        }

        public Criteria andRatedFrequencyNotIn(List<String> values) {
            addCriterion("rated_frequency not in", values, "ratedFrequency");
            return (Criteria) this;
        }

        public Criteria andRatedFrequencyBetween(String value1, String value2) {
            addCriterion("rated_frequency between", value1, value2, "ratedFrequency");
            return (Criteria) this;
        }

        public Criteria andRatedFrequencyNotBetween(String value1, String value2) {
            addCriterion("rated_frequency not between", value1, value2, "ratedFrequency");
            return (Criteria) this;
        }

        public Criteria andRatedCurrentIsNull() {
            addCriterion("rated_current is null");
            return (Criteria) this;
        }

        public Criteria andRatedCurrentIsNotNull() {
            addCriterion("rated_current is not null");
            return (Criteria) this;
        }

        public Criteria andRatedCurrentEqualTo(String value) {
            addCriterion("rated_current =", value, "ratedCurrent");
            return (Criteria) this;
        }

        public Criteria andRatedCurrentNotEqualTo(String value) {
            addCriterion("rated_current <>", value, "ratedCurrent");
            return (Criteria) this;
        }

        public Criteria andRatedCurrentGreaterThan(String value) {
            addCriterion("rated_current >", value, "ratedCurrent");
            return (Criteria) this;
        }

        public Criteria andRatedCurrentGreaterThanOrEqualTo(String value) {
            addCriterion("rated_current >=", value, "ratedCurrent");
            return (Criteria) this;
        }

        public Criteria andRatedCurrentLessThan(String value) {
            addCriterion("rated_current <", value, "ratedCurrent");
            return (Criteria) this;
        }

        public Criteria andRatedCurrentLessThanOrEqualTo(String value) {
            addCriterion("rated_current <=", value, "ratedCurrent");
            return (Criteria) this;
        }

        public Criteria andRatedCurrentLike(String value) {
            addCriterion("rated_current like", value, "ratedCurrent");
            return (Criteria) this;
        }

        public Criteria andRatedCurrentNotLike(String value) {
            addCriterion("rated_current not like", value, "ratedCurrent");
            return (Criteria) this;
        }

        public Criteria andRatedCurrentIn(List<String> values) {
            addCriterion("rated_current in", values, "ratedCurrent");
            return (Criteria) this;
        }

        public Criteria andRatedCurrentNotIn(List<String> values) {
            addCriterion("rated_current not in", values, "ratedCurrent");
            return (Criteria) this;
        }

        public Criteria andRatedCurrentBetween(String value1, String value2) {
            addCriterion("rated_current between", value1, value2, "ratedCurrent");
            return (Criteria) this;
        }

        public Criteria andRatedCurrentNotBetween(String value1, String value2) {
            addCriterion("rated_current not between", value1, value2, "ratedCurrent");
            return (Criteria) this;
        }

        public Criteria andApplyPhoneIsNull() {
            addCriterion("apply_phone is null");
            return (Criteria) this;
        }

        public Criteria andApplyPhoneIsNotNull() {
            addCriterion("apply_phone is not null");
            return (Criteria) this;
        }

        public Criteria andApplyPhoneEqualTo(String value) {
            addCriterion("apply_phone =", value, "applyPhone");
            return (Criteria) this;
        }

        public Criteria andApplyPhoneNotEqualTo(String value) {
            addCriterion("apply_phone <>", value, "applyPhone");
            return (Criteria) this;
        }

        public Criteria andApplyPhoneGreaterThan(String value) {
            addCriterion("apply_phone >", value, "applyPhone");
            return (Criteria) this;
        }

        public Criteria andApplyPhoneGreaterThanOrEqualTo(String value) {
            addCriterion("apply_phone >=", value, "applyPhone");
            return (Criteria) this;
        }

        public Criteria andApplyPhoneLessThan(String value) {
            addCriterion("apply_phone <", value, "applyPhone");
            return (Criteria) this;
        }

        public Criteria andApplyPhoneLessThanOrEqualTo(String value) {
            addCriterion("apply_phone <=", value, "applyPhone");
            return (Criteria) this;
        }

        public Criteria andApplyPhoneLike(String value) {
            addCriterion("apply_phone like", value, "applyPhone");
            return (Criteria) this;
        }

        public Criteria andApplyPhoneNotLike(String value) {
            addCriterion("apply_phone not like", value, "applyPhone");
            return (Criteria) this;
        }

        public Criteria andApplyPhoneIn(List<String> values) {
            addCriterion("apply_phone in", values, "applyPhone");
            return (Criteria) this;
        }

        public Criteria andApplyPhoneNotIn(List<String> values) {
            addCriterion("apply_phone not in", values, "applyPhone");
            return (Criteria) this;
        }

        public Criteria andApplyPhoneBetween(String value1, String value2) {
            addCriterion("apply_phone between", value1, value2, "applyPhone");
            return (Criteria) this;
        }

        public Criteria andApplyPhoneNotBetween(String value1, String value2) {
            addCriterion("apply_phone not between", value1, value2, "applyPhone");
            return (Criteria) this;
        }

        public Criteria andProduceContraryIsNull() {
            addCriterion("produce_contrary is null");
            return (Criteria) this;
        }

        public Criteria andProduceContraryIsNotNull() {
            addCriterion("produce_contrary is not null");
            return (Criteria) this;
        }

        public Criteria andProduceContraryEqualTo(String value) {
            addCriterion("produce_contrary =", value, "produceContrary");
            return (Criteria) this;
        }

        public Criteria andProduceContraryNotEqualTo(String value) {
            addCriterion("produce_contrary <>", value, "produceContrary");
            return (Criteria) this;
        }

        public Criteria andProduceContraryGreaterThan(String value) {
            addCriterion("produce_contrary >", value, "produceContrary");
            return (Criteria) this;
        }

        public Criteria andProduceContraryGreaterThanOrEqualTo(String value) {
            addCriterion("produce_contrary >=", value, "produceContrary");
            return (Criteria) this;
        }

        public Criteria andProduceContraryLessThan(String value) {
            addCriterion("produce_contrary <", value, "produceContrary");
            return (Criteria) this;
        }

        public Criteria andProduceContraryLessThanOrEqualTo(String value) {
            addCriterion("produce_contrary <=", value, "produceContrary");
            return (Criteria) this;
        }

        public Criteria andProduceContraryLike(String value) {
            addCriterion("produce_contrary like", value, "produceContrary");
            return (Criteria) this;
        }

        public Criteria andProduceContraryNotLike(String value) {
            addCriterion("produce_contrary not like", value, "produceContrary");
            return (Criteria) this;
        }

        public Criteria andProduceContraryIn(List<String> values) {
            addCriterion("produce_contrary in", values, "produceContrary");
            return (Criteria) this;
        }

        public Criteria andProduceContraryNotIn(List<String> values) {
            addCriterion("produce_contrary not in", values, "produceContrary");
            return (Criteria) this;
        }

        public Criteria andProduceContraryBetween(String value1, String value2) {
            addCriterion("produce_contrary between", value1, value2, "produceContrary");
            return (Criteria) this;
        }

        public Criteria andProduceContraryNotBetween(String value1, String value2) {
            addCriterion("produce_contrary not between", value1, value2, "produceContrary");
            return (Criteria) this;
        }

        public Criteria andEasyBrokenThingIsNull() {
            addCriterion("easy_broken_thing is null");
            return (Criteria) this;
        }

        public Criteria andEasyBrokenThingIsNotNull() {
            addCriterion("easy_broken_thing is not null");
            return (Criteria) this;
        }

        public Criteria andEasyBrokenThingEqualTo(String value) {
            addCriterion("easy_broken_thing =", value, "easyBrokenThing");
            return (Criteria) this;
        }

        public Criteria andEasyBrokenThingNotEqualTo(String value) {
            addCriterion("easy_broken_thing <>", value, "easyBrokenThing");
            return (Criteria) this;
        }

        public Criteria andEasyBrokenThingGreaterThan(String value) {
            addCriterion("easy_broken_thing >", value, "easyBrokenThing");
            return (Criteria) this;
        }

        public Criteria andEasyBrokenThingGreaterThanOrEqualTo(String value) {
            addCriterion("easy_broken_thing >=", value, "easyBrokenThing");
            return (Criteria) this;
        }

        public Criteria andEasyBrokenThingLessThan(String value) {
            addCriterion("easy_broken_thing <", value, "easyBrokenThing");
            return (Criteria) this;
        }

        public Criteria andEasyBrokenThingLessThanOrEqualTo(String value) {
            addCriterion("easy_broken_thing <=", value, "easyBrokenThing");
            return (Criteria) this;
        }

        public Criteria andEasyBrokenThingLike(String value) {
            addCriterion("easy_broken_thing like", value, "easyBrokenThing");
            return (Criteria) this;
        }

        public Criteria andEasyBrokenThingNotLike(String value) {
            addCriterion("easy_broken_thing not like", value, "easyBrokenThing");
            return (Criteria) this;
        }

        public Criteria andEasyBrokenThingIn(List<String> values) {
            addCriterion("easy_broken_thing in", values, "easyBrokenThing");
            return (Criteria) this;
        }

        public Criteria andEasyBrokenThingNotIn(List<String> values) {
            addCriterion("easy_broken_thing not in", values, "easyBrokenThing");
            return (Criteria) this;
        }

        public Criteria andEasyBrokenThingBetween(String value1, String value2) {
            addCriterion("easy_broken_thing between", value1, value2, "easyBrokenThing");
            return (Criteria) this;
        }

        public Criteria andEasyBrokenThingNotBetween(String value1, String value2) {
            addCriterion("easy_broken_thing not between", value1, value2, "easyBrokenThing");
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