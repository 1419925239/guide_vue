package com.xyafu.project.wxapp.domain;

import com.xyafu.framework.aspectj.lang.annotation.Excel;
import com.xyafu.framework.web.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * welcome对象 app_welcome
 *
 * @author xyafu
 * @date 2019-12-04
 */
public class AppWelcome extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** id */
    private String id;

    /** key名称 */
    @Excel(name = "key名称")
    private String keyName;

    /** key值 */
    @Excel(name = "key值")
    private String value;

    public void setId(String id)
    {
        this.id = id;
    }

    public String getId()
    {
        return id;
    }
    public void setKeyName(String keyName)
    {
        this.keyName = keyName;
    }

    public String getKeyName()
    {
        return keyName;
    }
    public void setValue(String value)
    {
        this.value = value;
    }

    public String getValue()
    {
        return value;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("keyName", getKeyName())
            .append("value", getValue())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}
