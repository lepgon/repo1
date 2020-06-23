package com.jiyun.ssm.service;

import com.jiyun.ssm.dao.GoodsDao;
import com.jiyun.ssm.pojo.Category;
import com.jiyun.ssm.pojo.Goods;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GoodsService {
    @Autowired
    private GoodsDao dao;
    public List<Goods> findAll() {
        return dao.findAll();
    }

    public List<Category> getAllCategory() {
        return dao.getAllCategory();
    }

    public void add(Goods goods) {
        dao.add(goods);
    }

    public void deleteById(Integer id) {
        dao.deleteById(id);
    }

    public Goods showById(Integer id) {
        return dao.showById(id);
    }

    public void update(Goods goods) {
        dao.update(goods);
    }

    public List<Goods> yanzhengNAme(String name) {
        return dao.yanzhengNAme(name);
    }
}
