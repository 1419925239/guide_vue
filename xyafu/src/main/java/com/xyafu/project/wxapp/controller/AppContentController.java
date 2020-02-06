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
import com.xyafu.project.wxapp.domain.AppContent;
import com.xyafu.project.wxapp.service.IAppContentService;
import com.xyafu.framework.web.controller.BaseController;
import com.xyafu.framework.web.domain.AjaxResult;
import com.xyafu.common.utils.poi.ExcelUtil;
import com.xyafu.framework.web.page.TableDataInfo;

/**
 * contentController
 *
 * @author xyafu
 * @date 2019-12-05
 */
@RestController
@RequestMapping("/wxapp/content")
public class AppContentController extends BaseController
{
    @Autowired
    private IAppContentService appContentService;

    /**
     * 查询content列表
     */
    @PreAuthorize("@ss.hasPermi('wxapp:content:list')")
    @GetMapping("/list")
    public TableDataInfo list(AppContent appContent)
    {
        startPage();
        List<AppContent> list = appContentService.selectAppContentList(appContent);
        return getDataTable(list);
    }

    /**
     * 导出content列表
     */
    @PreAuthorize("@ss.hasPermi('wxapp:content:export')")
    @Log(title = "content", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(AppContent appContent)
    {
        List<AppContent> list = appContentService.selectAppContentList(appContent);
        ExcelUtil<AppContent> util = new ExcelUtil<AppContent>(AppContent.class);
        return util.exportExcel(list, "content");
    }

    /**
     * 获取content详细信息
     */
    @PreAuthorize("@ss.hasPermi('wxapp:content:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") String id)
    {
        return AjaxResult.success(appContentService.selectAppContentById(id));
    }

    /**
     * 新增content
     */
    @PreAuthorize("@ss.hasPermi('wxapp:content:add')")
    @Log(title = "content", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody AppContent appContent)
    {
        appContent.setCreateBy(SecurityUtils.getUsername());
        return toAjax(appContentService.insertAppContent(appContent));
    }

    /**
     * 修改content
     */
    @PreAuthorize("@ss.hasPermi('wxapp:content:edit')")
    @Log(title = "content", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody AppContent appContent)
    {
        appContent.setUpdateBy(SecurityUtils.getUsername());
        return toAjax(appContentService.updateAppContent(appContent));
    }

    /**
     * 删除content
     */
    @PreAuthorize("@ss.hasPermi('wxapp:content:remove')")
    @Log(title = "content", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable String[] ids)
    {
        return toAjax(appContentService.deleteAppContentByIds(ids));
    }
}
