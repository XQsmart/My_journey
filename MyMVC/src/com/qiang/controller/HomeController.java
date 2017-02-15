package com.qiang.controller;

import com.qiang.bean.User;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Xiao-Qiang on 2017/2/13.
 */

@Controller
@RequestMapping("/hello")
public class HomeController {
    private SqlSession session;

   public HomeController() {
       try {
           String resource = "mybatis-config.xml";
           InputStream inputStream = Resources.getResourceAsStream(resource);
           SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
           session = sqlSessionFactory.openSession();
       } catch (IOException e) {
           e.printStackTrace();
       }
   }

   @RequestMapping("showUsers")
   public ModelAndView showHome() {
       return new ModelAndView("users");
   }
   @ResponseBody
   @RequestMapping("queryAll")
   public List<User> queryAll() {
       List<User> rows = new ArrayList<User>();
       rows = session.selectList("com.qiang.bean.User.queryAll");
       return rows;
   }
}
