package com.xyafu.project.wxapp.mapper;

import com.xyafu.project.wxapp.domain.AppContent;
import java.util.List;

/**
 * contentMapper接口
 * 
 * @author xyafu
 * @date 2019-12-05
 */
public interface AppContentMapper 
{
    /**
     * 查询content
     * 
     * @param id contentID
     * @return content
     */
    public AppContent selectAppContentById(String id);

    /**
     * 查询content列表
     * 
     * @param appContent content
     * @return content集合
     */
    public List<AppContent> selectAppContentList(AppContent appContent);

    /**
     * 新增content
     * 
     * @param appContent content
     * @return 结果
     */
    public int insertAppContent(AppContent appContent);

    /**
     * 修改content
     * 
     * @param appContent content
     * @return 结果
     */
    public int updateAppContent(AppContent appContent);

    /**
     * 删除content
     * 
     * @param id contentID
     * @return 结果
     */
    public int deleteAppContentById(String id);

    /**
     * 批量删除content
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteAppContentByIds(String[] ids);
}
