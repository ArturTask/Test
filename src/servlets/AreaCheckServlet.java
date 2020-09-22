package servlets;


import models.Dot;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

public class AreaCheckServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        HttpSession session = req.getSession();




        String x = req.getParameter("x");
        String y = req.getParameter("y");
        String r = req.getParameter("r");

        String result = checkResult(Integer.parseInt(x), Double.parseDouble(y), Integer.parseInt(r));

        int numX =  Integer.parseInt(req.getParameter("pointX"));
        double numY =  Double.parseDouble(req.getParameter("pointY"));
        int numR =  Integer.parseInt(req.getParameter("pointR"));
//здесь закончил
        ArrayList<Dot> history;

        if(session.getAttribute("history")==null)
        {
            history = new ArrayList<>();
        }
        else
        {
            history = (ArrayList<Dot>)session.getAttribute("history");
        }
//        String result = "Correct"; // изменить результат
//        Dot newdot = new Dot(x,y,r,result); // изменить результат

        Dot newdot = new Dot( ""+numX,""+numY,""+numR,result);
        history.add(newdot);

        session.setAttribute("currentDot", newdot);
        session.setAttribute("history", history);
        RequestDispatcher dispatcher = req.getRequestDispatcher("result.jsp");
        dispatcher.forward(req, resp);

    }
    private String checkResult(int x, double y, int r){
        if(x>=0){
            if(y>=0){
                if (x<=r && y<=r){
                    return "Бинго";
                }
            }
            else{
                if (y>=(2*x-r)){
                    return "Бинго";
                }
            }
        }
        else{
            if(y<=0){
                if ((Math.pow(x,2) + Math.pow(y,2)) <= Math.pow(r/2,2)){
                    return "Бинго";
                }
            }
        }
        return "Промах";
    }

}
