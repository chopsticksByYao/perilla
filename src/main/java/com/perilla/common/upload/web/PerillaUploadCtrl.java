package com.perilla.common.upload.web;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

/**
 * 文件上传控制器
 * @author yaohong
 * @date 2018年12月6日
 */
@Controller
@RequestMapping("/upload")
public class PerillaUploadCtrl {
	
	@ResponseBody
	@RequestMapping(value="/upload.do",method=RequestMethod.POST)
	public Map<String,Object> upload(@RequestParam("files") MultipartFile[] files,HttpServletResponse response) throws IOException {
		String path = "C:\\Users\\Yaoh\\Desktop\\文件上传测试";
		File baseDir = new File(path);
		if(!baseDir.isDirectory()) {
			baseDir.mkdirs();
		}
		
		for (MultipartFile multipartFile : files) {
			
			File file = new File(path + File.separator + multipartFile.getOriginalFilename());
			InputStream in = multipartFile.getInputStream();
			BufferedInputStream bfi = new BufferedInputStream(in);
			
			OutputStream os = new FileOutputStream(file);
			BufferedOutputStream bfo = new BufferedOutputStream(os);
			
			byte[] tmp = new byte[1024];
			int len = 0;
			while((len = bfi.read(tmp)) != -1) {
				bfo.write(tmp, 0, len);
			}
			bfo.flush();
			if(in != null) {
				in.close();
			}
			if(bfi != null) {
				bfi.close();
			}
			if(os != null) {
				os.close();
			}
			if(bfo != null) {
				bfo.close();
			}
			
			
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("satus","0");
		return map;
	}
}
