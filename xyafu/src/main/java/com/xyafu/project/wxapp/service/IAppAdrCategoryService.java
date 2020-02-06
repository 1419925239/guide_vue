package com.xyafu.project.wxapp.service;

import com.xyafu.project.wxapp.domain.AppAdrCategory;
import java.util.List;

/**
 * categoryService接口
 * 
 * @author xyafu
 * @date 2019-12-05
 */
public interface IAppAdrCategoryService 
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
     * 批量删除category
     * 
     * @param ids 需要删除的categoryID
     * @return 结果
     */
    public int deleteAppAdrCategoryByIds(String[] ids);

    /**
     * 删除category信息
     * 
     * @param id categoryID
     * @return 结果
     */
    public int deleteAppAdrCategoryById(String id);
}
