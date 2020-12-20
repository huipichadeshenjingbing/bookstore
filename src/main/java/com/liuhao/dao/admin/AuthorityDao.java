package com.liuhao.dao.admin;


import com.liuhao.domain.admin.Authority;
import org.springframework.stereotype.Repository;

import java.util.List;
/**
 * 权限实现类dao
 */
@Repository
public interface AuthorityDao {
	public int add(Authority authority);
	public int deleteByRoleId(Long roleId);
	public List<Authority> findListByRoleId(Long roleId);
}