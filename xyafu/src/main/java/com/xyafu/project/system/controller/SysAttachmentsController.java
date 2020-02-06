package com.xyafu.project.system.controller;

import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

import com.xyafu.common.utils.ServletUtils;
import com.xyafu.common.utils.StringUtils;
import com.xyafu.common.utils.file.FileUploadUtils;
import com.xyafu.framework.config.ServerConfig;
import com.xyafu.framework.config.XyafuConfig;
import com.xyafu.framework.security.LoginUser;
import com.xyafu.framework.security.service.TokenService;
import com.xyafu.project.system.domain.SysUser;
import org.springframework.http.MediaType;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import com.xyafu.framework.aspectj.lang.annotation.Log;
import com.xyafu.framework.aspectj.lang.enums.BusinessType;
import com.xyafu.project.system.domain.SysAttachments;
import com.xyafu.project.system.service.ISysAttachmentsService;
import com.xyafu.framework.web.controller.BaseController;
import com.xyafu.framework.web.domain.AjaxResult;
import com.xyafu.common.utils.poi.ExcelUtil;
import com.xyafu.framework.web.page.TableDataInfo;
import org.springframework.web.multipart.MultipartFile;

/**
 * 附件Controller
 *
 * @author xyafu
 * @date 2019-12-14
 */
@RestController
@RequestMapping("/system/attachments")
public class SysAttachmentsController extends BaseController
{
    @Autowired
    private ISysAttachmentsService sysAttachmentsService;

    @Autowired
    private TokenService tokenService;

    @Autowired
    private ServerConfig serverConfig;

    /**
     * 查询附件列表
     */
    @PreAuthorize("@ss.hasPermi('system:attachments:list')")
    @GetMapping("/list")
    public TableDataInfo list(SysAttachments sysAttachments)
    {
        startPage();
        List<SysAttachments> list = sysAttachmentsService.selectSysAttachmentsList(sysAttachments);
        return getDataTable(list);
    }

    /**
     * 导出附件列表
     */
    @PreAuthorize("@ss.hasPermi('system:attachments:export')")
    @Log(title = "附件", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(SysAttachments sysAttachments)
    {
        List<SysAttachments> list = sysAttachmentsService.selectSysAttachmentsList(sysAttachments);
        ExcelUtil<SysAttachments> util = new ExcelUtil<SysAttachments>(SysAttachments.class);
        return util.exportExcel(list, "attachments");
    }

    /**
     * 获取附件详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:attachments:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return AjaxResult.success(sysAttachmentsService.selectSysAttachmentsById(id));
    }

    /**
     * 新增附件
     */
    @PreAuthorize("@ss.hasPermi('system:attachments:add')")
    @Log(title = "附件", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody SysAttachments sysAttachments)
    {
        return toAjax(sysAttachmentsService.insertSysAttachments(sysAttachments));
    }

    @Log(title = "新增附件", businessType = BusinessType.Upload)
    @PreAuthorize("@ss.hasPermi('system:attachments:upload')")
    @PostMapping(value = "/upload")
    public AjaxResult upload(@RequestParam("file") MultipartFile[] files, SysAttachments sysAttachments) throws Exception
    {
        AjaxResult result = new AjaxResult();
        LoginUser loginUser = tokenService.getLoginUser(ServletUtils.getRequest());
        String operName = loginUser.getUsername();
        try {
            for (int i = 0; i < files.length; i++) {
                // 上传文件路径
                String filePath = XyafuConfig.getUploadPath();
                // 上传并返回新文件地址名称
                String filePathName = FileUploadUtils.upload(filePath, files[i]);
                //本地开发环境将/prod-api删除 部署时需要带上
                //String url = serverConfig.getUrl() + "/prod-api" + filePathName;
                String url = serverConfig.getUrl() + filePathName;
                String fileName = filePathName.substring(filePathName.lastIndexOf("/")+1);
                sysAttachments.setFileName(fileName);
                sysAttachments.setFilePath(url);
                sysAttachments.setFileSize(String.format("%.1f",files[i].getSize()/1024.0));
                sysAttachments.setMediaType(files[i].getContentType());
                sysAttachments.setSuffix(FileUploadUtils.getExtension(files[i]));
                sysAttachments.setCreateBy(operName);
                result = toAjax(sysAttachmentsService.insertSysAttachments(sysAttachments));
            }
        } catch (Exception e) {
            result = AjaxResult.error(e.getMessage());
        }
        return result;
    }

    /**
     * 修改附件
     */
    @PreAuthorize("@ss.hasPermi('system:attachments:edit')")
    @Log(title = "附件", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody SysAttachments sysAttachments)
    {
        return toAjax(sysAttachmentsService.updateSysAttachments(sysAttachments));
    }

    /**
     * 删除附件
     */
    @PreAuthorize("@ss.hasPermi('system:attachments:remove')")
    @Log(title = "附件", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(sysAttachmentsService.deleteSysAttachmentsByIds(ids));
    }
}
