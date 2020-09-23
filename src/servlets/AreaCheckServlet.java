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

        //variables:
        ArrayList<Dot> history;
        String x = null;
        String y= null;
        String r= null;
        String result= null;

        //NOT GRAPHIC
        if(req.getParameter("isFromGraphic").equals("0")) {
            x = req.getParameter("x");
            y = req.getParameter("y");
            r = req.getParameter("r");

            result = checkResult(Integer.parseInt(x), Double.parseDouble(y), Integer.parseInt(r));
        }
        else //GRAPHIC
        {
            x = req.getParameter("pointX");
            y = req.getParameter("pointY");
            r = req.getParameter("r");
            result = checkResult(Integer.parseInt(x), Double.parseDouble(y), Integer.parseInt(r));
        }

        if(session.getAttribute("history")==null)
        {
            history = new ArrayList<>();
        }
        else
        {
            history = (ArrayList<Dot>)session.getAttribute("history");
        }
        Dot newdot = new Dot(x,y,r,result);

//        Dot newdot = new Dot( ""+numX,""+numY,""+numR,result);
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
