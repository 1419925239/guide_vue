package com.xyafu.project.wxapp.service;

import com.xyafu.project.wxapp.domain.AppMap;
import java.util.List;

/**
 * mapService接口
 * 
 * @author xyafu
 * @date 2019-12-05
 */
public interface IAppMapService 
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
     * 批量删除map
     * 
     * @param ids 需要删除的mapID
     * @return 结果
     */
    public int deleteAppMapByIds(String[] ids);

    /**
     * 删除map信息
     * 
     * @param id mapID
     * @return 结果
     */
    public int deleteAppMapById(String id);
}
