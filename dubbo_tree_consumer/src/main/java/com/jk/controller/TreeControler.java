package com.jk.controller;


import com.jk.model.TreeModel;
import com.jk.service.TreeService;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("treeContoller")
public class TreeControler {


    @Autowired
    private TreeService treeService;



    @RequestMapping("findTree")
    @ResponseBody
    public List<TreeModel> findTree(){
        List<TreeModel> list=treeService.findTree(0);
        List<TreeModel> findTreeFalg = findTreeFalg(list);
        return findTreeFalg;
    }

    public List<TreeModel> findTreeFalg(List<TreeModel> list){
        List<TreeModel> childList =new ArrayList<>();
        for (int i = 0; i <list.size(); i++) {
            TreeModel tree=list.get(i);
            List<TreeModel> addlist=treeService.findTree(tree.getId());
            if(addlist.size()>0){
                List<TreeModel> findList=findTreeChild(addlist);
                tree.setNodes(findList);
                childList.add(tree);
            }else{
                childList.add(tree);
            }
        }
        return childList;
    }

    public List<TreeModel> findTreeChild(List<TreeModel> childList){
        List<TreeModel> listChild =new ArrayList<TreeModel>();
        for (int i = 0; i < childList.size(); i++) {
            TreeModel tree=childList.get(i);
            List<TreeModel> addlistDemo=treeService.findTree(tree.getId());
            if(addlistDemo.size()>0){
                List<TreeModel> getlistDemo=findTreeChild(addlistDemo);
                tree.setNodes(getlistDemo);
                listChild.add(tree);
            }else{
                listChild.add(tree);
            }
        }
        return listChild;
    }
}
