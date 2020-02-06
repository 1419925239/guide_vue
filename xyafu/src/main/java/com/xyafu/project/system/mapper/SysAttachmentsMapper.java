package com.xyafu.project.system.mapper;

import com.xyafu.project.system.domain.SysAttachments;
import java.util.List;

/**
 * 附件Mapper接口
 * 
 * @author xyafu
 * @date 2019-12-14
 */
public interface SysAttachmentsMapper 
{
    /**
     * 查询附件
     * 
     * @param id 附件ID
     * @return 附件
     */
    public SysAttachments selectSysAttachmentsById(Long id);

    /**
     * 查询附件列表
     * 
     * @param sysAttachments 附件
     * @return 附件集合
     */
    public List<SysAttachments> selectSysAttachmentsList(SysAttachments sysAttachments);

    /**
     * 新增附件
     * 
     * @param sysAttachments 附件
     * @return 结果
     */
    public int insertSysAttachments(SysAttachments sysAttachments);

    /**
     * 修改附件
     * 
     * @param sysAttachments 附件
     * @return 结果
     */
    public int updateSysAttachments(SysAttachments sysAttachments);

    /**
     * 删除附件
     * 
     * @param id 附件ID
     * @return 结果
     */
    public int deleteSysAttachmentsById(Long id);

    /**
     * 批量删除附件
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteSysAttachmentsByIds(Long[] ids);
}
