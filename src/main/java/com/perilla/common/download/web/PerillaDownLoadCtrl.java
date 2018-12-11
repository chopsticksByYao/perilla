package com.perilla.common.download.web;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/download")
public class PerillaDownLoadCtrl {

	@ResponseBody
	@RequestMapping(value="/download.do", method=RequestMethod.POST)
	public void download(HttpServletRequest request, HttpServletResponse response, String fileName) {
		if(StringUtils.isEmpty(fileName)){
			return;
		}
		String path = "C:\\Users\\Yaoh\\Desktop";
		
		File file = new File(path + File.separator +  fileName);
		if(file.exists()) {
			
			try {
				OutputStream out = response.getOutputStream();
				//1.设置文件ContentType类型，这样设置，会自动判断下载文件类型  
	            response.setContentType("multipart/form-data");
				//设置响应头，控制浏览器下载该文件
				response.setHeader("content-disposition", "attachment;filename=" + URLEncoder.encode(fileName, "UTF-8"));
			
				InputStream in = new FileInputStream(file);
				byte[] buffer = new byte[10274];
				int len = 0;
				while(len != -1) {
					len = in.read(buffer);
					out.write(buffer, 0, len);
				}
				
				out.flush();
				out.close();
				in.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		}
		
	}
	
}
