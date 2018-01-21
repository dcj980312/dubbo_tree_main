package com.jk.service.impl;

import com.jk.dao.TreeDao;
import com.jk.model.TreeModel;
import com.jk.service.TreeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TreeServiceImpl implements TreeService{

    @Autowired
    private TreeDao treeDao;

    @Override
    public List<TreeModel> findTree(int i) {
        return treeDao.findTree(i);
    }
}
