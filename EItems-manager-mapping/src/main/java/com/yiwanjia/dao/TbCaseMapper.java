package com.yiwanjia.dao;

import com.yiwanjia.pojo.TbCase;
import com.yiwanjia.pojo.TbCaseExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TbCaseMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tb_case
     *
     * @mbggenerated
     */
    int countByExample(TbCaseExample example);

    int deleteByCaseIds(int[] id);
    int addMuchCases(List<?> list);
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tb_case
     *
     * @mbggenerated
     */
    int deleteByExample(TbCaseExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tb_case
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(Long id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tb_case
     *
     * @mbggenerated
     */
    int insert(TbCase record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tb_case
     *
     * @mbggenerated
     */
    int insertSelective(TbCase record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tb_case
     *
     * @mbggenerated
     */
    List<TbCase> selectByExample(TbCaseExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tb_case
     *
     * @mbggenerated
     */
    TbCase selectByPrimaryKey(Long id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tb_case
     *
     * @mbggenerated
     */
    int updateByExampleSelective(@Param("record") TbCase record, @Param("example") TbCaseExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tb_case
     *
     * @mbggenerated
     */
    int updateByExample(@Param("record") TbCase record, @Param("example") TbCaseExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tb_case
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(TbCase record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tb_case
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(TbCase record);
}