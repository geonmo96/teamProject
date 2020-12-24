/*package com.care.root.member.filter;
	
import java.io.IOException;	
import java.util.ArrayList;	
import java.util.List;	
	
import javax.servlet.Filter;	
import javax.servlet.FilterChain;	
import javax.servlet.FilterConfig;	
import javax.servlet.ServletException;	
import javax.servlet.ServletRequest;	
import javax.servlet.ServletResponse;	
import javax.servlet.http.HttpServletRequest;	
import javax.servlet.http.HttpServletResponse;	
import javax.servlet.http.HttpSession;	
	
public class WebFilter implements Filter {	
		
	private List<String> passUrl = null;	
	private String contextPath;	
		
	@Override	
	public void destroy() {	
		// TODO Auto-generated method stub	
		
	}	
		
	@Override	
	public void init(FilterConfig filterConfig) throws ServletException {	
		// TODO Auto-generated method stub	
		// �쎒�럹�씠吏��쓽 root�럹�씠吏��쓽 url瑜� 痍⑤뱷�븳�떎.	
		contextPath = filterConfig.getServletContext().getContextPath();	
		passUrl = new ArrayList<String>();	
		// web.xml�뿉�꽌 �꽕�젙�뻽�뜕 parameter瑜� 媛��졇���꽌 �꽕�젙�븳�떎.	
		String[] ignoredPaths = filterConfig.getInitParameter("passPage").split(",");	
		for (String ignoredPath : ignoredPaths) {	
			passUrl.add(contextPath + ignoredPath);	
		}	
	}	
		
	@Override	
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {	
		HttpServletRequest req = (HttpServletRequest) request;	
		HttpServletResponse res = (HttpServletResponse) response;	
		HttpSession session = req.getSession();	
		//User �꽭�뀡 媛믪씠 �엳�쑝硫� �넻怨�!	
		if (session.getAttribute("USER") != null) {	
			chain.doFilter(req, res);	
			return;	
		}	
		// url瑜� 媛��졇���꽌 passUrl�뿉 �엳�뒗 寃쎈줈硫� �넻怨�	
		String url = req.getRequestURI();	
		for (String buf : passUrl) {	
			if (buf.equals(url)) {	
				chain.doFilter(req, res);	
				return;	
			}	
		}	
		// User �꽭�뀡�룄 �뾾怨� passUrl�씠硫� �뿉�윭瑜� 諛쒖깮�븳�떎.	
		// System.out.println(contextPath); - /root
		System.out.println(contextPath);
		res.sendRedirect(contextPath + "/member/loginForm");	
	}	
}

*/
