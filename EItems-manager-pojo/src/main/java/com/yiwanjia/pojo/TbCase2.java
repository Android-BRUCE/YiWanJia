package com.yiwanjia.pojo;

import java.io.Serializable;
import java.util.List;

public class TbCase2 implements Serializable {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tb_case.id
     *
     * @mbggenerated
     */
    private Long id;

    private List<?> tbcaseList;

    public List<?> getTbcaseList() {
        return tbcaseList;
    }

    public void setTbcaseList(List<?> tbcaseList) {
        this.tbcaseList = tbcaseList;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tb_case.image
     *
     * @mbggenerated
     */
    private String image;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table tb_case
     *
     * @mbggenerated
     */
    private static final long serialVersionUID = 1L;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tb_case.id
     *
     * @return the value of tb_case.id
     *
     * @mbggenerated
     */
    public Long getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tb_case.id
     *
     * @param id the value for tb_case.id
     *
     * @mbggenerated
     */
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tb_case.image
     *
     * @return the value of tb_case.image
     *
     * @mbggenerated
     */
    public String getImage() {
        return image;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tb_case.image
     *
     * @param image the value for tb_case.image
     *
     * @mbggenerated
     */
    public void setImage(String image) {
        this.image = image == null ? null : image.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tb_case
     *
     * @mbggenerated
     */
    @Override
    public boolean equals(Object that) {
        if (this == that) {
            return true;
        }
        if (that == null) {
            return false;
        }
        if (getClass() != that.getClass()) {
            return false;
        }
        TbCase2 other = (TbCase2) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
            && (this.getImage() == null ? other.getImage() == null : this.getImage().equals(other.getImage()));
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tb_case
     *
     * @mbggenerated
     */
    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
        result = prime * result + ((getImage() == null) ? 0 : getImage().hashCode());
        return result;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tb_case
     *
     * @mbggenerated
     */
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", image=").append(image);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}