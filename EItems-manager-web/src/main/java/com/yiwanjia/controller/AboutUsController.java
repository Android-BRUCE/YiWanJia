package com.yiwanjia.controller;

import com.yiwanjia.common.pojo.TaotaoResult;
import com.yiwanjia.dao.TbAboutMapper;
import com.yiwanjia.pojo.TbAbout;
import com.yiwanjia.pojo.TbAboutWithBLOBs;
import com.yiwanjia.service.AboutUsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 公司介绍管理
 */
@Controller
public class AboutUsController {

    @Autowired
    private TbAboutMapper tbAboutMapper;

    @Autowired
    private AboutUsService aboutUsService;

    //跳转start
    @RequestMapping("companyIntroduction")
    public String jumpToIntroduction(Model Model) {
        TbAbout about = aboutUsService.getIntroduction();
        Model.addAttribute("introduction", about);
        return "companyIntroduction";
    }

    @RequestMapping("companyRoad")
    public String jumpToRoad(Model Model) {
        TbAbout about = aboutUsService.getRoad();
        Model.addAttribute("road", about);
        return "companyRoad";
    }

    @RequestMapping("companyVideo")
    public String jumpToVideo(Model Model) {
        TbAbout about = aboutUsService.getVideo();
        Model.addAttribute("video", about);
        return "companyVideo";
    }


    //跳转end

    /**
     * 介绍
     *
     * @param title
     * @param content
     * @return
     */
    @RequestMapping("company/introduction")
    @ResponseBody
    public TaotaoResult updateIntrodution(String title, String content) {
        TaotaoResult result = aboutUsService.updateIntroduction(title, content);
        return result;
    }

    /**
     * 荣耀图片
     *
     * @param image
     * @return
     */
    @RequestMapping("company/honourPic")
    @ResponseBody
    public TaotaoResult updateHonourPic(String image) {
        TaotaoResult result = aboutUsService.updateHonourPic(image);
        return result;
    }

    /**
     * 发展历程
     *
     * @param introduction
     * @return
     */
    @RequestMapping("company/road")
    @ResponseBody
    public TaotaoResult updateRoad(String introduction) {
        TaotaoResult result = aboutUsService.updateRoad(introduction);
        return result;
    }

    /**
     * 展示视频
     *
     * @param video
     * @return
     */
    @RequestMapping("company/video")
    @ResponseBody
    public TaotaoResult updateVideo(String video) {
        return aboutUsService.updateVideo(video);
    }

    /**
     * 跳转至修改荣誉图页面
     *
     * @param model
     * @return
     */
    @RequestMapping("companyPic")
    public String jumpToPicPage(Model model) {
        TbAboutWithBLOBs hourPic = aboutUsService.getHourPic();
        model.addAttribute("pic", hourPic);
        return "companyPic";
    }
}
