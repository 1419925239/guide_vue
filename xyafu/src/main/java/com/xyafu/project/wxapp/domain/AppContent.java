package com.xyafu.project.wxapp.domain;

import com.xyafu.framework.aspectj.lang.annotation.Excel;
import com.xyafu.framework.web.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * content对象 app_content
 *
 * @author xyafu
 * @date 2019-12-05
 */
public class AppContent extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 内容ID */
    private String id;

    /** 内容标题 */
    @Excel(name = "内容标题")
    private String title;

    /** 内容正文 */
    @Excel(name = "内容正文")
    private String content;

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
    public void setContent(String content)
    {
        this.content = content;
    }

    public String getContent()
    {
        return content;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("title", getTitle())
            .append("content", getContent())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
