//CreateThread.jsp������͂��ꂽ����checkThread.jsp�ɕ\������
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CreateThreadServlet extends HttpServlet{
 public void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException{
   //request���Ŏg���Ă镶���R�[�h�̐ݒ�
   req.setCharacterEncoding("UTF-8");

   //CreateThread�œ��͂��ꂽtitle,description,theme���󂯎��
   String title=req.getParameter("title");
   String description=req.getParameter("description");
   String theme=req.getParameter("theme");

   //title,description,theme��request��set
   req.setAttribute("title",title);
   req.setAttribute("description",description);
   req.setAttribute("theme",theme);

   //������checkThread.jsp�̎w��ijsp��action�Ɠ����j
   RequestDispatcher dis=req.getRequestDispatcher("/checkthread");
   //���ۂɑ���
   dis.forward(req,res);
 }
}
