package com.xyafu.project.wxapp.controller;


import com.xyafu.project.wxapp.domain.*;
import com.xyafu.project.wxapp.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;

/**
 *
 * @author ldtianzhe
 * @date Create in 2019/8/15 18:52
 */
@RestController
@RequestMapping("/app")
public class WxAppController {

    @Autowired
    private IAppWelcomeService appWelcomeService;

    @Autowired
    private IAppSchoolService appSchoolService;

    @Autowired
    private IAppContentService appContentService;

    @Autowired
    private IAppVideoService appVideoService;

    @Autowired
    private IAppAdrCategoryService appAdrCategoryService;

    @Autowired
    private IAppMapService appMapService;

    @GetMapping("/index")
    public List<AppWelcome> getIndex(AppWelcome appWelcome){
        List<AppWelcome> list = appWelcomeService.selectAppWelcomeList(appWelcome);
        return list;
    }

    @GetMapping("/schoolinfo")
    public List<AppSchool> getSchoolInfo(AppSchool appSchool){
        List<AppSchool> list = appSchoolService.selectAppSchoolList(appSchool);
        return list;
    }

    @PostMapping("/content")
    public List<AppContent> getContent(@RequestBody HashMap<String,String> map, AppContent appContent){
        appContent.setTitle(map.get("title").toString());
        List<AppContent> list = appContentService.selectAppContentList(appContent);
        return list;
    }

    @GetMapping("/video")
    public LinkedHashMap<String, Object> getVideo(AppVideo appVideo) {
        List<AppVideo> navideo = appVideoService.selectAppVideoByStatus(appVideo);
        List<AppVideo> video = appVideoService.selectAppVideoList(appVideo);
        LinkedHashMap<String, Object> mmap = new LinkedHashMap<String, Object>();
        mmap.put("navideo",navideo);
        mmap.put("video",video);
        return mmap;
    }

    @PostMapping("/play")
    public Object getPlay(@RequestParam String id) {
        return appVideoService.selectAppVideoById(id);
    }

    @GetMapping("/getCategory")
    public List<AppAdrCategory> getCategory(AppAdrCategory appAdrCategory){
        List<AppAdrCategory> list = appAdrCategoryService.selectAppAdrCategoryList(appAdrCategory);
        return list;
    }

    @PostMapping("/getMapByCategory")
    public List<AppMap> getMapByCategory(@RequestBody HashMap<String,String> map, AppMap appMap){
        appMap.setCategory(map.get("category"));
        List<AppMap> list = appMapService.selectAppMapList(appMap);
        return list;
    }

    @PostMapping("/getMapById")
    public Object getMapById(@RequestParam String id){
        return appMapService.selectAppMapById(id);
    }

}
