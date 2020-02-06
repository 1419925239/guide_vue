package com.xyafu.project.wxapp.controller;

import java.util.List;

import com.xyafu.common.utils.SecurityUtils;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.xyafu.framework.aspectj.lang.annotation.Log;
import com.xyafu.framework.aspectj.lang.enums.BusinessType;
import com.xyafu.project.wxapp.domain.AppWelcome;
import com.xyafu.project.wxapp.service.IAppWelcomeService;
import com.xyafu.framework.web.controller.BaseController;
import com.xyafu.framework.web.domain.AjaxResult;
import com.xyafu.common.utils.poi.ExcelUtil;
import com.xyafu.framework.web.page.TableDataInfo;

/**
 * welcomeController
 *
 * @author xyafu
 * @date 2019-12-04
 */
@RestController
@RequestMapping("/wxapp/welcome")
public class AppWelcomeController extends BaseController
{
    @Autowired
    private IAppWelcomeService appWelcomeService;

    /**
     * 查询welcome列表
     */
    @PreAuthorize("@ss.hasPermi('wxapp:welcome:list')")
    @GetMapping("/list")
    public TableDataInfo list(AppWelcome appWelcome)
    {
        startPage();
        List<AppWelcome> list = appWelcomeService.selectAppWelcomeList(appWelcome);
        return getDataTable(list);
    }

    /**
     * 导出welcome列表
     */
    @PreAuthorize("@ss.hasPermi('wxapp:welcome:export')")
    @Log(title = "welcome", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(AppWelcome appWelcome)
    {
        List<AppWelcome> list = appWelcomeService.selectAppWelcomeList(appWelcome);
        ExcelUtil<AppWelcome> util = new ExcelUtil<AppWelcome>(AppWelcome.class);
        return util.exportExcel(list, "welcome");
    }

    /**
     * 获取welcome详细信息
     */
    @PreAuthorize("@ss.hasPermi('wxapp:welcome:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") String id)
    {
        return AjaxResult.success(appWelcomeService.selectAppWelcomeById(id));
    }

    /**
     * 新增welcome
     */
    @PreAuthorize("@ss.hasPermi('wxapp:welcome:add')")
    @Log(title = "welcome", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody AppWelcome appWelcome)
    {
        appWelcome.setCreateBy(SecurityUtils.getUsername());
        return toAjax(appWelcomeService.insertAppWelcome(appWelcome));
    }

    /**
     * 修改welcome
     */
    @PreAuthorize("@ss.hasPermi('wxapp:welcome:edit')")
    @Log(title = "welcome", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody AppWelcome appWelcome)
    {
        appWelcome.setUpdateBy(SecurityUtils.getUsername());
        return toAjax(appWelcomeService.updateAppWelcome(appWelcome));
    }

    /**
     * 删除welcome
     */
    @PreAuthorize("@ss.hasPermi('wxapp:welcome:remove')")
    @Log(title = "welcome", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable String[] ids)
    {
        return toAjax(appWelcomeService.deleteAppWelcomeByIds(ids));
    }
}
