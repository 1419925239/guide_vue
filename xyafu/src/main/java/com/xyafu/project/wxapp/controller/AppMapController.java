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
import com.xyafu.project.wxapp.domain.AppMap;
import com.xyafu.project.wxapp.service.IAppMapService;
import com.xyafu.framework.web.controller.BaseController;
import com.xyafu.framework.web.domain.AjaxResult;
import com.xyafu.common.utils.poi.ExcelUtil;
import com.xyafu.framework.web.page.TableDataInfo;

/**
 * mapController
 *
 * @author xyafu
 * @date 2019-12-05
 */
@RestController
@RequestMapping("/wxapp/map")
public class AppMapController extends BaseController
{
    @Autowired
    private IAppMapService appMapService;

    /**
     * 查询map列表
     */
    @PreAuthorize("@ss.hasPermi('wxapp:map:list')")
    @GetMapping("/list")
    public TableDataInfo list(AppMap appMap)
    {
        startPage();
        List<AppMap> list = appMapService.selectAppMapList(appMap);
        return getDataTable(list);
    }

    /**
     * 导出map列表
     */
    @PreAuthorize("@ss.hasPermi('wxapp:map:export')")
    @Log(title = "map", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(AppMap appMap)
    {
        List<AppMap> list = appMapService.selectAppMapList(appMap);
        ExcelUtil<AppMap> util = new ExcelUtil<AppMap>(AppMap.class);
        return util.exportExcel(list, "map");
    }

    /**
     * 获取map详细信息
     */
    @PreAuthorize("@ss.hasPermi('wxapp:map:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") String id)
    {
        return AjaxResult.success(appMapService.selectAppMapById(id));
    }

    /**
     * 新增map
     */
    @PreAuthorize("@ss.hasPermi('wxapp:map:add')")
    @Log(title = "map", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody AppMap appMap)
    {
        appMap.setCreateBy(SecurityUtils.getUsername());
        return toAjax(appMapService.insertAppMap(appMap));
    }

    /**
     * 修改map
     */
    @PreAuthorize("@ss.hasPermi('wxapp:map:edit')")
    @Log(title = "map", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody AppMap appMap)
    {
        appMap.setUpdateBy(SecurityUtils.getUsername());
        return toAjax(appMapService.updateAppMap(appMap));
    }

    /**
     * 删除map
     */
    @PreAuthorize("@ss.hasPermi('wxapp:map:remove')")
    @Log(title = "map", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable String[] ids)
    {
        return toAjax(appMapService.deleteAppMapByIds(ids));
    }
}
