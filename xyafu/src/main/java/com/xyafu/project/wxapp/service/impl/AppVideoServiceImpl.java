package com.xyafu.project.wxapp.service.impl;

import java.util.List;
import com.xyafu.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.xyafu.project.wxapp.mapper.AppVideoMapper;
import com.xyafu.project.wxapp.domain.AppVideo;
import com.xyafu.project.wxapp.service.IAppVideoService;

/**
 * videoService业务层处理
 *
 * @author xyafu
 * @date 2019-12-05
 */
@Service
public class AppVideoServiceImpl implements IAppVideoService
{
    @Autowired
    private AppVideoMapper appVideoMapper;

    /**
     * 查询video
     *
     * @param id videoID
     * @return video
     */
    @Override
    public AppVideo selectAppVideoById(String id)
    {
        return appVideoMapper.selectAppVideoById(id);
    }

    /**
     * 查询video列表
     *
     * @param appVideo video
     * @return video
     */
    @Override
    public List<AppVideo> selectAppVideoList(AppVideo appVideo)
    {
        return appVideoMapper.selectAppVideoList(appVideo);
    }

    /**
     * 新增video
     *
     * @param appVideo video
     * @return 结果
     */
    @Override
    public int insertAppVideo(AppVideo appVideo)
    {
        appVideo.setCreateTime(DateUtils.getNowDate());
        return appVideoMapper.insertAppVideo(appVideo);
    }

    /**
     * 修改video
     *
     * @param appVideo video
     * @return 结果
     */
    @Override
    public int updateAppVideo(AppVideo appVideo)
    {
        appVideo.setUpdateTime(DateUtils.getNowDate());
        return appVideoMapper.updateAppVideo(appVideo);
    }

    /**
     * 批量删除video
     *
     * @param ids 需要删除的videoID
     * @return 结果
     */
    @Override
    public int deleteAppVideoByIds(String[] ids)
    {
        return appVideoMapper.deleteAppVideoByIds(ids);
    }

    /**
     * 删除video信息
     *
     * @param id videoID
     * @return 结果
     */
    @Override
    public int deleteAppVideoById(String id)
    {
        return appVideoMapper.deleteAppVideoById(id);
    }

    @Override
    public List<AppVideo> selectAppVideoByStatus(AppVideo appVideo) {
        return appVideoMapper.selectAppVideoByStatus(appVideo);
    }
}
