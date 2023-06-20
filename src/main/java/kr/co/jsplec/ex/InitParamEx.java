package kr.co.jsplec.ex;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebInitParam;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class InitParamEx
 */

//@WebServlet(urlPatterns = {"/InitParamEx"}, initParams = {@WebInitParam(name = "dbId", value="abcde")})
public class InitParamEx extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InitParamEx() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        System.out.println("doGet(ContextParam)");
        
        String dbId = getServletContext().getInitParameter("dbId");
        String dbPwd = getServletContext().getInitParameter("dbPwd");
        String dbSid = getServletContext().getInitParameter("dbSid");
        String testId = getServletContext().getInitParameter("testId");
        
        PrintWriter pw = response.getWriter();
          
          pw.println("<html>");
          pw.println("<head>");
          pw.println("</head>");
          pw.println("<body>");
          pw.println("<h1>Hello World!!</h1>");
          pw.println("<p>dbId: " + dbId + "</p>");
          pw.println("<p>dbPwd: " + dbPwd + "</p>");
          pw.println("<p>dbSid: " + dbSid + "</p>");
          pw.println("<p>testId: " + testId + "</p>");
          pw.println("</body>");
          pw.println("</html>");
          
          pw.close();
            
     }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
