package com.xyafu.project.system.domain;

import com.xyafu.framework.aspectj.lang.annotation.Excel;
import com.xyafu.framework.web.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 附件对象 sys_attachments
 *
 * @author xyafu
 * @date 2019-12-14
 */
public class SysAttachments extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 附件id */
    private Long id;

    /** 文件名称 */
    @Excel(name = "文件名称")
    private String fileName;

    /** 文件地址 */
    @Excel(name = "文件地址")
    private String filePath;

    /** 文件大小 */
    @Excel(name = "文件大小")
    private String fileSize;

    /** 文件类型 */
    @Excel(name = "文件类型")
    private String mediaType;

    /** 文件后缀 */
    @Excel(name = "文件后缀")
    private String suffix;

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setFileName(String fileName)
    {
        this.fileName = fileName;
    }

    public String getFileName()
    {
        return fileName;
    }
    public void setFilePath(String filePath)
    {
        this.filePath = filePath;
    }

    public String getFilePath()
    {
        return filePath;
    }
    public void setFileSize(String fileSize)
    {
        this.fileSize = fileSize;
    }

    public String getFileSize()
    {
        return fileSize;
    }
    public void setMediaType(String mediaType)
    {
        this.mediaType = mediaType;
    }

    public String getMediaType()
    {
        return mediaType;
    }
    public void setSuffix(String suffix)
    {
        this.suffix = suffix;
    }

    public String getSuffix()
    {
        return suffix;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("fileName", getFileName())
            .append("filePath", getFilePath())
            .append("fileSize", getFileSize())
            .append("mediaType", getMediaType())
            .append("suffix", getSuffix())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
