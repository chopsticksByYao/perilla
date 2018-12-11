package com.perilla.common.utils;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class Utils {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		getCLWebsite();
		//generateLottoNum();

	}

	/**
	 * 模拟请求
	 * @author yaohong
	 * @date 2018年11月28日
	 */
	public static String getCLWebsite() {
		String url = "http://get.xunfs.com/app/listapp.php";
		HttpClient client = HttpClients.createDefault();
		HttpPost httpPost = new HttpPost(url);
		List<NameValuePair> params = new ArrayList<NameValuePair>();
		// 设置请求参数a=get17&system=android&v=1.62
		params.add(new BasicNameValuePair("a", "get17"));
		params.add(new BasicNameValuePair("system", "android"));
		params.add(new BasicNameValuePair("v", "1.62"));

		// 设置请求头
		httpPost.addHeader("Accept-Encoding", "gzip");
		httpPost.addHeader("Content-type", "application/x-www-form-urlencoded");
		httpPost.addHeader("user-agent", "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;SV1)");
		httpPost.addHeader("accept", "*/*");

		try {
			httpPost.setEntity(new UrlEncodedFormEntity(params, "utf-8"));
			HttpResponse response = client.execute(httpPost); // 发出post请求
			// StatusLine status = response.getStatusLine(); // 获取返回的状态码
			HttpEntity entity = response.getEntity(); // 获取响应内容
			String result = EntityUtils.toString(entity, "utf-8");
			// System.out.println(result);
			// 解析响应数据
			parseHtml(result);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;
	}

	/**
	 * html处理
	 * @author yaohong
	 * @date 2018年11月28日
	 * @param str
	 */
	public static void parseHtml(String str) {
		Document doc = Jsoup.parse(str);
		Elements ele = doc.getElementsByTag("a");
		Iterator<Element> it = ele.iterator();
		while (it.hasNext()) {
			Element e = it.next();
			System.out.println(e.html());
		}
	}

	/**
	 * 生成大乐透号码
	 * 
	 * @author yaohong
	 * @date 2018年11月28日
	 */
	static void generateLottoNum() {
		int redD = 2;// 红球胆个数
		int redT = 5;// 红球拖个数
		int blueD = 1;// 篮球球胆个数
		int blueT = 2;// 篮球拖个数

		for (int a = 0; a < 7; a++) {
			StringBuffer sb;
			String sigleNum;
			List<String> DredNum = new ArrayList<String>();
			List<String> TredNum = new ArrayList<String>();
			List<String> DblueNum = new ArrayList<String>();
			List<String> TblueNum = new ArrayList<String>();
			Random rand = new Random();
			// 产生红球胆
			do {
				sigleNum = String.valueOf(rand.nextInt(35) + 1);
				if (!DredNum.contains(sigleNum)) {
					DredNum.add(sigleNum);
				}

			} while (DredNum.size() < redD);
			sb = new StringBuffer("前区胆:").append(sort(DredNum).toString()).append("\n");
			// 产生红球拖
			do {
				sigleNum = String.valueOf(rand.nextInt(35) + 1);
				if (!DredNum.contains(sigleNum) && !TredNum.contains(sigleNum)) {
					TredNum.add(sigleNum);
				}

			} while (TredNum.size() < redT);

			sb.append("前区拖:").append(sort(TredNum).toString()).append("\n");
			do {
				sigleNum = String.valueOf(rand.nextInt(12) + 1);
				DblueNum.add(sigleNum);
				sb.append("后区胆：").append(sort(DblueNum).toString()).append("\n");
			} while (DblueNum.size() < blueD);
			do {
				sigleNum = String.valueOf(rand.nextInt(12) + 1);
				if (!TblueNum.contains(sigleNum) && !DblueNum.contains(sigleNum)) {
					TblueNum.add(sigleNum);
				}

			} while (TblueNum.size() < blueT);

			sb.append("后区拖：" + sort(TblueNum).toString());
			System.out.println(sb.append("\n*************************").toString().replaceAll("(\\[|\\]|,)", ""));
		}
	}

	/**
	 * 排序
	 * 
	 * @author yaohong
	 * @date 2018年11月28日
	 * @param list
	 * @return
	 */
	static List<String> sort(List<String> list) {
		String[] strs = list.toArray(new String[list.size()]);
		for (int i = 0; i < strs.length - 1; i++) {
			String tmp = strs[i];
			for (int j = i; j < strs.length - 1; j++) {
				if (Integer.valueOf(tmp).compareTo(Integer.valueOf(strs[j + 1])) > 0) {
					strs[i] = strs[j + 1];
					strs[j + 1] = tmp;
					i--;
					break;
				}
			}

		}
		return Arrays.asList(strs);
	}

}
