package com.entity.model;

import com.entity.YonghuEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;


/**
 * 用户
 * 接收传参的实体类
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了）
 * 取自ModelAndView 的model名称
 */
public class YonghuModel implements Serializable {
    private static final long serialVersionUID = 1L;




    /**
     * 主键
     */
    private Integer id;


    /**
     * 账户
     */
    private String username;


    /**
     * 密码
     */
    private String password;


    /**
     * 名称
     */
    private String yonghuName;


    /**
     * 联系方式
     */
    private String yonghuPhone;


    /**
     * 头像
     */
    private String yonghuPhoto;


    /**
     * 性别
     */
    private Integer sexTypes;


    /**
     * 兴趣爱好
     */
    private Integer aihaoTypes;


    /**
     * 电子邮箱
     */
    private String yonghuEmail;


    /**
     * 个人简介
     */
    private String yonghuContent;


    /**
     * 创建时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    private Date createTime;


    /**
	 * 获取：主键
	 */
    public Integer getId() {
        return id;
    }


    /**
	 * 设置：主键
	 */
    public void setId(Integer id) {
        this.id = id;
    }
    /**
	 * 获取：账户
	 */
    public String getUsername() {
        return username;
    }


    /**
	 * 设置：账户
	 */
    public void setUsername(String username) {
        this.username = username;
    }
    /**
	 * 获取：密码
	 */
    public String getPassword() {
        return password;
    }


    /**
	 * 设置：密码
	 */
    public void setPassword(String password) {
        this.password = password;
    }
    /**
	 * 获取：名称
	 */
    public String getYonghuName() {
        return yonghuName;
    }


    /**
	 * 设置：名称
	 */
    public void setYonghuName(String yonghuName) {
        this.yonghuName = yonghuName;
    }
    /**
	 * 获取：联系方式
	 */
    public String getYonghuPhone() {
        return yonghuPhone;
    }


    /**
	 * 设置：联系方式
	 */
    public void setYonghuPhone(String yonghuPhone) {
        this.yonghuPhone = yonghuPhone;
    }
    /**
	 * 获取：头像
	 */
    public String getYonghuPhoto() {
        return yonghuPhoto;
    }


    /**
	 * 设置：头像
	 */
    public void setYonghuPhoto(String yonghuPhoto) {
        this.yonghuPhoto = yonghuPhoto;
    }
    /**
	 * 获取：性别
	 */
    public Integer getSexTypes() {
        return sexTypes;
    }


    /**
	 * 设置：性别
	 */
    public void setSexTypes(Integer sexTypes) {
        this.sexTypes = sexTypes;
    }
    /**
	 * 获取：兴趣爱好
	 */
    public Integer getAihaoTypes() {
        return aihaoTypes;
    }


    /**
	 * 设置：兴趣爱好
	 */
    public void setAihaoTypes(Integer aihaoTypes) {
        this.aihaoTypes = aihaoTypes;
    }
    /**
	 * 获取：电子邮箱
	 */
    public String getYonghuEmail() {
        return yonghuEmail;
    }


    /**
	 * 设置：电子邮箱
	 */
    public void setYonghuEmail(String yonghuEmail) {
        this.yonghuEmail = yonghuEmail;
    }
    /**
	 * 获取：个人简介
	 */
    public String getYonghuContent() {
        return yonghuContent;
    }


    /**
	 * 设置：个人简介
	 */
    public void setYonghuContent(String yonghuContent) {
        this.yonghuContent = yonghuContent;
    }
    /**
	 * 获取：创建时间
	 */
    public Date getCreateTime() {
        return createTime;
    }


    /**
	 * 设置：创建时间
	 */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    }
