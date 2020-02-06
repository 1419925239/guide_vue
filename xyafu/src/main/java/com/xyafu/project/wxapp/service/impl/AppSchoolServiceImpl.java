package com.xyafu.project.wxapp.service.impl;

import java.util.List;
import com.xyafu.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.xyafu.project.wxapp.mapper.AppSchoolMapper;
import com.xyafu.project.wxapp.domain.AppSchool;
import com.xyafu.project.wxapp.service.IAppSchoolService;

/**
 * schoolService业务层处理
 *
 * @author xyafu
 * @date 2019-12-05
 */
@Service
public class AppSchoolServiceImpl implements IAppSchoolService
{
    @Autowired
    private AppSchoolMapper appSchoolMapper;

    /**
     * 查询school
     *
     * @param id schoolID
     * @return school
     */
    @Override
    public AppSchool selectAppSchoolById(String id)
    {
        return appSchoolMapper.selectAppSchoolById(id);
    }

    /**
     * 查询school列表
     *
     * @param appSchool school
     * @return school
     */
    @Override
    public List<AppSchool> selectAppSchoolList(AppSchool appSchool)
    {
        return appSchoolMapper.selectAppSchoolList(appSchool);
    }

    /**
     * 新增school
     *
     * @param appSchool school
     * @return 结果
     */
    @Override
    public int insertAppSchool(AppSchool appSchool)
    {
        appSchool.setCreateTime(DateUtils.getNowDate());
        return appSchoolMapper.insertAppSchool(appSchool);
    }

    /**
     * 修改school
     *
     * @param appSchool school
     * @return 结果
     */
    @Override
    public int updateAppSchool(AppSchool appSchool)
    {
        appSchool.setUpdateTime(DateUtils.getNowDate());
        return appSchoolMapper.updateAppSchool(appSchool);
    }

    /**
     * 批量删除school
     *
     * @param ids 需要删除的schoolID
     * @return 结果
     */
    @Override
    public int deleteAppSchoolByIds(String[] ids)
    {
        return appSchoolMapper.deleteAppSchoolByIds(ids);
    }

    /**
     * 删除school信息
     *
     * @param id schoolID
     * @return 结果
     */
    @Override
    public int deleteAppSchoolById(String id)
    {
        return appSchoolMapper.deleteAppSchoolById(id);
    }
}
