package com.xyafu.project.wxapp.service.impl;

import java.util.List;
import com.xyafu.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.xyafu.project.wxapp.mapper.AppMapMapper;
import com.xyafu.project.wxapp.domain.AppMap;
import com.xyafu.project.wxapp.service.IAppMapService;

/**
 * mapService业务层处理
 *
 * @author xyafu
 * @date 2019-12-05
 */
@Service
public class AppMapServiceImpl implements IAppMapService
{
    @Autowired
    private AppMapMapper appMapMapper;

    /**
     * 查询map
     *
     * @param id mapID
     * @return map
     */
    @Override
    public AppMap selectAppMapById(String id)
    {
        return appMapMapper.selectAppMapById(id);
    }

    /**
     * 查询map列表
     *
     * @param appMap map
     * @return map
     */
    @Override
    public List<AppMap> selectAppMapList(AppMap appMap)
    {
        return appMapMapper.selectAppMapList(appMap);
    }

    /**
     * 新增map
     *
     * @param appMap map
     * @return 结果
     */
    @Override
    public int insertAppMap(AppMap appMap)
    {
        appMap.setCreateTime(DateUtils.getNowDate());
        return appMapMapper.insertAppMap(appMap);
    }

    /**
     * 修改map
     *
     * @param appMap map
     * @return 结果
     */
    @Override
    public int updateAppMap(AppMap appMap)
    {
        appMap.setUpdateTime(DateUtils.getNowDate());
        return appMapMapper.updateAppMap(appMap);
    }

    /**
     * 批量删除map
     *
     * @param ids 需要删除的mapID
     * @return 结果
     */
    @Override
    public int deleteAppMapByIds(String[] ids)
    {
        return appMapMapper.deleteAppMapByIds(ids);
    }

    /**
     * 删除map信息
     *
     * @param id mapID
     * @return 结果
     */
    @Override
    public int deleteAppMapById(String id)
    {
        return appMapMapper.deleteAppMapById(id);
    }
}
