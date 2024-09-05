package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Admin;

import jakarta.transaction.Transactional;

@Repository
public interface AdminRepository extends JpaRepository<Admin, Integer>
{
  @Query("select a from Admin a where a.username =?1 and a.password=?2 ")
  public Admin checkadminlogin(String uname , String pwd);
  
  @Query("update Employee set active=?1 where id=?2")
  @Modifying // when we r using update or delete query  --> for dml queries
  @Transactional//commit changes
  public int updatestatus(boolean status,int id); 
 
}