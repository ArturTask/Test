package servlets;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class ControllerServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {

            if(req.getParameter("isFromGraphic").equals("0")) { //NOT GRAPHIC
                int x = Integer.parseInt(req.getParameter("x"));
                double y = Double.parseDouble(req.getParameter("y"));
                int r = Integer.parseInt(req.getParameter("r"));
                boolean validX=false;
                boolean validR=false;


                for(int i = -3; i<6 ;i++)
                {
                    if(x==i){
                        validX=true;
                    }
                }
                for(int i = 1; i<6; i++)
                {
                    if(r==i){
                        validR=true;
                    }
                }
                if (y <= -3 || y >= 5 || !validR || !validX) {
                    getServletContext().getRequestDispatcher("/index.jsp").forward(req, resp);
                }

                else {
                    getServletContext().getRequestDispatcher("/areaCheckServlet").forward(req, resp);
                }
            }
            else //GRAPHIC
            {
                getServletContext().getRequestDispatcher("/areaCheckServlet").forward(req, resp);
            }
        }
        catch (NumberFormatException|NullPointerException e)
        {
            getServletContext().getRequestDispatcher("/index.jsp").forward(req, resp);
        }
        catch(Exception e){
            e.printStackTrace();
            createErrorPage(resp);
        }
    }

    public void createErrorPage(HttpServletResponse resp) throws IOException {
        PrintWriter writer = resp.getWriter();
        String answer = "<html>\n" +
                "  <head>\n" +
                "    <meta charset=\"utf-8\" /> " +
                "<link rel=\"stylesheet\" type=\"text/css\" href=\"css/error.css\">" +
                "  </head>" +
                "<body>" +
                "<div id = \"error\">Error</div>" +
                "<a href = \"index.jsp\">Go back</a>" +
                "</body></html>";
        writer.write(answer);
        writer.close();
    }
}
