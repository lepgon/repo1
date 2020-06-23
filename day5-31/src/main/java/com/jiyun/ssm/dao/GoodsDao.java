package com.jiyun.ssm.dao;

import com.jiyun.ssm.pojo.Category;
import com.jiyun.ssm.pojo.Goods;

import java.util.List;

public interface GoodsDao {
    List<Goods> findAll();

    List<Category> getAllCategory();

    void add(Goods goods);

    void deleteById(Integer id);

    Goods showById(Integer id);

    void update(Goods goods);

    List<Goods> yanzhengNAme(String name);
}
