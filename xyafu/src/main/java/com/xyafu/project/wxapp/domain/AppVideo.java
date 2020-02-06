package com.xyafu.project.wxapp.domain;

import com.xyafu.framework.aspectj.lang.annotation.Excel;
import com.xyafu.framework.web.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * video对象 app_video
 *
 * @author xyafu
 * @date 2019-12-05
 */
public class AppVideo extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 视频ID */
    private String id;

    /** 视频标题 */
    @Excel(name = "视频标题")
    private String title;

    /** 视频封面图 */
    @Excel(name = "视频封面图")
    private String coverimg;

    /** 视频链接 */
    @Excel(name = "视频链接")
    private String src;

    /** 0为轮播 */
    @Excel(name = "0为轮播")
    private String status;

    public void setId(String id)
    {
        this.id = id;
    }

    public String getId()
    {
        return id;
    }
    public void setTitle(String title)
    {
        this.title = title;
    }

    public String getTitle()
    {
        return title;
    }
    public void setCoverimg(String coverimg)
    {
        this.coverimg = coverimg;
    }

    public String getCoverimg()
    {
        return coverimg;
    }
    public void setSrc(String src)
    {
        this.src = src;
    }

    public String getSrc()
    {
        return src;
    }
    public void setStatus(String status)
    {
        this.status = status;
    }

    public String getStatus()
    {
        return status;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("title", getTitle())
            .append("coverimg", getCoverimg())
            .append("src", getSrc())
            .append("status", getStatus())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
