package com.xyafu.project.system.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.xyafu.common.constant.Constants;
import com.xyafu.common.utils.http.HttpUtils;
import com.xyafu.framework.redis.RedisCache;
import com.xyafu.framework.web.domain.AjaxResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.concurrent.TimeUnit;


/**
 * @author xyafu
 * @description
 * @date 2020/2/5
 */
@RestController
@RequestMapping("/index")
public class SysIndexController {

    @Autowired
    private RedisCache redisCache;

    @PostMapping("/sendpost")
    public AjaxResult Get(@RequestBody String jsonString) {
        String accessToken = redisCache.getCacheObject(Constants.AccessToken);
        JSONObject result = new JSONObject();
        if (accessToken == null){
            String access_token = getAccessToken();
            redisCache.setCacheObject(Constants.AccessToken,access_token,1, TimeUnit.HOURS);
            JSONObject jsonObject = JSON.parseObject(jsonString);
            String url = jsonObject.getString("url");
            String sendUrl = url + "?access_token=" + access_token;
            String data = jsonObject.getString("param");
            result = JSON.parseObject(HttpUtils.Post(sendUrl, data));
        }else {
            String access_token = redisCache.getCacheObject(Constants.AccessToken);
            JSONObject jsonObject = JSON.parseObject(jsonString);
            String url = jsonObject.getString("url");
            String sendUrl = url + "?access_token=" + access_token;
            String data = jsonObject.getString("param");
            result = JSON.parseObject(HttpUtils.Post(sendUrl, data));
        }
        return AjaxResult.success(result);
    }

    /**
     *  获取AccessToken
     *
     * @return
     */
    private String getAccessToken() {
        String access_token;
        String grant_type = "client_credential";
        String appid = "wxae2dee63d31394cc";
        String secret = "54449a804cd02db6a03629b00bf28c9e";
        String tokenUrl = "https://api.weixin.qq.com/cgi-bin/token";
        String param = "grant_type=" + grant_type + "&appid=" + appid + "&secret=" + secret;
        String token = HttpUtils.sendGet(tokenUrl,param);
        JSONObject jsonObject = JSONObject.parseObject(token);
        access_token = jsonObject.getString("access_token");
        return access_token;
    }
}
