package com.sjm.bean;

import java.util.ArrayList;
import java.util.List;

public class ArtifactsInformationExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ArtifactsInformationExample() {
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

        public Criteria andBimIdIsNull() {
            addCriterion("bim_id is null");
            return (Criteria) this;
        }

        public Criteria andBimIdIsNotNull() {
            addCriterion("bim_id is not null");
            return (Criteria) this;
        }

        public Criteria andBimIdEqualTo(Integer value) {
            addCriterion("bim_id =", value, "bimId");
            return (Criteria) this;
        }

        public Criteria andBimIdNotEqualTo(Integer value) {
            addCriterion("bim_id <>", value, "bimId");
            return (Criteria) this;
        }

        public Criteria andBimIdGreaterThan(Integer value) {
            addCriterion("bim_id >", value, "bimId");
            return (Criteria) this;
        }

        public Criteria andBimIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("bim_id >=", value, "bimId");
            return (Criteria) this;
        }

        public Criteria andBimIdLessThan(Integer value) {
            addCriterion("bim_id <", value, "bimId");
            return (Criteria) this;
        }

        public Criteria andBimIdLessThanOrEqualTo(Integer value) {
            addCriterion("bim_id <=", value, "bimId");
            return (Criteria) this;
        }

        public Criteria andBimIdIn(List<Integer> values) {
            addCriterion("bim_id in", values, "bimId");
            return (Criteria) this;
        }

        public Criteria andBimIdNotIn(List<Integer> values) {
            addCriterion("bim_id not in", values, "bimId");
            return (Criteria) this;
        }

        public Criteria andBimIdBetween(Integer value1, Integer value2) {
            addCriterion("bim_id between", value1, value2, "bimId");
            return (Criteria) this;
        }

        public Criteria andBimIdNotBetween(Integer value1, Integer value2) {
            addCriterion("bim_id not between", value1, value2, "bimId");
            return (Criteria) this;
        }

        public Criteria andNameIsNull() {
            addCriterion("name is null");
            return (Criteria) this;
        }

        public Criteria andNameIsNotNull() {
            addCriterion("name is not null");
            return (Criteria) this;
        }

        public Criteria andNameEqualTo(String value) {
            addCriterion("name =", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotEqualTo(String value) {
            addCriterion("name <>", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThan(String value) {
            addCriterion("name >", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThanOrEqualTo(String value) {
            addCriterion("name >=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThan(String value) {
            addCriterion("name <", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThanOrEqualTo(String value) {
            addCriterion("name <=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLike(String value) {
            addCriterion("name like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotLike(String value) {
            addCriterion("name not like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameIn(List<String> values) {
            addCriterion("name in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotIn(List<String> values) {
            addCriterion("name not in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameBetween(String value1, String value2) {
            addCriterion("name between", value1, value2, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotBetween(String value1, String value2) {
            addCriterion("name not between", value1, value2, "name");
            return (Criteria) this;
        }

        public Criteria andDescriIsNull() {
            addCriterion("descri is null");
            return (Criteria) this;
        }

        public Criteria andDescriIsNotNull() {
            addCriterion("descri is not null");
            return (Criteria) this;
        }

        public Criteria andDescriEqualTo(String value) {
            addCriterion("descri =", value, "descri");
            return (Criteria) this;
        }

        public Criteria andDescriNotEqualTo(String value) {
            addCriterion("descri <>", value, "descri");
            return (Criteria) this;
        }

        public Criteria andDescriGreaterThan(String value) {
            addCriterion("descri >", value, "descri");
            return (Criteria) this;
        }

        public Criteria andDescriGreaterThanOrEqualTo(String value) {
            addCriterion("descri >=", value, "descri");
            return (Criteria) this;
        }

        public Criteria andDescriLessThan(String value) {
            addCriterion("descri <", value, "descri");
            return (Criteria) this;
        }

        public Criteria andDescriLessThanOrEqualTo(String value) {
            addCriterion("descri <=", value, "descri");
            return (Criteria) this;
        }

        public Criteria andDescriLike(String value) {
            addCriterion("descri like", value, "descri");
            return (Criteria) this;
        }

        public Criteria andDescriNotLike(String value) {
            addCriterion("descri not like", value, "descri");
            return (Criteria) this;
        }

        public Criteria andDescriIn(List<String> values) {
            addCriterion("descri in", values, "descri");
            return (Criteria) this;
        }

        public Criteria andDescriNotIn(List<String> values) {
            addCriterion("descri not in", values, "descri");
            return (Criteria) this;
        }

        public Criteria andDescriBetween(String value1, String value2) {
            addCriterion("descri between", value1, value2, "descri");
            return (Criteria) this;
        }

        public Criteria andDescriNotBetween(String value1, String value2) {
            addCriterion("descri not between", value1, value2, "descri");
            return (Criteria) this;
        }

        public Criteria andPosIsNull() {
            addCriterion("pos is null");
            return (Criteria) this;
        }

        public Criteria andPosIsNotNull() {
            addCriterion("pos is not null");
            return (Criteria) this;
        }

        public Criteria andPosEqualTo(String value) {
            addCriterion("pos =", value, "pos");
            return (Criteria) this;
        }

        public Criteria andPosNotEqualTo(String value) {
            addCriterion("pos <>", value, "pos");
            return (Criteria) this;
        }

        public Criteria andPosGreaterThan(String value) {
            addCriterion("pos >", value, "pos");
            return (Criteria) this;
        }

        public Criteria andPosGreaterThanOrEqualTo(String value) {
            addCriterion("pos >=", value, "pos");
            return (Criteria) this;
        }

        public Criteria andPosLessThan(String value) {
            addCriterion("pos <", value, "pos");
            return (Criteria) this;
        }

        public Criteria andPosLessThanOrEqualTo(String value) {
            addCriterion("pos <=", value, "pos");
            return (Criteria) this;
        }

        public Criteria andPosLike(String value) {
            addCriterion("pos like", value, "pos");
            return (Criteria) this;
        }

        public Criteria andPosNotLike(String value) {
            addCriterion("pos not like", value, "pos");
            return (Criteria) this;
        }

        public Criteria andPosIn(List<String> values) {
            addCriterion("pos in", values, "pos");
            return (Criteria) this;
        }

        public Criteria andPosNotIn(List<String> values) {
            addCriterion("pos not in", values, "pos");
            return (Criteria) this;
        }

        public Criteria andPosBetween(String value1, String value2) {
            addCriterion("pos between", value1, value2, "pos");
            return (Criteria) this;
        }

        public Criteria andPosNotBetween(String value1, String value2) {
            addCriterion("pos not between", value1, value2, "pos");
            return (Criteria) this;
        }

        public Criteria andSizeIsNull() {
            addCriterion("size is null");
            return (Criteria) this;
        }

        public Criteria andSizeIsNotNull() {
            addCriterion("size is not null");
            return (Criteria) this;
        }

        public Criteria andSizeEqualTo(String value) {
            addCriterion("size =", value, "size");
            return (Criteria) this;
        }

        public Criteria andSizeNotEqualTo(String value) {
            addCriterion("size <>", value, "size");
            return (Criteria) this;
        }

        public Criteria andSizeGreaterThan(String value) {
            addCriterion("size >", value, "size");
            return (Criteria) this;
        }

        public Criteria andSizeGreaterThanOrEqualTo(String value) {
            addCriterion("size >=", value, "size");
            return (Criteria) this;
        }

        public Criteria andSizeLessThan(String value) {
            addCriterion("size <", value, "size");
            return (Criteria) this;
        }

        public Criteria andSizeLessThanOrEqualTo(String value) {
            addCriterion("size <=", value, "size");
            return (Criteria) this;
        }

        public Criteria andSizeLike(String value) {
            addCriterion("size like", value, "size");
            return (Criteria) this;
        }

        public Criteria andSizeNotLike(String value) {
            addCriterion("size not like", value, "size");
            return (Criteria) this;
        }

        public Criteria andSizeIn(List<String> values) {
            addCriterion("size in", values, "size");
            return (Criteria) this;
        }

        public Criteria andSizeNotIn(List<String> values) {
            addCriterion("size not in", values, "size");
            return (Criteria) this;
        }

        public Criteria andSizeBetween(String value1, String value2) {
            addCriterion("size between", value1, value2, "size");
            return (Criteria) this;
        }

        public Criteria andSizeNotBetween(String value1, String value2) {
            addCriterion("size not between", value1, value2, "size");
            return (Criteria) this;
        }

        public Criteria andFuncIsNull() {
            addCriterion("func is null");
            return (Criteria) this;
        }

        public Criteria andFuncIsNotNull() {
            addCriterion("func is not null");
            return (Criteria) this;
        }

        public Criteria andFuncEqualTo(String value) {
            addCriterion("func =", value, "func");
            return (Criteria) this;
        }

        public Criteria andFuncNotEqualTo(String value) {
            addCriterion("func <>", value, "func");
            return (Criteria) this;
        }

        public Criteria andFuncGreaterThan(String value) {
            addCriterion("func >", value, "func");
            return (Criteria) this;
        }

        public Criteria andFuncGreaterThanOrEqualTo(String value) {
            addCriterion("func >=", value, "func");
            return (Criteria) this;
        }

        public Criteria andFuncLessThan(String value) {
            addCriterion("func <", value, "func");
            return (Criteria) this;
        }

        public Criteria andFuncLessThanOrEqualTo(String value) {
            addCriterion("func <=", value, "func");
            return (Criteria) this;
        }

        public Criteria andFuncLike(String value) {
            addCriterion("func like", value, "func");
            return (Criteria) this;
        }

        public Criteria andFuncNotLike(String value) {
            addCriterion("func not like", value, "func");
            return (Criteria) this;
        }

        public Criteria andFuncIn(List<String> values) {
            addCriterion("func in", values, "func");
            return (Criteria) this;
        }

        public Criteria andFuncNotIn(List<String> values) {
            addCriterion("func not in", values, "func");
            return (Criteria) this;
        }

        public Criteria andFuncBetween(String value1, String value2) {
            addCriterion("func between", value1, value2, "func");
            return (Criteria) this;
        }

        public Criteria andFuncNotBetween(String value1, String value2) {
            addCriterion("func not between", value1, value2, "func");
            return (Criteria) this;
        }

        public Criteria andBorderIsNull() {
            addCriterion("border is null");
            return (Criteria) this;
        }

        public Criteria andBorderIsNotNull() {
            addCriterion("border is not null");
            return (Criteria) this;
        }

        public Criteria andBorderEqualTo(String value) {
            addCriterion("border =", value, "border");
            return (Criteria) this;
        }

        public Criteria andBorderNotEqualTo(String value) {
            addCriterion("border <>", value, "border");
            return (Criteria) this;
        }

        public Criteria andBorderGreaterThan(String value) {
            addCriterion("border >", value, "border");
            return (Criteria) this;
        }

        public Criteria andBorderGreaterThanOrEqualTo(String value) {
            addCriterion("border >=", value, "border");
            return (Criteria) this;
        }

        public Criteria andBorderLessThan(String value) {
            addCriterion("border <", value, "border");
            return (Criteria) this;
        }

        public Criteria andBorderLessThanOrEqualTo(String value) {
            addCriterion("border <=", value, "border");
            return (Criteria) this;
        }

        public Criteria andBorderLike(String value) {
            addCriterion("border like", value, "border");
            return (Criteria) this;
        }

        public Criteria andBorderNotLike(String value) {
            addCriterion("border not like", value, "border");
            return (Criteria) this;
        }

        public Criteria andBorderIn(List<String> values) {
            addCriterion("border in", values, "border");
            return (Criteria) this;
        }

        public Criteria andBorderNotIn(List<String> values) {
            addCriterion("border not in", values, "border");
            return (Criteria) this;
        }

        public Criteria andBorderBetween(String value1, String value2) {
            addCriterion("border between", value1, value2, "border");
            return (Criteria) this;
        }

        public Criteria andBorderNotBetween(String value1, String value2) {
            addCriterion("border not between", value1, value2, "border");
            return (Criteria) this;
        }

        public Criteria andMaterialIsNull() {
            addCriterion("material is null");
            return (Criteria) this;
        }

        public Criteria andMaterialIsNotNull() {
            addCriterion("material is not null");
            return (Criteria) this;
        }

        public Criteria andMaterialEqualTo(String value) {
            addCriterion("material =", value, "material");
            return (Criteria) this;
        }

        public Criteria andMaterialNotEqualTo(String value) {
            addCriterion("material <>", value, "material");
            return (Criteria) this;
        }

        public Criteria andMaterialGreaterThan(String value) {
            addCriterion("material >", value, "material");
            return (Criteria) this;
        }

        public Criteria andMaterialGreaterThanOrEqualTo(String value) {
            addCriterion("material >=", value, "material");
            return (Criteria) this;
        }

        public Criteria andMaterialLessThan(String value) {
            addCriterion("material <", value, "material");
            return (Criteria) this;
        }

        public Criteria andMaterialLessThanOrEqualTo(String value) {
            addCriterion("material <=", value, "material");
            return (Criteria) this;
        }

        public Criteria andMaterialLike(String value) {
            addCriterion("material like", value, "material");
            return (Criteria) this;
        }

        public Criteria andMaterialNotLike(String value) {
            addCriterion("material not like", value, "material");
            return (Criteria) this;
        }

        public Criteria andMaterialIn(List<String> values) {
            addCriterion("material in", values, "material");
            return (Criteria) this;
        }

        public Criteria andMaterialNotIn(List<String> values) {
            addCriterion("material not in", values, "material");
            return (Criteria) this;
        }

        public Criteria andMaterialBetween(String value1, String value2) {
            addCriterion("material between", value1, value2, "material");
            return (Criteria) this;
        }

        public Criteria andMaterialNotBetween(String value1, String value2) {
            addCriterion("material not between", value1, value2, "material");
            return (Criteria) this;
        }

        public Criteria andProducerIsNull() {
            addCriterion("producer is null");
            return (Criteria) this;
        }

        public Criteria andProducerIsNotNull() {
            addCriterion("producer is not null");
            return (Criteria) this;
        }

        public Criteria andProducerEqualTo(String value) {
            addCriterion("producer =", value, "producer");
            return (Criteria) this;
        }

        public Criteria andProducerNotEqualTo(String value) {
            addCriterion("producer <>", value, "producer");
            return (Criteria) this;
        }

        public Criteria andProducerGreaterThan(String value) {
            addCriterion("producer >", value, "producer");
            return (Criteria) this;
        }

        public Criteria andProducerGreaterThanOrEqualTo(String value) {
            addCriterion("producer >=", value, "producer");
            return (Criteria) this;
        }

        public Criteria andProducerLessThan(String value) {
            addCriterion("producer <", value, "producer");
            return (Criteria) this;
        }

        public Criteria andProducerLessThanOrEqualTo(String value) {
            addCriterion("producer <=", value, "producer");
            return (Criteria) this;
        }

        public Criteria andProducerLike(String value) {
            addCriterion("producer like", value, "producer");
            return (Criteria) this;
        }

        public Criteria andProducerNotLike(String value) {
            addCriterion("producer not like", value, "producer");
            return (Criteria) this;
        }

        public Criteria andProducerIn(List<String> values) {
            addCriterion("producer in", values, "producer");
            return (Criteria) this;
        }

        public Criteria andProducerNotIn(List<String> values) {
            addCriterion("producer not in", values, "producer");
            return (Criteria) this;
        }

        public Criteria andProducerBetween(String value1, String value2) {
            addCriterion("producer between", value1, value2, "producer");
            return (Criteria) this;
        }

        public Criteria andProducerNotBetween(String value1, String value2) {
            addCriterion("producer not between", value1, value2, "producer");
            return (Criteria) this;
        }

        public Criteria andHeatTransferCoefficientIsNull() {
            addCriterion("heat_transfer_coefficient is null");
            return (Criteria) this;
        }

        public Criteria andHeatTransferCoefficientIsNotNull() {
            addCriterion("heat_transfer_coefficient is not null");
            return (Criteria) this;
        }

        public Criteria andHeatTransferCoefficientEqualTo(String value) {
            addCriterion("heat_transfer_coefficient =", value, "heatTransferCoefficient");
            return (Criteria) this;
        }

        public Criteria andHeatTransferCoefficientNotEqualTo(String value) {
            addCriterion("heat_transfer_coefficient <>", value, "heatTransferCoefficient");
            return (Criteria) this;
        }

        public Criteria andHeatTransferCoefficientGreaterThan(String value) {
            addCriterion("heat_transfer_coefficient >", value, "heatTransferCoefficient");
            return (Criteria) this;
        }

        public Criteria andHeatTransferCoefficientGreaterThanOrEqualTo(String value) {
            addCriterion("heat_transfer_coefficient >=", value, "heatTransferCoefficient");
            return (Criteria) this;
        }

        public Criteria andHeatTransferCoefficientLessThan(String value) {
            addCriterion("heat_transfer_coefficient <", value, "heatTransferCoefficient");
            return (Criteria) this;
        }

        public Criteria andHeatTransferCoefficientLessThanOrEqualTo(String value) {
            addCriterion("heat_transfer_coefficient <=", value, "heatTransferCoefficient");
            return (Criteria) this;
        }

        public Criteria andHeatTransferCoefficientLike(String value) {
            addCriterion("heat_transfer_coefficient like", value, "heatTransferCoefficient");
            return (Criteria) this;
        }

        public Criteria andHeatTransferCoefficientNotLike(String value) {
            addCriterion("heat_transfer_coefficient not like", value, "heatTransferCoefficient");
            return (Criteria) this;
        }

        public Criteria andHeatTransferCoefficientIn(List<String> values) {
            addCriterion("heat_transfer_coefficient in", values, "heatTransferCoefficient");
            return (Criteria) this;
        }

        public Criteria andHeatTransferCoefficientNotIn(List<String> values) {
            addCriterion("heat_transfer_coefficient not in", values, "heatTransferCoefficient");
            return (Criteria) this;
        }

        public Criteria andHeatTransferCoefficientBetween(String value1, String value2) {
            addCriterion("heat_transfer_coefficient between", value1, value2, "heatTransferCoefficient");
            return (Criteria) this;
        }

        public Criteria andHeatTransferCoefficientNotBetween(String value1, String value2) {
            addCriterion("heat_transfer_coefficient not between", value1, value2, "heatTransferCoefficient");
            return (Criteria) this;
        }

        public Criteria andAbsorptionRateIsNull() {
            addCriterion("absorption_rate is null");
            return (Criteria) this;
        }

        public Criteria andAbsorptionRateIsNotNull() {
            addCriterion("absorption_rate is not null");
            return (Criteria) this;
        }

        public Criteria andAbsorptionRateEqualTo(String value) {
            addCriterion("absorption_rate =", value, "absorptionRate");
            return (Criteria) this;
        }

        public Criteria andAbsorptionRateNotEqualTo(String value) {
            addCriterion("absorption_rate <>", value, "absorptionRate");
            return (Criteria) this;
        }

        public Criteria andAbsorptionRateGreaterThan(String value) {
            addCriterion("absorption_rate >", value, "absorptionRate");
            return (Criteria) this;
        }

        public Criteria andAbsorptionRateGreaterThanOrEqualTo(String value) {
            addCriterion("absorption_rate >=", value, "absorptionRate");
            return (Criteria) this;
        }

        public Criteria andAbsorptionRateLessThan(String value) {
            addCriterion("absorption_rate <", value, "absorptionRate");
            return (Criteria) this;
        }

        public Criteria andAbsorptionRateLessThanOrEqualTo(String value) {
            addCriterion("absorption_rate <=", value, "absorptionRate");
            return (Criteria) this;
        }

        public Criteria andAbsorptionRateLike(String value) {
            addCriterion("absorption_rate like", value, "absorptionRate");
            return (Criteria) this;
        }

        public Criteria andAbsorptionRateNotLike(String value) {
            addCriterion("absorption_rate not like", value, "absorptionRate");
            return (Criteria) this;
        }

        public Criteria andAbsorptionRateIn(List<String> values) {
            addCriterion("absorption_rate in", values, "absorptionRate");
            return (Criteria) this;
        }

        public Criteria andAbsorptionRateNotIn(List<String> values) {
            addCriterion("absorption_rate not in", values, "absorptionRate");
            return (Criteria) this;
        }

        public Criteria andAbsorptionRateBetween(String value1, String value2) {
            addCriterion("absorption_rate between", value1, value2, "absorptionRate");
            return (Criteria) this;
        }

        public Criteria andAbsorptionRateNotBetween(String value1, String value2) {
            addCriterion("absorption_rate not between", value1, value2, "absorptionRate");
            return (Criteria) this;
        }

        public Criteria andThermalMassIsNull() {
            addCriterion("thermal_mass is null");
            return (Criteria) this;
        }

        public Criteria andThermalMassIsNotNull() {
            addCriterion("thermal_mass is not null");
            return (Criteria) this;
        }

        public Criteria andThermalMassEqualTo(String value) {
            addCriterion("thermal_mass =", value, "thermalMass");
            return (Criteria) this;
        }

        public Criteria andThermalMassNotEqualTo(String value) {
            addCriterion("thermal_mass <>", value, "thermalMass");
            return (Criteria) this;
        }

        public Criteria andThermalMassGreaterThan(String value) {
            addCriterion("thermal_mass >", value, "thermalMass");
            return (Criteria) this;
        }

        public Criteria andThermalMassGreaterThanOrEqualTo(String value) {
            addCriterion("thermal_mass >=", value, "thermalMass");
            return (Criteria) this;
        }

        public Criteria andThermalMassLessThan(String value) {
            addCriterion("thermal_mass <", value, "thermalMass");
            return (Criteria) this;
        }

        public Criteria andThermalMassLessThanOrEqualTo(String value) {
            addCriterion("thermal_mass <=", value, "thermalMass");
            return (Criteria) this;
        }

        public Criteria andThermalMassLike(String value) {
            addCriterion("thermal_mass like", value, "thermalMass");
            return (Criteria) this;
        }

        public Criteria andThermalMassNotLike(String value) {
            addCriterion("thermal_mass not like", value, "thermalMass");
            return (Criteria) this;
        }

        public Criteria andThermalMassIn(List<String> values) {
            addCriterion("thermal_mass in", values, "thermalMass");
            return (Criteria) this;
        }

        public Criteria andThermalMassNotIn(List<String> values) {
            addCriterion("thermal_mass not in", values, "thermalMass");
            return (Criteria) this;
        }

        public Criteria andThermalMassBetween(String value1, String value2) {
            addCriterion("thermal_mass between", value1, value2, "thermalMass");
            return (Criteria) this;
        }

        public Criteria andThermalMassNotBetween(String value1, String value2) {
            addCriterion("thermal_mass not between", value1, value2, "thermalMass");
            return (Criteria) this;
        }

        public Criteria andThermalResistanceIsNull() {
            addCriterion("thermal_resistance is null");
            return (Criteria) this;
        }

        public Criteria andThermalResistanceIsNotNull() {
            addCriterion("thermal_resistance is not null");
            return (Criteria) this;
        }

        public Criteria andThermalResistanceEqualTo(String value) {
            addCriterion("thermal_resistance =", value, "thermalResistance");
            return (Criteria) this;
        }

        public Criteria andThermalResistanceNotEqualTo(String value) {
            addCriterion("thermal_resistance <>", value, "thermalResistance");
            return (Criteria) this;
        }

        public Criteria andThermalResistanceGreaterThan(String value) {
            addCriterion("thermal_resistance >", value, "thermalResistance");
            return (Criteria) this;
        }

        public Criteria andThermalResistanceGreaterThanOrEqualTo(String value) {
            addCriterion("thermal_resistance >=", value, "thermalResistance");
            return (Criteria) this;
        }

        public Criteria andThermalResistanceLessThan(String value) {
            addCriterion("thermal_resistance <", value, "thermalResistance");
            return (Criteria) this;
        }

        public Criteria andThermalResistanceLessThanOrEqualTo(String value) {
            addCriterion("thermal_resistance <=", value, "thermalResistance");
            return (Criteria) this;
        }

        public Criteria andThermalResistanceLike(String value) {
            addCriterion("thermal_resistance like", value, "thermalResistance");
            return (Criteria) this;
        }

        public Criteria andThermalResistanceNotLike(String value) {
            addCriterion("thermal_resistance not like", value, "thermalResistance");
            return (Criteria) this;
        }

        public Criteria andThermalResistanceIn(List<String> values) {
            addCriterion("thermal_resistance in", values, "thermalResistance");
            return (Criteria) this;
        }

        public Criteria andThermalResistanceNotIn(List<String> values) {
            addCriterion("thermal_resistance not in", values, "thermalResistance");
            return (Criteria) this;
        }

        public Criteria andThermalResistanceBetween(String value1, String value2) {
            addCriterion("thermal_resistance between", value1, value2, "thermalResistance");
            return (Criteria) this;
        }

        public Criteria andThermalResistanceNotBetween(String value1, String value2) {
            addCriterion("thermal_resistance not between", value1, value2, "thermalResistance");
            return (Criteria) this;
        }

        public Criteria andOpticalTransmissionRateIsNull() {
            addCriterion("optical_transmission_rate is null");
            return (Criteria) this;
        }

        public Criteria andOpticalTransmissionRateIsNotNull() {
            addCriterion("optical_transmission_rate is not null");
            return (Criteria) this;
        }

        public Criteria andOpticalTransmissionRateEqualTo(String value) {
            addCriterion("optical_transmission_rate =", value, "opticalTransmissionRate");
            return (Criteria) this;
        }

        public Criteria andOpticalTransmissionRateNotEqualTo(String value) {
            addCriterion("optical_transmission_rate <>", value, "opticalTransmissionRate");
            return (Criteria) this;
        }

        public Criteria andOpticalTransmissionRateGreaterThan(String value) {
            addCriterion("optical_transmission_rate >", value, "opticalTransmissionRate");
            return (Criteria) this;
        }

        public Criteria andOpticalTransmissionRateGreaterThanOrEqualTo(String value) {
            addCriterion("optical_transmission_rate >=", value, "opticalTransmissionRate");
            return (Criteria) this;
        }

        public Criteria andOpticalTransmissionRateLessThan(String value) {
            addCriterion("optical_transmission_rate <", value, "opticalTransmissionRate");
            return (Criteria) this;
        }

        public Criteria andOpticalTransmissionRateLessThanOrEqualTo(String value) {
            addCriterion("optical_transmission_rate <=", value, "opticalTransmissionRate");
            return (Criteria) this;
        }

        public Criteria andOpticalTransmissionRateLike(String value) {
            addCriterion("optical_transmission_rate like", value, "opticalTransmissionRate");
            return (Criteria) this;
        }

        public Criteria andOpticalTransmissionRateNotLike(String value) {
            addCriterion("optical_transmission_rate not like", value, "opticalTransmissionRate");
            return (Criteria) this;
        }

        public Criteria andOpticalTransmissionRateIn(List<String> values) {
            addCriterion("optical_transmission_rate in", values, "opticalTransmissionRate");
            return (Criteria) this;
        }

        public Criteria andOpticalTransmissionRateNotIn(List<String> values) {
            addCriterion("optical_transmission_rate not in", values, "opticalTransmissionRate");
            return (Criteria) this;
        }

        public Criteria andOpticalTransmissionRateBetween(String value1, String value2) {
            addCriterion("optical_transmission_rate between", value1, value2, "opticalTransmissionRate");
            return (Criteria) this;
        }

        public Criteria andOpticalTransmissionRateNotBetween(String value1, String value2) {
            addCriterion("optical_transmission_rate not between", value1, value2, "opticalTransmissionRate");
            return (Criteria) this;
        }

        public Criteria andSolarThermalEfficiencyIsNull() {
            addCriterion("solar_thermal_efficiency is null");
            return (Criteria) this;
        }

        public Criteria andSolarThermalEfficiencyIsNotNull() {
            addCriterion("solar_thermal_efficiency is not null");
            return (Criteria) this;
        }

        public Criteria andSolarThermalEfficiencyEqualTo(String value) {
            addCriterion("solar_thermal_efficiency =", value, "solarThermalEfficiency");
            return (Criteria) this;
        }

        public Criteria andSolarThermalEfficiencyNotEqualTo(String value) {
            addCriterion("solar_thermal_efficiency <>", value, "solarThermalEfficiency");
            return (Criteria) this;
        }

        public Criteria andSolarThermalEfficiencyGreaterThan(String value) {
            addCriterion("solar_thermal_efficiency >", value, "solarThermalEfficiency");
            return (Criteria) this;
        }

        public Criteria andSolarThermalEfficiencyGreaterThanOrEqualTo(String value) {
            addCriterion("solar_thermal_efficiency >=", value, "solarThermalEfficiency");
            return (Criteria) this;
        }

        public Criteria andSolarThermalEfficiencyLessThan(String value) {
            addCriterion("solar_thermal_efficiency <", value, "solarThermalEfficiency");
            return (Criteria) this;
        }

        public Criteria andSolarThermalEfficiencyLessThanOrEqualTo(String value) {
            addCriterion("solar_thermal_efficiency <=", value, "solarThermalEfficiency");
            return (Criteria) this;
        }

        public Criteria andSolarThermalEfficiencyLike(String value) {
            addCriterion("solar_thermal_efficiency like", value, "solarThermalEfficiency");
            return (Criteria) this;
        }

        public Criteria andSolarThermalEfficiencyNotLike(String value) {
            addCriterion("solar_thermal_efficiency not like", value, "solarThermalEfficiency");
            return (Criteria) this;
        }

        public Criteria andSolarThermalEfficiencyIn(List<String> values) {
            addCriterion("solar_thermal_efficiency in", values, "solarThermalEfficiency");
            return (Criteria) this;
        }

        public Criteria andSolarThermalEfficiencyNotIn(List<String> values) {
            addCriterion("solar_thermal_efficiency not in", values, "solarThermalEfficiency");
            return (Criteria) this;
        }

        public Criteria andSolarThermalEfficiencyBetween(String value1, String value2) {
            addCriterion("solar_thermal_efficiency between", value1, value2, "solarThermalEfficiency");
            return (Criteria) this;
        }

        public Criteria andSolarThermalEfficiencyNotBetween(String value1, String value2) {
            addCriterion("solar_thermal_efficiency not between", value1, value2, "solarThermalEfficiency");
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