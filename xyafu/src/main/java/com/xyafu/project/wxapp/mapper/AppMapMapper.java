package com.xyafu.project.wxapp.mapper;

import com.xyafu.project.wxapp.domain.AppMap;
import java.util.List;

/**
 * mapMapper接口
 * 
 * @author xyafu
 * @date 2019-12-05
 */
public interface AppMapMapper 
{
    /**
     * 查询map
     * 
     * @param id mapID
     * @return map
     */
    public AppMap selectAppMapById(String id);

    /**
     * 查询map列表
     * 
     * @param appMap map
     * @return map集合
     */
    public List<AppMap> selectAppMapList(AppMap appMap);

    /**
     * 新增map
     * 
     * @param appMap map
     * @return 结果
     */
    public int insertAppMap(AppMap appMap);

    /**
     * 修改map
     * 
     * @param appMap map
     * @return 结果
     */
    public int updateAppMap(AppMap appMap);

    /**
     * 删除map
     * 
     * @param id mapID
     * @return 结果
     */
    public int deleteAppMapById(String id);

    /**
     * 批量删除map
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteAppMapByIds(String[] ids);
}
