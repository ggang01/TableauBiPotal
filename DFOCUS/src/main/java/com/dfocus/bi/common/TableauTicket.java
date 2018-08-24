package com.dfocus.bi.common;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import javax.servlet.ServletException;

public class TableauTicket {

	
	public static String getTableauTicket(String server,String user) throws ServletException 
	{
		
		OutputStreamWriter out_data = null;
		BufferedReader in = null;
		try {
		    // Encode the parameters
		    StringBuffer data = new StringBuffer();
		    data.append(URLEncoder.encode("username", "UTF-8"));
		    data.append("=");
		    data.append(URLEncoder.encode(user, "UTF-8"));
	
		    
		    // Send the request
		    URL url = new URL("http://" + server + "/trusted");
		    HttpURLConnection conn = (HttpURLConnection)url.openConnection();
		    conn.setRequestMethod("POST");
		    conn.setRequestProperty("Cache-Control", "no-cache");
		    conn.setRequestProperty("Content-Type", "application/x-www-form-urlencoded;charset=UTF-8");
		    conn.setRequestProperty("Accept", "application/x-www-form-urlencoded;charset=UTF-8");
		    conn.setDoOutput(true);
		    conn.setDoInput(true);
		    
		    out_data = new OutputStreamWriter(conn.getOutputStream());
		    
		    out_data.write(data.toString());
		    out_data.flush();
		    System.out.println("out_data->"+out_data);
		    
		    // Read the response
		    StringBuffer rsp = new StringBuffer();
		    in = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		    String line;
		    while ( (line = in.readLine()) != null) {
		        rsp.append(line);
		    }
		    
		    System.out.println("rsp->"+rsp.toString());
		    //out.flush();
		    return rsp.toString();
		} catch (Exception e) {
		    throw new ServletException(e);
		}
		finally {
		    try {
		        if (in != null) in.close();
		        if (out_data != null) out_data.close();
		    }
		    catch (IOException e) {}
		}
	}
}
