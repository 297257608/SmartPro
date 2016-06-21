/**
 * 分割css样式中图标样式
 */
package org.lee.test;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.lee.model.IconInfo;
import org.lee.service.IconService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


/**
 * @author Administrator
 *
 */



@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(locations = "/resources/spring/spring-core.xml")
@ContextConfiguration(locations = "classpath:spring/spring-core.xml")
public class TestIcon {

	/**
	 * @param args
	 */

	static final String ENCODE = "UTF-8";
	

    // 3种注入方式
    // @Resource 可以指定具体的bean名称
     @Autowired //不支持指定bean名称
//    @Resource(name = "userServiceImpl")
    // 可以指定具体的bean.
    private IconService iconService;

    /**
     * 测试添加bootstrap图标
     * 
     * 作者: libin 
     * 日期：2015年10月5日10:43:51
     */
    @Test
    public void insertIcon() {
    	
		String str1 = "glyphicon-";
		
		String str2 = ":before";
			
		String regex = "^\\." + str1 + "(?<name>.*?)" + str2 + "\\s*\\{";

		String filePath = "WebRoot/xiu/style.css";

		BufferedReader br = null;

		String line = null;

		try 
		{
			Pattern pattern = Pattern.compile(regex);

			br = new BufferedReader(new InputStreamReader(new FileInputStream(filePath), ENCODE));
				    	
	    	int result = 0;
	    	
	    	String guid = "";

	    	String displayName = "";

	    	String className = "";

	    	String sourceType = "glyphicon";

	    	Date createTime = null;
	    	
			while ((line = br.readLine()) != null) 
			{
				
				Matcher matcher = pattern.matcher(line);

				while (matcher.find()) 
				{
//					
//					if(null != matcher.group(1))
//					{
						UUID uuid = UUID.randomUUID();
						
						guid = uuid.toString();

						displayName = matcher.group(1);
										
						className =str1 + "" + displayName;
						
				    	createTime = new Date();
				    	
				    	IconInfo icon = new IconInfo();
				    	
				    	icon.setGuid(guid);
				    	icon.setDisplayName(displayName);
				    	icon.setClassName(className);
				    	icon.setSourceType(sourceType);
				    	icon.setCreateTime(createTime);
//				    	
//						System.out.print(icon.getGuid());
//						System.out.print(icon.getDisplayName());
//						System.out.print(icon.getClassName());
//						System.out.print(icon.getSourceType());
//						System.out.println(icon.getCreateTime());
				    	
//				    	result = iconService.addIcon(icon);
				    	
				    	System.out.println(result);
				    	
//					}

				}

			}
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

    }

    /**
     * 测试查询bootstrap图标
     * 
     * 作者: libin 
     * 日期：2015年10月5日13:39:49
     */
    @Test
    public void queryAllIcon() {
    	
    	List list = new ArrayList<>();
    	
    	list = iconService.getAllIconList();
    	
    	IconInfo icon = new IconInfo();
    	
    	for (int i = 0; i < list.size(); i++) {
    		icon = (IconInfo) list.get(i);
    		System.out.println("[" + icon.getGuid() + "][" + icon.getDisplayName() + "][" + icon.getClassName() + "][" + icon.getSourceType() + "][" + icon.getCreateTime() + "]");
		}
    }


//	public static void main(String[] args) {
//		// TODO Auto-generated method stub
//		
//		String str1 = "glyphicon-";
//		
//		String str2 = ":before";
//			
//		String regex = "^\\." + str1 + "(?<name>.*?)" + str2 + "\\s*\\{";
//
//		String filePath = "WebRoot/xiu/style.css";
//
//		BufferedReader br = null;
//
//		String line = null;
//
//		try 
//		{
//			Pattern pattern = Pattern.compile(regex);
//
//			br = new BufferedReader(new InputStreamReader(new FileInputStream(filePath), ENCODE));
//
//			int i = 0;
//
//			String str = null;
//
//			while ((line = br.readLine()) != null) 
//			{
//				Matcher matcher = pattern.matcher(line);
//
//				while (matcher.find()) 
//				{
//					System.out.print("[" + ++i + "]");
//					UUID uuid = UUID.randomUUID();
//					System.out.print(uuid.toString() + ":");  
//
//					str = matcher.group(1);
//					System.out.println(str);
//				}
//
//				// System.out.println(line);
//			}
//		} catch (UnsupportedEncodingException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} catch (FileNotFoundException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//
//		// String content = FileUtil.FileToString(realPath);
//		// List<String> matchList = CRegex.GetList(content, regex, 1);
//
//	}
//
}
