package kr.co.jsplec.ex;

import jakarta.annotation.PostConstruct;
import jakarta.annotation.PreDestroy;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class ListenerTest
 */

// 서블릿 생성 후 호출되는 메소드들의 cycle 확인
@WebServlet("/ContextListener")
public class ListenerTest extends HttpServlet {
    private static final long serialVersionUID = 1L;
  
    @PostConstruct
    public void postConstruct() {
        System.out.println("postConstruct");
    }

    @Override
    public void init() throws ServletException {
        System.out.println("init");
    }
    
    // get or post 방식 실행
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("doGet");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("doPost");
    }

 // servlet 종료 후에도 실행하고 싶은 메소드 추가
    @PreDestroy
    public void preDestroy() {
        System.out.println("preDestroy");
    }

    @Override
    public void destroy() {
        System.out.println("destroy");
    }
}