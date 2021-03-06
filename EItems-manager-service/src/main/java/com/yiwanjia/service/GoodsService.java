package com.yiwanjia.service;

import com.github.pagehelper.PageHelper;
import com.yiwanjia.common.pojo.EUDataGridResult;
import com.yiwanjia.common.pojo.TaotaoResult;
import com.yiwanjia.dao.TbGoodsCategoryMapper;
import com.yiwanjia.dao.TbGoodsMapper;
import com.yiwanjia.pojo.TbGoods;
import com.yiwanjia.pojo.TbGoodsCategory;
import com.yiwanjia.pojo.TbGoodsCategoryExample;
import com.yiwanjia.pojo.TbGoodsExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class GoodsService {

    @Autowired
    private TbGoodsMapper tbGoodsMapper;

    public TaotaoResult addGoods(TbGoods tbGoods){
        tbGoods.setCreatetime(new Date());
        tbGoods.setUpdatetime(new Date());
        int result = tbGoodsMapper.insert(tbGoods);
        if(result == 0){
            return TaotaoResult.build(500,"产品添加失败！");
        }
        return TaotaoResult.build(200,"产品添加成功！");
    }

    /**
     * 获取产品信息list
     * @param page
     * @param rows
     * @return
     */
    public EUDataGridResult getGList(int page , int rows){

        TbGoodsExample example = new TbGoodsExample();

        PageHelper.startPage(page,rows);

       // List<TbGoods> list = tbGoodsMapper.selectByExample(example);

        List<TbGoods> list = tbGoodsMapper.selectUnionCategory();

        EUDataGridResult eUDataGridResult = new EUDataGridResult();
        eUDataGridResult.setTotal(tbGoodsMapper.countByExample(example));
        eUDataGridResult.setRows(list);

        return eUDataGridResult;
    }

    /**
     * 获取单条数据
     * @param id
     * @return
     */
        public TbGoods getSingelDate(long id){
            TbGoods tbGoods = tbGoodsMapper.selectByPrimaryKey(id);
            return tbGoods;
        }

    public TaotaoResult deleteGoods(int[] ids){
        int result = tbGoodsMapper.deleteByGoodsIds(ids);
        if(result == 0){
            return TaotaoResult.build(500,"产品删除失败！");
        }
        return TaotaoResult.build(200,"产品删除成功！");
    }

    /**
     * 查询产品中是否存在分类id号
     * @param id
     * @return
     */
    public long getCountByCID(long id){
        long count = tbGoodsMapper.countByCID(id);
        return count;
    }

    /**
     * 修改产品信息
     * @param TbGoods
     * @return
     */
    public TaotaoResult editGoods(TbGoods TbGoods){
        if ((TbGoods.getGoodsdesc()=="")){TbGoods.setGoodsdesc(null);}
        if (TbGoods.getGoodsttile()==""){TbGoods.setGoodsttile(null);}
        if (TbGoods.getImage()==""){TbGoods.setImage(null);}
        if (TbGoods.getPoint()==""){TbGoods.setPoint(null);}
        TbGoods.setUpdatetime(new Date());
        int result = tbGoodsMapper.updateByPrimaryKeySelective(TbGoods);
        if (result == 0){return TaotaoResult.build(500,"修改产品信息失败！");}
        return TaotaoResult.build(200,"修改产品信息成功！");
    }

}
