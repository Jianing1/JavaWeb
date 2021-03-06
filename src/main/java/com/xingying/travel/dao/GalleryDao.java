package com.xingying.travel.dao;

import com.xingying.travel.pojo.Gallery;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
 * 数据访问接口
 *
 * @author Administrator
 */
public interface GalleryDao extends JpaRepository<Gallery, String>, JpaSpecificationExecutor<Gallery> {

}
