package com.xyafu.project.wxapp.mapper;

import com.xyafu.project.wxapp.domain.AppVideo;
import java.util.List;

/**
 * videoMapper接口
 *
 * @author xyafu
 * @date 2019-12-05
 */
public interface AppVideoMapper
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
     * 删除video
     *
     * @param id videoID
     * @return 结果
     */
    public int deleteAppVideoById(String id);

    /**
     * 批量删除video
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteAppVideoByIds(String[] ids);

    public List<AppVideo> selectAppVideoByStatus(AppVideo appVideo);
}
