package com.xyafu.project.wxapp.service;

import com.xyafu.project.wxapp.domain.AppWelcome;
import java.util.List;

/**
 * welcomeService接口
 * 
 * @author xyafu
 * @date 2019-12-04
 */
public interface IAppWelcomeService 
{
    /**
     * 查询welcome
     * 
     * @param id welcomeID
     * @return welcome
     */
    public AppWelcome selectAppWelcomeById(String id);

    /**
     * 查询welcome列表
     * 
     * @param appWelcome welcome
     * @return welcome集合
     */
    public List<AppWelcome> selectAppWelcomeList(AppWelcome appWelcome);

    /**
     * 新增welcome
     * 
     * @param appWelcome welcome
     * @return 结果
     */
    public int insertAppWelcome(AppWelcome appWelcome);

    /**
     * 修改welcome
     * 
     * @param appWelcome welcome
     * @return 结果
     */
    public int updateAppWelcome(AppWelcome appWelcome);

    /**
     * 批量删除welcome
     * 
     * @param ids 需要删除的welcomeID
     * @return 结果
     */
    public int deleteAppWelcomeByIds(String[] ids);

    /**
     * 删除welcome信息
     * 
     * @param id welcomeID
     * @return 结果
     */
    public int deleteAppWelcomeById(String id);
}
