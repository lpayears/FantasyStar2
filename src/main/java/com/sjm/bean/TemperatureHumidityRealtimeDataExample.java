package com.sjm.bean;

import java.util.ArrayList;
import java.util.List;

public class TemperatureHumidityRealtimeDataExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public TemperatureHumidityRealtimeDataExample() {
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

        public Criteria andEnvTemperIsNull() {
            addCriterion("env_temper is null");
            return (Criteria) this;
        }

        public Criteria andEnvTemperIsNotNull() {
            addCriterion("env_temper is not null");
            return (Criteria) this;
        }

        public Criteria andEnvTemperEqualTo(String value) {
            addCriterion("env_temper =", value, "envTemper");
            return (Criteria) this;
        }

        public Criteria andEnvTemperNotEqualTo(String value) {
            addCriterion("env_temper <>", value, "envTemper");
            return (Criteria) this;
        }

        public Criteria andEnvTemperGreaterThan(String value) {
            addCriterion("env_temper >", value, "envTemper");
            return (Criteria) this;
        }

        public Criteria andEnvTemperGreaterThanOrEqualTo(String value) {
            addCriterion("env_temper >=", value, "envTemper");
            return (Criteria) this;
        }

        public Criteria andEnvTemperLessThan(String value) {
            addCriterion("env_temper <", value, "envTemper");
            return (Criteria) this;
        }

        public Criteria andEnvTemperLessThanOrEqualTo(String value) {
            addCriterion("env_temper <=", value, "envTemper");
            return (Criteria) this;
        }

        public Criteria andEnvTemperLike(String value) {
            addCriterion("env_temper like", value, "envTemper");
            return (Criteria) this;
        }

        public Criteria andEnvTemperNotLike(String value) {
            addCriterion("env_temper not like", value, "envTemper");
            return (Criteria) this;
        }

        public Criteria andEnvTemperIn(List<String> values) {
            addCriterion("env_temper in", values, "envTemper");
            return (Criteria) this;
        }

        public Criteria andEnvTemperNotIn(List<String> values) {
            addCriterion("env_temper not in", values, "envTemper");
            return (Criteria) this;
        }

        public Criteria andEnvTemperBetween(String value1, String value2) {
            addCriterion("env_temper between", value1, value2, "envTemper");
            return (Criteria) this;
        }

        public Criteria andEnvTemperNotBetween(String value1, String value2) {
            addCriterion("env_temper not between", value1, value2, "envTemper");
            return (Criteria) this;
        }

        public Criteria andRoomTemperIsNull() {
            addCriterion("room_temper is null");
            return (Criteria) this;
        }

        public Criteria andRoomTemperIsNotNull() {
            addCriterion("room_temper is not null");
            return (Criteria) this;
        }

        public Criteria andRoomTemperEqualTo(String value) {
            addCriterion("room_temper =", value, "roomTemper");
            return (Criteria) this;
        }

        public Criteria andRoomTemperNotEqualTo(String value) {
            addCriterion("room_temper <>", value, "roomTemper");
            return (Criteria) this;
        }

        public Criteria andRoomTemperGreaterThan(String value) {
            addCriterion("room_temper >", value, "roomTemper");
            return (Criteria) this;
        }

        public Criteria andRoomTemperGreaterThanOrEqualTo(String value) {
            addCriterion("room_temper >=", value, "roomTemper");
            return (Criteria) this;
        }

        public Criteria andRoomTemperLessThan(String value) {
            addCriterion("room_temper <", value, "roomTemper");
            return (Criteria) this;
        }

        public Criteria andRoomTemperLessThanOrEqualTo(String value) {
            addCriterion("room_temper <=", value, "roomTemper");
            return (Criteria) this;
        }

        public Criteria andRoomTemperLike(String value) {
            addCriterion("room_temper like", value, "roomTemper");
            return (Criteria) this;
        }

        public Criteria andRoomTemperNotLike(String value) {
            addCriterion("room_temper not like", value, "roomTemper");
            return (Criteria) this;
        }

        public Criteria andRoomTemperIn(List<String> values) {
            addCriterion("room_temper in", values, "roomTemper");
            return (Criteria) this;
        }

        public Criteria andRoomTemperNotIn(List<String> values) {
            addCriterion("room_temper not in", values, "roomTemper");
            return (Criteria) this;
        }

        public Criteria andRoomTemperBetween(String value1, String value2) {
            addCriterion("room_temper between", value1, value2, "roomTemper");
            return (Criteria) this;
        }

        public Criteria andRoomTemperNotBetween(String value1, String value2) {
            addCriterion("room_temper not between", value1, value2, "roomTemper");
            return (Criteria) this;
        }

        public Criteria andAvgRadiationIsNull() {
            addCriterion("avg_radiation is null");
            return (Criteria) this;
        }

        public Criteria andAvgRadiationIsNotNull() {
            addCriterion("avg_radiation is not null");
            return (Criteria) this;
        }

        public Criteria andAvgRadiationEqualTo(String value) {
            addCriterion("avg_radiation =", value, "avgRadiation");
            return (Criteria) this;
        }

        public Criteria andAvgRadiationNotEqualTo(String value) {
            addCriterion("avg_radiation <>", value, "avgRadiation");
            return (Criteria) this;
        }

        public Criteria andAvgRadiationGreaterThan(String value) {
            addCriterion("avg_radiation >", value, "avgRadiation");
            return (Criteria) this;
        }

        public Criteria andAvgRadiationGreaterThanOrEqualTo(String value) {
            addCriterion("avg_radiation >=", value, "avgRadiation");
            return (Criteria) this;
        }

        public Criteria andAvgRadiationLessThan(String value) {
            addCriterion("avg_radiation <", value, "avgRadiation");
            return (Criteria) this;
        }

        public Criteria andAvgRadiationLessThanOrEqualTo(String value) {
            addCriterion("avg_radiation <=", value, "avgRadiation");
            return (Criteria) this;
        }

        public Criteria andAvgRadiationLike(String value) {
            addCriterion("avg_radiation like", value, "avgRadiation");
            return (Criteria) this;
        }

        public Criteria andAvgRadiationNotLike(String value) {
            addCriterion("avg_radiation not like", value, "avgRadiation");
            return (Criteria) this;
        }

        public Criteria andAvgRadiationIn(List<String> values) {
            addCriterion("avg_radiation in", values, "avgRadiation");
            return (Criteria) this;
        }

        public Criteria andAvgRadiationNotIn(List<String> values) {
            addCriterion("avg_radiation not in", values, "avgRadiation");
            return (Criteria) this;
        }

        public Criteria andAvgRadiationBetween(String value1, String value2) {
            addCriterion("avg_radiation between", value1, value2, "avgRadiation");
            return (Criteria) this;
        }

        public Criteria andAvgRadiationNotBetween(String value1, String value2) {
            addCriterion("avg_radiation not between", value1, value2, "avgRadiation");
            return (Criteria) this;
        }

        public Criteria andAirHumidityIsNull() {
            addCriterion("air_humidity is null");
            return (Criteria) this;
        }

        public Criteria andAirHumidityIsNotNull() {
            addCriterion("air_humidity is not null");
            return (Criteria) this;
        }

        public Criteria andAirHumidityEqualTo(String value) {
            addCriterion("air_humidity =", value, "airHumidity");
            return (Criteria) this;
        }

        public Criteria andAirHumidityNotEqualTo(String value) {
            addCriterion("air_humidity <>", value, "airHumidity");
            return (Criteria) this;
        }

        public Criteria andAirHumidityGreaterThan(String value) {
            addCriterion("air_humidity >", value, "airHumidity");
            return (Criteria) this;
        }

        public Criteria andAirHumidityGreaterThanOrEqualTo(String value) {
            addCriterion("air_humidity >=", value, "airHumidity");
            return (Criteria) this;
        }

        public Criteria andAirHumidityLessThan(String value) {
            addCriterion("air_humidity <", value, "airHumidity");
            return (Criteria) this;
        }

        public Criteria andAirHumidityLessThanOrEqualTo(String value) {
            addCriterion("air_humidity <=", value, "airHumidity");
            return (Criteria) this;
        }

        public Criteria andAirHumidityLike(String value) {
            addCriterion("air_humidity like", value, "airHumidity");
            return (Criteria) this;
        }

        public Criteria andAirHumidityNotLike(String value) {
            addCriterion("air_humidity not like", value, "airHumidity");
            return (Criteria) this;
        }

        public Criteria andAirHumidityIn(List<String> values) {
            addCriterion("air_humidity in", values, "airHumidity");
            return (Criteria) this;
        }

        public Criteria andAirHumidityNotIn(List<String> values) {
            addCriterion("air_humidity not in", values, "airHumidity");
            return (Criteria) this;
        }

        public Criteria andAirHumidityBetween(String value1, String value2) {
            addCriterion("air_humidity between", value1, value2, "airHumidity");
            return (Criteria) this;
        }

        public Criteria andAirHumidityNotBetween(String value1, String value2) {
            addCriterion("air_humidity not between", value1, value2, "airHumidity");
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