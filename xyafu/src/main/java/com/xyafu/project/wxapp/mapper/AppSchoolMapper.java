package com.xyafu.project.wxapp.mapper;

import com.xyafu.project.wxapp.domain.AppSchool;
import java.util.List;

/**
 * schoolMapper接口
 * 
 * @author xyafu
 * @date 2019-12-05
 */
public interface AppSchoolMapper 
{
    /**
     * 查询school
     * 
     * @param id schoolID
     * @return school
     */
    public AppSchool selectAppSchoolById(String id);

    /**
     * 查询school列表
     * 
     * @param appSchool school
     * @return school集合
     */
    public List<AppSchool> selectAppSchoolList(AppSchool appSchool);

    /**
     * 新增school
     * 
     * @param appSchool school
     * @return 结果
     */
    public int insertAppSchool(AppSchool appSchool);

    /**
     * 修改school
     * 
     * @param appSchool school
     * @return 结果
     */
    public int updateAppSchool(AppSchool appSchool);

    /**
     * 删除school
     * 
     * @param id schoolID
     * @return 结果
     */
    public int deleteAppSchoolById(String id);

    /**
     * 批量删除school
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteAppSchoolByIds(String[] ids);
}
