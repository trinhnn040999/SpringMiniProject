package com.management.config;

import javax.sql.DataSource;

import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.mapper.MapperScannerConfigurer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.management.service.ProductService;
import com.management.service.ProductServiceImp;


@SuppressWarnings("deprecation")
@EnableWebMvc 
@Configuration
@ComponentScan({"com.management"})
public class SpringWebConfig extends WebMvcConfigurerAdapter {
	
  @Bean
  public InternalResourceViewResolver viewResolver() {
    InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
    viewResolver.setPrefix("/WEB-INF/view/");
    viewResolver.setSuffix(".jsp");
    return viewResolver;
  }
  
  @Override
  public void addResourceHandlers(ResourceHandlerRegistry registry) {
      registry
              .addResourceHandler("/resources/**")
              .addResourceLocations("resources/");
  }
  
  @Bean
  public DataSource dataSource() {
      DriverManagerDataSource dataSource = new DriverManagerDataSource();
      dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
      dataSource.setUrl("jdbc:mysql://localhost:3306/product_demo?allowPublicKeyRetrieval=true&useSSL=false&characterEncoding=UTF-8");
      dataSource.setUsername("root");
      dataSource.setPassword("123456");
      return dataSource;
  }
  
  @Bean
  public SqlSessionFactoryBean sqlSessionFactory() throws Exception {
      Resource resource = new ClassPathResource("SqlMapConfig.xml");
      SqlSessionFactoryBean sqlSessionFactory = new SqlSessionFactoryBean();
      sqlSessionFactory.setDataSource(dataSource());
      sqlSessionFactory.setConfigLocation(resource);
      return sqlSessionFactory;
  }
  
  @Bean
  public MapperScannerConfigurer mapperScannerConfigurer() {
      MapperScannerConfigurer mapperScannerConfigurer = new MapperScannerConfigurer();
      mapperScannerConfigurer.setBasePackage("com.management.mapper");
      mapperScannerConfigurer.setSqlSessionFactoryBeanName("sqlSessionFactory");
      return mapperScannerConfigurer;
  }
  
  
}