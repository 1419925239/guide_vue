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
import com.xyafu.project.wxapp.domain.AppSchool;
import com.xyafu.project.wxapp.service.IAppSchoolService;
import com.xyafu.framework.web.controller.BaseController;
import com.xyafu.framework.web.domain.AjaxResult;
import com.xyafu.common.utils.poi.ExcelUtil;
import com.xyafu.framework.web.page.TableDataInfo;

/**
 * schoolController
 *
 * @author xyafu
 * @date 2019-12-05
 */
@RestController
@RequestMapping("/wxapp/school")
public class AppSchoolController extends BaseController
{
    @Autowired
    private IAppSchoolService appSchoolService;

    /**
     * 查询school列表
     */
    @PreAuthorize("@ss.hasPermi('wxapp:school:list')")
    @GetMapping("/list")
    public TableDataInfo list(AppSchool appSchool)
    {
        startPage();
        List<AppSchool> list = appSchoolService.selectAppSchoolList(appSchool);
        return getDataTable(list);
    }

    /**
     * 导出school列表
     */
    @PreAuthorize("@ss.hasPermi('wxapp:school:export')")
    @Log(title = "school", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(AppSchool appSchool)
    {
        List<AppSchool> list = appSchoolService.selectAppSchoolList(appSchool);
        ExcelUtil<AppSchool> util = new ExcelUtil<AppSchool>(AppSchool.class);
        return util.exportExcel(list, "school");
    }

    /**
     * 获取school详细信息
     */
    @PreAuthorize("@ss.hasPermi('wxapp:school:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") String id)
    {
        return AjaxResult.success(appSchoolService.selectAppSchoolById(id));
    }

    /**
     * 新增school
     */
    @PreAuthorize("@ss.hasPermi('wxapp:school:add')")
    @Log(title = "school", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody AppSchool appSchool)
    {
        appSchool.setCreateBy(SecurityUtils.getUsername());
        return toAjax(appSchoolService.insertAppSchool(appSchool));
    }

    /**
     * 修改school
     */
    @PreAuthorize("@ss.hasPermi('wxapp:school:edit')")
    @Log(title = "school", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody AppSchool appSchool)
    {
        appSchool.setUpdateBy(SecurityUtils.getUsername());
        return toAjax(appSchoolService.updateAppSchool(appSchool));
    }

    /**
     * 删除school
     */
    @PreAuthorize("@ss.hasPermi('wxapp:school:remove')")
    @Log(title = "school", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable String[] ids)
    {
        return toAjax(appSchoolService.deleteAppSchoolByIds(ids));
    }
}
