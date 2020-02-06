package com.xyafu.project.wxapp.domain;

import com.xyafu.framework.aspectj.lang.annotation.Excel;
import com.xyafu.framework.web.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringStyle;
import org.apache.commons.lang3.builder.ToStringBuilder;

/**
 * school对象 app_school
 *
 * @author xyafu
 * @date 2019-12-05
 */
public class AppSchool extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** uuid */
    private String id;

    /** 学校中文名称 */
    @Excel(name = "学校中文名称")
    private String schoolname;

    /** 学校英文名称 */
    @Excel(name = "学校英文名称")
    private String englishname;

    /** 校园图片 */
    @Excel(name = "校园图片")
    private String images;

    public void setId(String id)
    {
        this.id = id;
    }

    public String getId()
    {
        return id;
    }
    public void setSchoolname(String schoolname)
    {
        this.schoolname = schoolname;
    }

    public String getSchoolname()
    {
        return schoolname;
    }
    public void setEnglishname(String englishname)
    {
        this.englishname = englishname;
    }

    public String getEnglishname()
    {
        return englishname;
    }
    public void setImages(String images)
    {
        this.images = images;
    }

    public String getImages()
    {
        return images;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("schoolname", getSchoolname())
            .append("englishname", getEnglishname())
            .append("images", getImages())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
