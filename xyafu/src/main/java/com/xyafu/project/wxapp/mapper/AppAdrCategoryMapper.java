package com.xyafu.project.wxapp.mapper;

import com.xyafu.project.wxapp.domain.AppAdrCategory;
import java.util.List;

/**
 * categoryMapper接口
 * 
 * @author xyafu
 * @date 2019-12-05
 */
public interface AppAdrCategoryMapper 
{
    /**
     * 查询category
     * 
     * @param id categoryID
     * @return category
     */
    public AppAdrCategory selectAppAdrCategoryById(String id);

    /**
     * 查询category列表
     * 
     * @param appAdrCategory category
     * @return category集合
     */
    public List<AppAdrCategory> selectAppAdrCategoryList(AppAdrCategory appAdrCategory);

    /**
     * 新增category
     * 
     * @param appAdrCategory category
     * @return 结果
     */
    public int insertAppAdrCategory(AppAdrCategory appAdrCategory);

    /**
     * 修改category
     * 
     * @param appAdrCategory category
     * @return 结果
     */
    public int updateAppAdrCategory(AppAdrCategory appAdrCategory);

    /**
     * 删除category
     * 
     * @param id categoryID
     * @return 结果
     */
    public int deleteAppAdrCategoryById(String id);

    /**
     * 批量删除category
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteAppAdrCategoryByIds(String[] ids);
}
