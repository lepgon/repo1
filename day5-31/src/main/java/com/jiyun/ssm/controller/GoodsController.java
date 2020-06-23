package com.jiyun.ssm.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.jiyun.ssm.pojo.Category;
import com.jiyun.ssm.pojo.Goods;
import com.jiyun.ssm.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class GoodsController {
    @Autowired
    private GoodsService service;
    @RequestMapping("findAll")
    @ResponseBody
    public Map<String,Object> findAll(
            @RequestParam(value = "page",defaultValue = "1")Integer pageNum,
            @RequestParam(value = "rows",defaultValue = "2")Integer pageSize
    ){
        HashMap<String, Object> map = new HashMap<>();
        PageHelper.startPage(pageNum, pageSize);
        List<Goods> list=service.findAll();
        PageInfo<Goods> page = new PageInfo<>(list);
        map.put("total", page.getTotal());
        map.put("rows", page.getList());
        return map;
    }
    @RequestMapping("getAllCategory")
    @ResponseBody
    public List<Category> getAllCategory(){
        return service.getAllCategory();
    }
    @RequestMapping("yanzhengNAme")
    @ResponseBody
    public boolean yanzhengNAme(String name){
        List<Goods> list=service.yanzhengNAme(name);
        if (list.isEmpty()){
            return true;
        }else {
            return false;
        }

    }
    @RequestMapping("add")
    public  String add(Goods goods){
        service.add(goods);
        return "index";
    }
    @RequestMapping("update")
    public  String update(Goods goods){
        service.update(goods);
        return "index";
    }
    @RequestMapping("deleteById")
    public String deleteById(Integer id){
        service.deleteById(id);
        return "index";
    }
    @RequestMapping("showById")
    public String showById(Integer id, Model model){
       Goods goods= service.showById(id);
       model.addAttribute("goods",goods);
        return "show";
    }
    @RequestMapping("findById")
    public String findById(Integer id, Model model){
       Goods goods= service.showById(id);
       model.addAttribute("goods",goods);
        return "update";
    }
}
