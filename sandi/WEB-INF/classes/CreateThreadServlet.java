//CreateThread.jspから入力された情報をcheckThread.jspに表示する
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CreateThreadServlet extends HttpServlet{
 public void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException{
   //request内で使ってる文字コードの設定
   req.setCharacterEncoding("UTF-8");

   //CreateThreadで入力されたtitle,description,themeを受け取る
   String title=req.getParameter("title");
   String description=req.getParameter("description");
   String theme=req.getParameter("theme");

   //title,description,themeをrequestにset
   req.setAttribute("title",title);
   req.setAttribute("description",description);
   req.setAttribute("theme",theme);

   //送り先のcheckThread.jspの指定（jspのactionと同じ）
   RequestDispatcher dis=req.getRequestDispatcher("/checkthread");
   //実際に送る
   dis.forward(req,res);
 }
}
