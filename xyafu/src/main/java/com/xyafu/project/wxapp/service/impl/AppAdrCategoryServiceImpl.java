package com.xyafu.project.wxapp.service.impl;

import java.util.List;
import com.xyafu.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.xyafu.project.wxapp.mapper.AppAdrCategoryMapper;
import com.xyafu.project.wxapp.domain.AppAdrCategory;
import com.xyafu.project.wxapp.service.IAppAdrCategoryService;

/**
 * categoryService业务层处理
 *
 * @author xyafu
 * @date 2019-12-05
 */
@Service
public class AppAdrCategoryServiceImpl implements IAppAdrCategoryService
{
    @Autowired
    private AppAdrCategoryMapper appAdrCategoryMapper;

    /**
     * 查询category
     *
     * @param id categoryID
     * @return category
     */
    @Override
    public AppAdrCategory selectAppAdrCategoryById(String id)
    {
        return appAdrCategoryMapper.selectAppAdrCategoryById(id);
    }

    /**
     * 查询category列表
     *
     * @param appAdrCategory category
     * @return category
     */
    @Override
    public List<AppAdrCategory> selectAppAdrCategoryList(AppAdrCategory appAdrCategory)
    {
        return appAdrCategoryMapper.selectAppAdrCategoryList(appAdrCategory);
    }

    /**
     * 新增category
     *
     * @param appAdrCategory category
     * @return 结果
     */
    @Override
    public int insertAppAdrCategory(AppAdrCategory appAdrCategory)
    {
        appAdrCategory.setCreateTime(DateUtils.getNowDate());
        return appAdrCategoryMapper.insertAppAdrCategory(appAdrCategory);
    }

    /**
     * 修改category
     *
     * @param appAdrCategory category
     * @return 结果
     */
    @Override
    public int updateAppAdrCategory(AppAdrCategory appAdrCategory)
    {
        appAdrCategory.setUpdateTime(DateUtils.getNowDate());
        return appAdrCategoryMapper.updateAppAdrCategory(appAdrCategory);
    }

    /**
     * 批量删除category
     *
     * @param ids 需要删除的categoryID
     * @return 结果
     */
    @Override
    public int deleteAppAdrCategoryByIds(String[] ids)
    {
        return appAdrCategoryMapper.deleteAppAdrCategoryByIds(ids);
    }

    /**
     * 删除category信息
     *
     * @param id categoryID
     * @return 结果
     */
    @Override
    public int deleteAppAdrCategoryById(String id)
    {
        return appAdrCategoryMapper.deleteAppAdrCategoryById(id);
    }
}
