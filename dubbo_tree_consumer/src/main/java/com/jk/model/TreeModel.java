package com.jk.model;

import java.io.Serializable;
import java.util.List;

public class TreeModel implements Serializable{


    private static final long serialVersionUID = 2817012061568915465L;

    private int  id;

    private String text;

    private String url;

    private int pid;

    private List<TreeModel> nodes;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }


    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }
    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public List<TreeModel> getNodes() {
        return nodes;
    }

    public void setNodes(List<TreeModel> nodes) {
        this.nodes = nodes;
    }

}
