<<<<<<< HEAD
/*package com.care.root.member.filter;
=======
package com.care.root.member.filter;
>>>>>>> 0d8c48a5ad6ea9e134a0642059c42ac90b4404a2
	
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
<<<<<<< HEAD
		// �쎒�럹�씠吏��쓽 root�럹�씠吏��쓽 url瑜� 痍⑤뱷�븳�떎.	
		contextPath = filterConfig.getServletContext().getContextPath();	
		passUrl = new ArrayList<String>();	
		// web.xml�뿉�꽌 �꽕�젙�뻽�뜕 parameter瑜� 媛��졇���꽌 �꽕�젙�븳�떎.	
=======
		// 웹페이지의 root페이지의 url를 취득한다.	
		contextPath = filterConfig.getServletContext().getContextPath();	
		passUrl = new ArrayList<String>();	
		// web.xml에서 설정했던 parameter를 가져와서 설정한다.	
>>>>>>> 0d8c48a5ad6ea9e134a0642059c42ac90b4404a2
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
<<<<<<< HEAD
		//User �꽭�뀡 媛믪씠 �엳�쑝硫� �넻怨�!	
=======
		//User 세션 값이 있으면 통과!	
>>>>>>> 0d8c48a5ad6ea9e134a0642059c42ac90b4404a2
		if (session.getAttribute("USER") != null) {	
			chain.doFilter(req, res);	
			return;	
		}	
<<<<<<< HEAD
		// url瑜� 媛��졇���꽌 passUrl�뿉 �엳�뒗 寃쎈줈硫� �넻怨�	
=======
		// url를 가져와서 passUrl에 있는 경로면 통과	
>>>>>>> 0d8c48a5ad6ea9e134a0642059c42ac90b4404a2
		String url = req.getRequestURI();	
		for (String buf : passUrl) {	
			if (buf.equals(url)) {	
				chain.doFilter(req, res);	
				return;	
			}	
		}	
<<<<<<< HEAD
		// User �꽭�뀡�룄 �뾾怨� passUrl�씠硫� �뿉�윭瑜� 諛쒖깮�븳�떎.	
=======
		// User 세션도 없고 passUrl이면 에러를 발생한다.	
>>>>>>> 0d8c48a5ad6ea9e134a0642059c42ac90b4404a2
		// System.out.println(contextPath); - /root
		System.out.println(contextPath);
		res.sendRedirect(contextPath + "/member/loginForm");	
	}	
}

<<<<<<< HEAD
*/
=======

>>>>>>> 0d8c48a5ad6ea9e134a0642059c42ac90b4404a2
