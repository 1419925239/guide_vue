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
import com.xyafu.project.wxapp.domain.AppVideo;
import com.xyafu.project.wxapp.service.IAppVideoService;
import com.xyafu.framework.web.controller.BaseController;
import com.xyafu.framework.web.domain.AjaxResult;
import com.xyafu.common.utils.poi.ExcelUtil;
import com.xyafu.framework.web.page.TableDataInfo;

/**
 * videoController
 *
 * @author xyafu
 * @date 2019-12-05
 */
@RestController
@RequestMapping("/wxapp/video")
public class AppVideoController extends BaseController
{
    @Autowired
    private IAppVideoService appVideoService;

    /**
     * 查询video列表
     */
    @PreAuthorize("@ss.hasPermi('wxapp:video:list')")
    @GetMapping("/list")
    public TableDataInfo list(AppVideo appVideo)
    {
        startPage();
        List<AppVideo> list = appVideoService.selectAppVideoList(appVideo);
        return getDataTable(list);
    }

    /**
     * 导出video列表
     */
    @PreAuthorize("@ss.hasPermi('wxapp:video:export')")
    @Log(title = "video", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(AppVideo appVideo)
    {
        List<AppVideo> list = appVideoService.selectAppVideoList(appVideo);
        ExcelUtil<AppVideo> util = new ExcelUtil<AppVideo>(AppVideo.class);
        return util.exportExcel(list, "video");
    }

    /**
     * 获取video详细信息
     */
    @PreAuthorize("@ss.hasPermi('wxapp:video:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") String id)
    {
        return AjaxResult.success(appVideoService.selectAppVideoById(id));
    }

    /**
     * 新增video
     */
    @PreAuthorize("@ss.hasPermi('wxapp:video:add')")
    @Log(title = "video", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody AppVideo appVideo)
    {
        appVideo.setCreateBy(SecurityUtils.getUsername());
        return toAjax(appVideoService.insertAppVideo(appVideo));
    }

    /**
     * 修改video
     */
    @PreAuthorize("@ss.hasPermi('wxapp:video:edit')")
    @Log(title = "video", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody AppVideo appVideo)
    {
        appVideo.setUpdateBy(SecurityUtils.getUsername());
        return toAjax(appVideoService.updateAppVideo(appVideo));
    }

    /**
     * 修改轮播状态
     */
    @PreAuthorize("@ss.hasPermi('wxapp:video:edit')")
    @Log(title = "video", businessType = BusinessType.UPDATE)
    @PutMapping("/changeStatus")
    public AjaxResult changeStatus(@RequestBody AppVideo appVideo)
    {
        appVideo.setUpdateBy(SecurityUtils.getUsername());
        return toAjax(appVideoService.updateAppVideo(appVideo));
    }


    /**
     * 删除video
     */
    @PreAuthorize("@ss.hasPermi('wxapp:video:remove')")
    @Log(title = "video", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable String[] ids)
    {
        return toAjax(appVideoService.deleteAppVideoByIds(ids));
    }
}
