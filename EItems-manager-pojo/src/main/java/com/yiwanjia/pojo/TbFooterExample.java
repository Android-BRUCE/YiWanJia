package com.yiwanjia.pojo;

import java.util.ArrayList;
import java.util.List;

public class TbFooterExample {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table tb_footer
     *
     * @mbggenerated
     */
    protected String orderByClause;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table tb_footer
     *
     * @mbggenerated
     */
    protected boolean distinct;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table tb_footer
     *
     * @mbggenerated
     */
    protected List<Criteria> oredCriteria;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tb_footer
     *
     * @mbggenerated
     */
    public TbFooterExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tb_footer
     *
     * @mbggenerated
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tb_footer
     *
     * @mbggenerated
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tb_footer
     *
     * @mbggenerated
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tb_footer
     *
     * @mbggenerated
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tb_footer
     *
     * @mbggenerated
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tb_footer
     *
     * @mbggenerated
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tb_footer
     *
     * @mbggenerated
     */
    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tb_footer
     *
     * @mbggenerated
     */
    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tb_footer
     *
     * @mbggenerated
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tb_footer
     *
     * @mbggenerated
     */
    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table tb_footer
     *
     * @mbggenerated
     */
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

        public Criteria andFootertitleIsNull() {
            addCriterion("FooterTitle is null");
            return (Criteria) this;
        }

        public Criteria andFootertitleIsNotNull() {
            addCriterion("FooterTitle is not null");
            return (Criteria) this;
        }

        public Criteria andFootertitleEqualTo(String value) {
            addCriterion("FooterTitle =", value, "footertitle");
            return (Criteria) this;
        }

        public Criteria andFootertitleNotEqualTo(String value) {
            addCriterion("FooterTitle <>", value, "footertitle");
            return (Criteria) this;
        }

        public Criteria andFootertitleGreaterThan(String value) {
            addCriterion("FooterTitle >", value, "footertitle");
            return (Criteria) this;
        }

        public Criteria andFootertitleGreaterThanOrEqualTo(String value) {
            addCriterion("FooterTitle >=", value, "footertitle");
            return (Criteria) this;
        }

        public Criteria andFootertitleLessThan(String value) {
            addCriterion("FooterTitle <", value, "footertitle");
            return (Criteria) this;
        }

        public Criteria andFootertitleLessThanOrEqualTo(String value) {
            addCriterion("FooterTitle <=", value, "footertitle");
            return (Criteria) this;
        }

        public Criteria andFootertitleLike(String value) {
            addCriterion("FooterTitle like", value, "footertitle");
            return (Criteria) this;
        }

        public Criteria andFootertitleNotLike(String value) {
            addCriterion("FooterTitle not like", value, "footertitle");
            return (Criteria) this;
        }

        public Criteria andFootertitleIn(List<String> values) {
            addCriterion("FooterTitle in", values, "footertitle");
            return (Criteria) this;
        }

        public Criteria andFootertitleNotIn(List<String> values) {
            addCriterion("FooterTitle not in", values, "footertitle");
            return (Criteria) this;
        }

        public Criteria andFootertitleBetween(String value1, String value2) {
            addCriterion("FooterTitle between", value1, value2, "footertitle");
            return (Criteria) this;
        }

        public Criteria andFootertitleNotBetween(String value1, String value2) {
            addCriterion("FooterTitle not between", value1, value2, "footertitle");
            return (Criteria) this;
        }

        public Criteria andFooternameIsNull() {
            addCriterion("FooterName is null");
            return (Criteria) this;
        }

        public Criteria andFooternameIsNotNull() {
            addCriterion("FooterName is not null");
            return (Criteria) this;
        }

        public Criteria andFooternameEqualTo(String value) {
            addCriterion("FooterName =", value, "footername");
            return (Criteria) this;
        }

        public Criteria andFooternameNotEqualTo(String value) {
            addCriterion("FooterName <>", value, "footername");
            return (Criteria) this;
        }

        public Criteria andFooternameGreaterThan(String value) {
            addCriterion("FooterName >", value, "footername");
            return (Criteria) this;
        }

        public Criteria andFooternameGreaterThanOrEqualTo(String value) {
            addCriterion("FooterName >=", value, "footername");
            return (Criteria) this;
        }

        public Criteria andFooternameLessThan(String value) {
            addCriterion("FooterName <", value, "footername");
            return (Criteria) this;
        }

        public Criteria andFooternameLessThanOrEqualTo(String value) {
            addCriterion("FooterName <=", value, "footername");
            return (Criteria) this;
        }

        public Criteria andFooternameLike(String value) {
            addCriterion("FooterName like", value, "footername");
            return (Criteria) this;
        }

        public Criteria andFooternameNotLike(String value) {
            addCriterion("FooterName not like", value, "footername");
            return (Criteria) this;
        }

        public Criteria andFooternameIn(List<String> values) {
            addCriterion("FooterName in", values, "footername");
            return (Criteria) this;
        }

        public Criteria andFooternameNotIn(List<String> values) {
            addCriterion("FooterName not in", values, "footername");
            return (Criteria) this;
        }

        public Criteria andFooternameBetween(String value1, String value2) {
            addCriterion("FooterName between", value1, value2, "footername");
            return (Criteria) this;
        }

        public Criteria andFooternameNotBetween(String value1, String value2) {
            addCriterion("FooterName not between", value1, value2, "footername");
            return (Criteria) this;
        }

        public Criteria andFooteraddressIsNull() {
            addCriterion("FooterAddress is null");
            return (Criteria) this;
        }

        public Criteria andFooteraddressIsNotNull() {
            addCriterion("FooterAddress is not null");
            return (Criteria) this;
        }

        public Criteria andFooteraddressEqualTo(String value) {
            addCriterion("FooterAddress =", value, "footeraddress");
            return (Criteria) this;
        }

        public Criteria andFooteraddressNotEqualTo(String value) {
            addCriterion("FooterAddress <>", value, "footeraddress");
            return (Criteria) this;
        }

        public Criteria andFooteraddressGreaterThan(String value) {
            addCriterion("FooterAddress >", value, "footeraddress");
            return (Criteria) this;
        }

        public Criteria andFooteraddressGreaterThanOrEqualTo(String value) {
            addCriterion("FooterAddress >=", value, "footeraddress");
            return (Criteria) this;
        }

        public Criteria andFooteraddressLessThan(String value) {
            addCriterion("FooterAddress <", value, "footeraddress");
            return (Criteria) this;
        }

        public Criteria andFooteraddressLessThanOrEqualTo(String value) {
            addCriterion("FooterAddress <=", value, "footeraddress");
            return (Criteria) this;
        }

        public Criteria andFooteraddressLike(String value) {
            addCriterion("FooterAddress like", value, "footeraddress");
            return (Criteria) this;
        }

        public Criteria andFooteraddressNotLike(String value) {
            addCriterion("FooterAddress not like", value, "footeraddress");
            return (Criteria) this;
        }

        public Criteria andFooteraddressIn(List<String> values) {
            addCriterion("FooterAddress in", values, "footeraddress");
            return (Criteria) this;
        }

        public Criteria andFooteraddressNotIn(List<String> values) {
            addCriterion("FooterAddress not in", values, "footeraddress");
            return (Criteria) this;
        }

        public Criteria andFooteraddressBetween(String value1, String value2) {
            addCriterion("FooterAddress between", value1, value2, "footeraddress");
            return (Criteria) this;
        }

        public Criteria andFooteraddressNotBetween(String value1, String value2) {
            addCriterion("FooterAddress not between", value1, value2, "footeraddress");
            return (Criteria) this;
        }

        public Criteria andFooterparentIsNull() {
            addCriterion("FooterParent is null");
            return (Criteria) this;
        }

        public Criteria andFooterparentIsNotNull() {
            addCriterion("FooterParent is not null");
            return (Criteria) this;
        }

        public Criteria andFooterparentEqualTo(Integer value) {
            addCriterion("FooterParent =", value, "footerparent");
            return (Criteria) this;
        }

        public Criteria andFooterparentNotEqualTo(Integer value) {
            addCriterion("FooterParent <>", value, "footerparent");
            return (Criteria) this;
        }

        public Criteria andFooterparentGreaterThan(Integer value) {
            addCriterion("FooterParent >", value, "footerparent");
            return (Criteria) this;
        }

        public Criteria andFooterparentGreaterThanOrEqualTo(Integer value) {
            addCriterion("FooterParent >=", value, "footerparent");
            return (Criteria) this;
        }

        public Criteria andFooterparentLessThan(Integer value) {
            addCriterion("FooterParent <", value, "footerparent");
            return (Criteria) this;
        }

        public Criteria andFooterparentLessThanOrEqualTo(Integer value) {
            addCriterion("FooterParent <=", value, "footerparent");
            return (Criteria) this;
        }

        public Criteria andFooterparentIn(List<Integer> values) {
            addCriterion("FooterParent in", values, "footerparent");
            return (Criteria) this;
        }

        public Criteria andFooterparentNotIn(List<Integer> values) {
            addCriterion("FooterParent not in", values, "footerparent");
            return (Criteria) this;
        }

        public Criteria andFooterparentBetween(Integer value1, Integer value2) {
            addCriterion("FooterParent between", value1, value2, "footerparent");
            return (Criteria) this;
        }

        public Criteria andFooterparentNotBetween(Integer value1, Integer value2) {
            addCriterion("FooterParent not between", value1, value2, "footerparent");
            return (Criteria) this;
        }

        public Criteria andFooterpidIsNull() {
            addCriterion("FooterPID is null");
            return (Criteria) this;
        }

        public Criteria andFooterpidIsNotNull() {
            addCriterion("FooterPID is not null");
            return (Criteria) this;
        }

        public Criteria andFooterpidEqualTo(Integer value) {
            addCriterion("FooterPID =", value, "footerpid");
            return (Criteria) this;
        }

        public Criteria andFooterpidNotEqualTo(Integer value) {
            addCriterion("FooterPID <>", value, "footerpid");
            return (Criteria) this;
        }

        public Criteria andFooterpidGreaterThan(Integer value) {
            addCriterion("FooterPID >", value, "footerpid");
            return (Criteria) this;
        }

        public Criteria andFooterpidGreaterThanOrEqualTo(Integer value) {
            addCriterion("FooterPID >=", value, "footerpid");
            return (Criteria) this;
        }

        public Criteria andFooterpidLessThan(Integer value) {
            addCriterion("FooterPID <", value, "footerpid");
            return (Criteria) this;
        }

        public Criteria andFooterpidLessThanOrEqualTo(Integer value) {
            addCriterion("FooterPID <=", value, "footerpid");
            return (Criteria) this;
        }

        public Criteria andFooterpidIn(List<Integer> values) {
            addCriterion("FooterPID in", values, "footerpid");
            return (Criteria) this;
        }

        public Criteria andFooterpidNotIn(List<Integer> values) {
            addCriterion("FooterPID not in", values, "footerpid");
            return (Criteria) this;
        }

        public Criteria andFooterpidBetween(Integer value1, Integer value2) {
            addCriterion("FooterPID between", value1, value2, "footerpid");
            return (Criteria) this;
        }

        public Criteria andFooterpidNotBetween(Integer value1, Integer value2) {
            addCriterion("FooterPID not between", value1, value2, "footerpid");
            return (Criteria) this;
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table tb_footer
     *
     * @mbggenerated do_not_delete_during_merge
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table tb_footer
     *
     * @mbggenerated
     */
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