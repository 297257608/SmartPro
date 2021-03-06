package org.lee.util.listener;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.lee.util.config.PropertiesFactory;
import org.lee.util.thread.CategoryThread;
import org.lee.util.thread.HtmlThread;
import org.lee.util.thread.LinkCommitThread;
import org.lee.util.thread.TagThread;

/**
 * @desc	系统监听器
 * @author	Administrator
 * @time	2014-6-23 下午5:17:22
 */
public class SystemListener implements ServletContextListener{
	
	private static ServletContext context;
	
	public static ServletContext getContext(){
		return context;
	}
	
	@Override
	public void contextDestroyed(ServletContextEvent event) {
		
	}
	
	@Override
	public void contextInitialized(ServletContextEvent event) {
		context = event.getServletContext();
		initConfig(event);
//		initThread(event);
	}
	
	private void initThread(ServletContextEvent event) {
		new Thread(new HtmlThread()).start();
		new Thread(new CategoryThread()).start();
		new Thread(new TagThread()).start();
		new Thread(new LinkCommitThread()).start();
	}
	
	private void initConfig(ServletContextEvent event) {
		// 读取主配置文件  这里可以把properties和xml配置文件统一放在一个xml中，遍历加载
		PropertiesFactory.addConfiguration("sysconfig.properties");
		PropertiesFactory.addConfiguration("log4j.properties");
	}
	
}
