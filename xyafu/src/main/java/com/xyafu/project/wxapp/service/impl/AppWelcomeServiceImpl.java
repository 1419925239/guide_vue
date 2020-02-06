package com.xyafu.project.wxapp.service.impl;

import java.util.List;
import com.xyafu.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.xyafu.project.wxapp.mapper.AppWelcomeMapper;
import com.xyafu.project.wxapp.domain.AppWelcome;
import com.xyafu.project.wxapp.service.IAppWelcomeService;

/**
 * welcomeService业务层处理
 *
 * @author xyafu
 * @date 2019-12-04
 */
@Service
public class AppWelcomeServiceImpl implements IAppWelcomeService
{
    @Autowired
    private AppWelcomeMapper appWelcomeMapper;

    /**
     * 查询welcome
     *
     * @param id welcomeID
     * @return welcome
     */
    @Override
    public AppWelcome selectAppWelcomeById(String id)
    {
        return appWelcomeMapper.selectAppWelcomeById(id);
    }

    /**
     * 查询welcome列表
     *
     * @param appWelcome welcome
     * @return welcome
     */
    @Override
    public List<AppWelcome> selectAppWelcomeList(AppWelcome appWelcome)
    {
        return appWelcomeMapper.selectAppWelcomeList(appWelcome);
    }

    /**
     * 新增welcome
     *
     * @param appWelcome welcome
     * @return 结果
     */
    @Override
    public int insertAppWelcome(AppWelcome appWelcome)
    {
        appWelcome.setCreateTime(DateUtils.getNowDate());
        return appWelcomeMapper.insertAppWelcome(appWelcome);
    }

    /**
     * 修改welcome
     *
     * @param appWelcome welcome
     * @return 结果
     */
    @Override
    public int updateAppWelcome(AppWelcome appWelcome)
    {
        appWelcome.setUpdateTime(DateUtils.getNowDate());
        return appWelcomeMapper.updateAppWelcome(appWelcome);
    }

    /**
     * 批量删除welcome
     *
     * @param ids 需要删除的welcomeID
     * @return 结果
     */
    @Override
    public int deleteAppWelcomeByIds(String[] ids)
    {
        return appWelcomeMapper.deleteAppWelcomeByIds(ids);
    }

    /**
     * 删除welcome信息
     *
     * @param id welcomeID
     * @return 结果
     */
    @Override
    public int deleteAppWelcomeById(String id)
    {
        return appWelcomeMapper.deleteAppWelcomeById(id);
    }
}
