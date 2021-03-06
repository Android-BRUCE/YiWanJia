package com.yiwanjia.controller;


import com.yiwanjia.common.pojo.EUDataGridResult;
import com.yiwanjia.common.pojo.TaotaoResult;
import com.yiwanjia.pojo.TbGoods;
import com.yiwanjia.pojo.TbGoodsCategory;
import com.yiwanjia.service.GoodsCategoryService;
import com.yiwanjia.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("goods")
public class GoodsController {


    @Autowired
    private GoodsCategoryService goodsCategoryService;

    @Autowired
    private GoodsService goodsService;

    /**
     * ajax在分类页面无法使用？解决：跳转携带数据；
     * @return
     */
    @RequestMapping("jump/goodsAddPage")
    public String jumpToGoodsCategoryPage(Model model){
        List<TbGoodsCategory> list = goodsCategoryService.getCategoryList();
        model.addAttribute("goodsCategory",list);
        return "goods-add";
    }

    /**
     * 添加产品
     * @param tbGoods
     * @return
     */
    @RequestMapping("save")
    @ResponseBody
    public TaotaoResult addGoods(TbGoods tbGoods){
       TaotaoResult result = goodsService.addGoods(tbGoods);
        return result;
    }

    /**
     * 获取goods集合
     * @param page
     * @param rows
     * @return
     */
    @ResponseBody
    @RequestMapping("query/getgoodsList")
    public EUDataGridResult getGoodsList(int page,int rows){
        EUDataGridResult gList = goodsService.getGList(page, rows);
       // System.out.println("page = [" + page + "], rows = [" + rows + "]");
        return gList;
    }

    /**
     * 删除goods信息
     * @param ids
     * @return
     */
    @ResponseBody
    @RequestMapping("delte/{id}/byGoodsIds")
    public TaotaoResult deleteGoodByIds(@PathVariable int[] id){
        TaotaoResult result = goodsService.deleteGoods(id);
        return result;
    }
    @RequestMapping("query/count")
    @ResponseBody
    public long getCountByCID(@RequestParam(value = "cid") long cid){
        long ccount = goodsService.getCountByCID(cid);
        return ccount;
    }

    /**
     * 修改产品信息
     * @param TbGoods
     * @return
     */
    @RequestMapping("editGoods")
    @ResponseBody
    public TaotaoResult eidtGoods(TbGoods TbGoods){
        TaotaoResult result = goodsService.editGoods(TbGoods);
        return result;
    }

    //其他携带数据页面跳转
    @RequestMapping("edit")
    public String jumpToGoodsEdit(@RequestParam(value = "id") Long id, Model Model){
        if (id==null){
            return "Goods";
        }
        TbGoods goods = goodsService.getSingelDate(id);
        Model.addAttribute("goods",goods);
        List<TbGoodsCategory> categoryList = goodsCategoryService.getCategoryList();
        Model.addAttribute("goodsCategory",categoryList);
        return "goods-edit";
    }
}
