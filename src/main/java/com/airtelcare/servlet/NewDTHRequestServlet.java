package com.airtelcare.servlet;

import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.*;

@WebServlet(urlPatterns={"/dthRequest"})
public class NewDTHRequestServlet extends HttpServlet {
  public void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    String name = null;
    String connectionType = null;
    String refNo = null;
    
    name = req.getParameter("name");
    connectionType = req.getParameter("connectionType");
    
    refNo = String.valueOf(Calendar.getInstance().getTimeInMillis());
    
    req.setAttribute("name", name);
    req.setAttribute("connectionType", connectionType);
    req.setAttribute("refNo", refNo);
    
    req.getRequestDispatcher("/request-details.jsp").forward(req, resp);        
  }
}
