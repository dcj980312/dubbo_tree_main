package com.jk.dao;

import com.jk.model.TreeModel;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TreeDao {

    List<TreeModel> findTree(@Param("id") int i);
}
