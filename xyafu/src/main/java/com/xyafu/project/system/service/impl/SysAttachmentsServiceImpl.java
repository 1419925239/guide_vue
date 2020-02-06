package com.xyafu.project.system.service.impl;

import java.util.List;
import com.xyafu.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.xyafu.project.system.mapper.SysAttachmentsMapper;
import com.xyafu.project.system.domain.SysAttachments;
import com.xyafu.project.system.service.ISysAttachmentsService;

/**
 * 附件Service业务层处理
 *
 * @author xyafu
 * @date 2019-12-14
 */
@Service
public class SysAttachmentsServiceImpl implements ISysAttachmentsService
{
    @Autowired
    private SysAttachmentsMapper sysAttachmentsMapper;

    /**
     * 查询附件
     *
     * @param id 附件ID
     * @return 附件
     */
    @Override
    public SysAttachments selectSysAttachmentsById(Long id)
    {
        return sysAttachmentsMapper.selectSysAttachmentsById(id);
    }

    /**
     * 查询附件列表
     *
     * @param sysAttachments 附件
     * @return 附件
     */
    @Override
    public List<SysAttachments> selectSysAttachmentsList(SysAttachments sysAttachments)
    {
        return sysAttachmentsMapper.selectSysAttachmentsList(sysAttachments);
    }

    /**
     * 新增附件
     *
     * @param sysAttachments 附件
     * @return 结果
     */
    @Override
    public int insertSysAttachments(SysAttachments sysAttachments)
    {
        sysAttachments.setCreateTime(DateUtils.getNowDate());
        return sysAttachmentsMapper.insertSysAttachments(sysAttachments);
    }

    /**
     * 修改附件
     *
     * @param sysAttachments 附件
     * @return 结果
     */
    @Override
    public int updateSysAttachments(SysAttachments sysAttachments)
    {
        sysAttachments.setUpdateTime(DateUtils.getNowDate());
        return sysAttachmentsMapper.updateSysAttachments(sysAttachments);
    }

    /**
     * 批量删除附件
     *
     * @param ids 需要删除的附件ID
     * @return 结果
     */
    @Override
    public int deleteSysAttachmentsByIds(Long[] ids)
    {
        return sysAttachmentsMapper.deleteSysAttachmentsByIds(ids);
    }

    /**
     * 删除附件信息
     *
     * @param id 附件ID
     * @return 结果
     */
    @Override
    public int deleteSysAttachmentsById(Long id)
    {
        return sysAttachmentsMapper.deleteSysAttachmentsById(id);
    }
}
