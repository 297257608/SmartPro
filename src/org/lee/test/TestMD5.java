/**
 * 
 */
package org.lee.test;

import org.lee.util.MD5;

/**
 * @author Administrator
 *
 */
public class TestMD5 {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		String str = "123456";
		
		String dest_str = null;
		
		MD5 md5 = new MD5();
		
		dest_str = md5.digest(str);
		
		System.out.println(dest_str);

	}

}
