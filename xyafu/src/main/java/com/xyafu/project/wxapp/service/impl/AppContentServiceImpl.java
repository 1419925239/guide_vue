package com.xyafu.project.wxapp.service.impl;

import java.util.List;
import com.xyafu.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.xyafu.project.wxapp.mapper.AppContentMapper;
import com.xyafu.project.wxapp.domain.AppContent;
import com.xyafu.project.wxapp.service.IAppContentService;

/**
 * contentService业务层处理
 *
 * @author xyafu
 * @date 2019-12-05
 */
@Service
public class AppContentServiceImpl implements IAppContentService
{
    @Autowired
    private AppContentMapper appContentMapper;

    /**
     * 查询content
     *
     * @param id contentID
     * @return content
     */
    @Override
    public AppContent selectAppContentById(String id)
    {
        return appContentMapper.selectAppContentById(id);
    }

    /**
     * 查询content列表
     *
     * @param appContent content
     * @return content
     */
    @Override
    public List<AppContent> selectAppContentList(AppContent appContent)
    {
        return appContentMapper.selectAppContentList(appContent);
    }

    /**
     * 新增content
     *
     * @param appContent content
     * @return 结果
     */
    @Override
    public int insertAppContent(AppContent appContent)
    {
        appContent.setCreateTime(DateUtils.getNowDate());
        return appContentMapper.insertAppContent(appContent);
    }

    /**
     * 修改content
     *
     * @param appContent content
     * @return 结果
     */
    @Override
    public int updateAppContent(AppContent appContent)
    {
        appContent.setUpdateTime(DateUtils.getNowDate());
        return appContentMapper.updateAppContent(appContent);
    }

    /**
     * 批量删除content
     *
     * @param ids 需要删除的contentID
     * @return 结果
     */
    @Override
    public int deleteAppContentByIds(String[] ids)
    {
        return appContentMapper.deleteAppContentByIds(ids);
    }

    /**
     * 删除content信息
     *
     * @param id contentID
     * @return 结果
     */
    @Override
    public int deleteAppContentById(String id)
    {
        return appContentMapper.deleteAppContentById(id);
    }
}
