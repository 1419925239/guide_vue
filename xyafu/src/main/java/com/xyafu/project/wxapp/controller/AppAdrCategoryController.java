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
import com.xyafu.project.wxapp.domain.AppAdrCategory;
import com.xyafu.project.wxapp.service.IAppAdrCategoryService;
import com.xyafu.framework.web.controller.BaseController;
import com.xyafu.framework.web.domain.AjaxResult;
import com.xyafu.common.utils.poi.ExcelUtil;
import com.xyafu.framework.web.page.TableDataInfo;

/**
 * categoryController
 *
 * @author xyafu
 * @date 2019-12-05
 */
@RestController
@RequestMapping("/wxapp/category")
public class AppAdrCategoryController extends BaseController
{
    @Autowired
    private IAppAdrCategoryService appAdrCategoryService;

    /**
     * 查询category列表
     */
    @PreAuthorize("@ss.hasPermi('wxapp:category:list')")
    @GetMapping("/list")
    public TableDataInfo list(AppAdrCategory appAdrCategory)
    {
        startPage();
        List<AppAdrCategory> list = appAdrCategoryService.selectAppAdrCategoryList(appAdrCategory);
        return getDataTable(list);
    }

    /**
     * 导出category列表
     */
    @PreAuthorize("@ss.hasPermi('wxapp:category:export')")
    @Log(title = "category", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(AppAdrCategory appAdrCategory)
    {
        List<AppAdrCategory> list = appAdrCategoryService.selectAppAdrCategoryList(appAdrCategory);
        ExcelUtil<AppAdrCategory> util = new ExcelUtil<AppAdrCategory>(AppAdrCategory.class);
        return util.exportExcel(list, "category");
    }

    /**
     * 获取category详细信息
     */
    @PreAuthorize("@ss.hasPermi('wxapp:category:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") String id)
    {
        return AjaxResult.success(appAdrCategoryService.selectAppAdrCategoryById(id));
    }

    /**
     * 新增category
     */
    @PreAuthorize("@ss.hasPermi('wxapp:category:add')")
    @Log(title = "category", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody AppAdrCategory appAdrCategory)
    {
        appAdrCategory.setCreateBy(SecurityUtils.getUsername());
        return toAjax(appAdrCategoryService.insertAppAdrCategory(appAdrCategory));
    }

    /**
     * 修改category
     */
    @PreAuthorize("@ss.hasPermi('wxapp:category:edit')")
    @Log(title = "category", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody AppAdrCategory appAdrCategory)
    {
        appAdrCategory.setUpdateBy(SecurityUtils.getUsername());
        return toAjax(appAdrCategoryService.updateAppAdrCategory(appAdrCategory));
    }

    /**
     * 删除category
     */
    @PreAuthorize("@ss.hasPermi('wxapp:category:remove')")
    @Log(title = "category", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable String[] ids)
    {
        return toAjax(appAdrCategoryService.deleteAppAdrCategoryByIds(ids));
    }
}
