package com.entity.view;

import com.entity.ForumEntity;
import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
import java.util.Date;

/**
 * 论坛
 * 后端返回视图实体辅助类
 * （通常后端关联的表或者自定义的字段需要返回使用）
 */
@TableName("forum")
public class ForumView extends ForumEntity implements Serializable {
    private static final long serialVersionUID = 1L;

		/**
		* 帖子类型的值
		*/
		private String forumValue;
		/**
		* 帖子状态的值
		*/
		private String forumStateValue;



		//级联表 yonghu
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
			* 兴趣爱好
			*/
			private Integer aihaoTypes;
				/**
				* 兴趣爱好的值
				*/
				private String aihaoValue;
			/**
			* 电子邮箱
			*/
			private String yonghuEmail;
			/**
			* 个人简介
			*/
			private String yonghuContent;

		//级联表 users
			/**
			* 用户名
			*/
			private String uusername;
			/**
			* 密码
			*/
			private String upassword;
			/**
			* 角色
			*/
			private String urole;
			/**
			* 新增时间
			*/
			private Date uaddtime;

	public ForumView() {

	}

	public ForumView(ForumEntity forumEntity) {
		try {
			BeanUtils.copyProperties(this, forumEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}



			/**
			* 获取： 帖子类型的值
			*/
			public String getForumValue() {
				return forumValue;
			}
			/**
			* 设置： 帖子类型的值
			*/
			public void setForumValue(String forumValue) {
				this.forumValue = forumValue;
			}
			/**
			* 获取： 帖子状态的值
			*/
			public String getForumStateValue() {
				return forumStateValue;
			}
			/**
			* 设置： 帖子状态的值
			*/
			public void setForumStateValue(String forumStateValue) {
				this.forumStateValue = forumStateValue;
			}













				//级联表的get和set yonghu

					/**
					* 获取： 名称
					*/
					public String getYonghuName() {
						return yonghuName;
					}
					/**
					* 设置： 名称
					*/
					public void setYonghuName(String yonghuName) {
						this.yonghuName = yonghuName;
					}

					/**
					* 获取： 联系方式
					*/
					public String getYonghuPhone() {
						return yonghuPhone;
					}
					/**
					* 设置： 联系方式
					*/
					public void setYonghuPhone(String yonghuPhone) {
						this.yonghuPhone = yonghuPhone;
					}

					/**
					* 获取： 头像
					*/
					public String getYonghuPhoto() {
						return yonghuPhoto;
					}
					/**
					* 设置： 头像
					*/
					public void setYonghuPhoto(String yonghuPhoto) {
						this.yonghuPhoto = yonghuPhoto;
					}

					/**
					* 获取： 兴趣爱好
					*/
					public Integer getAihaoTypes() {
						return aihaoTypes;
					}
					/**
					* 设置： 兴趣爱好
					*/
					public void setAihaoTypes(Integer aihaoTypes) {
						this.aihaoTypes = aihaoTypes;
					}


						/**
						* 获取： 兴趣爱好的值
						*/
						public String getAihaoValue() {
							return aihaoValue;
						}
						/**
						* 设置： 兴趣爱好的值
						*/
						public void setAihaoValue(String aihaoValue) {
							this.aihaoValue = aihaoValue;
						}

					/**
					* 获取： 电子邮箱
					*/
					public String getYonghuEmail() {
						return yonghuEmail;
					}
					/**
					* 设置： 电子邮箱
					*/
					public void setYonghuEmail(String yonghuEmail) {
						this.yonghuEmail = yonghuEmail;
					}

					/**
					* 获取： 个人简介
					*/
					public String getYonghuContent() {
						return yonghuContent;
					}
					/**
					* 设置： 个人简介
					*/
					public void setYonghuContent(String yonghuContent) {
						this.yonghuContent = yonghuContent;
					}




			//级联表的get和set users

					/**
					* 获取： 用户名
					*/
					public String getUusername() {
						return uusername;
					}
					/**
					* 设置： 用户名
					*/
					public void setUusername(String uusername) {
						this.uusername = uusername;
					}

					/**
					* 获取： 密码
					*/
					public String getUpassword() {
						return upassword;
					}
					/**
					* 设置： 密码
					*/
					public void setUpassword(String upassword) {
						this.upassword = upassword;
					}

					/**
					* 获取： 角色
					*/
					public String getUrole() {
						return urole;
					}
					/**
					* 设置： 角色
					*/
					public void setUrole(String urole) {
						this.urole = urole;
					}

					/**
					* 获取： 新增时间
					*/
					public Date getUaddtime() {
						return uaddtime;
					}
					/**
					* 设置： 新增时间
					*/
					public void setUaddtime(Date uaddtime) {
						this.uaddtime = uaddtime;
					}
}
