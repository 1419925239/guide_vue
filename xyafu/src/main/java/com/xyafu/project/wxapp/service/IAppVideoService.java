package com.xyafu.project.wxapp.service;

import com.xyafu.project.wxapp.domain.AppVideo;
import java.util.List;

/**
 * videoService接口
 *
 * @author xyafu
 * @date 2019-12-05
 */
public interface IAppVideoService
{
    /**
     * 查询video
     *
     * @param id videoID
     * @return video
     */
    public AppVideo selectAppVideoById(String id);

    /**
     * 查询video列表
     *
     * @param appVideo video
     * @return video集合
     */
    public List<AppVideo> selectAppVideoList(AppVideo appVideo);

    /**
     * 新增video
     *
     * @param appVideo video
     * @return 结果
     */
    public int insertAppVideo(AppVideo appVideo);

    /**
     * 修改video
     *
     * @param appVideo video
     * @return 结果
     */
    public int updateAppVideo(AppVideo appVideo);

    /**
     * 批量删除video
     *
     * @param ids 需要删除的videoID
     * @return 结果
     */
    public int deleteAppVideoByIds(String[] ids);

    /**
     * 删除video信息
     *
     * @param id videoID
     * @return 结果
     */
    public int deleteAppVideoById(String id);

    public List<AppVideo> selectAppVideoByStatus(AppVideo appVideo);
}
