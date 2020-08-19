package com.query.jdbc;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GenerateServlet
 */
@WebServlet("/Gen")
public class GenerateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public GenerateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String theCommand = request.getParameter("mumbai");
		
		switch (theCommand) {
		
		case "LOGIN":
			LoginCheck1(request, response);
			break;
		case "RENAME":
			Rename(request, response);
			break;
		case "DROPDB":
			dropdb(request,response);
			break;
		case "renametable":
			renametable(request, response);
			break;
		case "DROPTABLE":
			droptable(request,response);
			break;
		case "COPYWOC":
			copywoc(request,response);
			break;
		case "COPYWC":
			copywc(request,response);
			break;
		case "INSERT":
			insert(request,response);
			break;
		case "UPDATE":
			update(request,response);
			break;
		case "DELETE":
			delete(request,response);
			break;
		case "alter_add":
			alter_add(request,response);
			break;
		case "alter_drop":
			alter_drop(request,response);
			break;
		case "altermodify":
			altermodify(request,response);
			break;
		case "FK":
			fk(request,response);
			break;
		case "ADDUK":
			uk(request,response);
			break;
		case "DROPUK":
			duk(request,response);
			break;
		case "ADDPK":
			addpk(request,response);
			break;
		case "DDPK":
			dddpk(request,response);
			break;
		case "CP":
			cp(request,response);
			break;
		case "DP":
			dp(request,response);
			break;
		case "CP1":
			cp1(request,response);
			break;
		case "DF":
			df(request,response);
			break;
		}
		}catch(Exception e) {}
	
		
		
	
	}





	private void df(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String dff = request.getParameter("dff");
		request.setAttribute("dpp1",  dff);
		
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/drop_function.jsp");
		requestDispatcher.forward(request , response);

	}


	private void cp1(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String CPP = request.getParameter("CPP");
		String blank = request.getParameter("blank");
		String return1 = request.getParameter("return1");
		request.setAttribute("ALUK",  CPP);
		request.setAttribute("ADC",  blank);
		request.setAttribute("PK",  return1);

		
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/create_function.jsp");
		requestDispatcher.forward(request , response);
		

	}


	private void dp(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String dpp1 = request.getParameter("dpp1");
		request.setAttribute("dpp1",  dpp1);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/drop_procedure.jsp");
		requestDispatcher.forward(request , response);

	}


	private void cp(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String dpp = request.getParameter("dpp");
		String procedure_Constraints = request.getParameter("procedure_Constraints");
		String pk = request.getParameter("pk");
		request.setAttribute("ALUK",  dpp);
		request.setAttribute("ADC",  procedure_Constraints);
		request.setAttribute("PK",  pk);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/create_procedure.jsp");
		requestDispatcher.forward(request , response);

	}


	private void dddpk(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String aluk = request.getParameter("aluk");
		String dropconstraint = request.getParameter("dropconstraint");
		request.setAttribute("ALUK", aluk);
		request.setAttribute("DDDC", dropconstraint);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/alter_drop_pk.jsp");
		requestDispatcher.forward(request , response);
	}


	private void addpk(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String aluk = request.getParameter("aluk");
		String addconstraint = request.getParameter("addconstraint");
		String pk = request.getParameter("pk");

		request.setAttribute("ALUK", aluk);
		request.setAttribute("ADC", addconstraint);
		request.setAttribute("PK", pk);

		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/alter_add_pk.jsp");
		requestDispatcher.forward(request , response);	
	}


	private void duk(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String aluk = request.getParameter("aluk");
		String dropconstraint = request.getParameter("dropconstraint");
		request.setAttribute("ALUK", aluk);
		request.setAttribute("DDC", dropconstraint);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/alter_drop_uk.jsp");
		requestDispatcher.forward(request , response);
	}


	private void uk(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String aluk = request.getParameter("aluk");
		String addconstraint = request.getParameter("addconstraint");
		String unique = request.getParameter("unique");

		
		request.setAttribute("ALUK", aluk);
		request.setAttribute("ADDC", addconstraint);
		request.setAttribute("UNIQUE", unique);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/alter_drop_uk.jsp");
		requestDispatcher.forward(request , response);
		
	}


	private void fk(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String altertable = request.getParameter("altertable");
		String add_constraint = request.getParameter("add_constraint");
		String fk = request.getParameter("fk");
		String REFERENCES = request.getParameter("reference");
		String REFERENCES1 = request.getParameter("reference1");

		request.setAttribute("AT", altertable);
		request.setAttribute("CL", add_constraint);
		request.setAttribute("FK", fk);
		request.setAttribute("REF", REFERENCES);
		request.setAttribute("REF1", REFERENCES1);

		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/alter_add_fk.jsp");
		requestDispatcher.forward(request , response);
	}


	private void altermodify(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String altermodify = request.getParameter("altermodify");
		String add1 = request.getParameter("add1");
		String coloumn_type1 = request.getParameter("coloumn_type1");
		String coloumn_nullable1 = request.getParameter("coloumn_nullable1");

		request.setAttribute("altermodify", altermodify);
		request.setAttribute("add1", add1);
		request.setAttribute("coloumn_type1", coloumn_type1);
		request.setAttribute("coloumn_nullable1", coloumn_nullable1);

		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/alter_modify.jsp");
		requestDispatcher.forward(request , response);
	}


	private void alter_drop(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String alterdrop = request.getParameter("alterdrop");
		String column = request.getParameter("column");		
		request.setAttribute("alterdrop", alterdrop);
		request.setAttribute("column", column);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/alter_drop.jsp");
		requestDispatcher.forward(request , response);
	}


	private void alter_add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String altertable = request.getParameter("altertable");
		String add = request.getParameter("add");
		String coloumn_type = request.getParameter("coloumn_type");
		String coloumn_nullable = request.getParameter("coloumn_nullable");

		request.setAttribute("altertable", altertable);
		request.setAttribute("add", add);
		request.setAttribute("coloumn_type", coloumn_type);
		request.setAttribute("coloumn_nullable", coloumn_nullable);

		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/alter_add.jsp");
		requestDispatcher.forward(request , response);
	}


	private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String delete = request.getParameter("delete");
		String where = request.getParameter("where");
		request.setAttribute("delete", delete);
		request.setAttribute("where", where);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/delete.jsp");
		requestDispatcher.forward(request , response);
	}


	private void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String update = request.getParameter("update");
		String set = request.getParameter("set");
		String where = request.getParameter("where");

		
		request.setAttribute("UPDATE", update);
		request.setAttribute("SET", set);
		request.setAttribute("WHERE", where);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/update.jsp");
		requestDispatcher.forward(request , response);
	}


	private void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String insert = request.getParameter("insert");
		String column = request.getParameter("coloumname");
		String values = request.getParameter("values");

		
		request.setAttribute("insert", insert);
		request.setAttribute("column", column);
		request.setAttribute("values", values);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/insert.jsp");
		requestDispatcher.forward(request , response);
		
	}


	private void copywc(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ct = request.getParameter("createtable");
		String ft = request.getParameter("table");
		request.setAttribute("CCPY", ct);
		request.setAttribute("LPY", ft);

		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/copy_table_with_constraints.jsp");
		requestDispatcher.forward(request , response);
		
	}


	private void copywoc(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ct = request.getParameter("createtable");
		String ft = request.getParameter("table");
		request.setAttribute("CPY", ct);
		request.setAttribute("FPY", ft);

		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/copy_table_without_constraints.jsp");
		requestDispatcher.forward(request , response);
	}


	private void droptable(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String droptb = request.getParameter("droptable");
		request.setAttribute("DROPTAB", droptb);

		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/dropTable.jsp");
		requestDispatcher.forward(request , response);		
	}


	private void renametable(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				String rename = request.getParameter("retable");
				String renewname = request.getParameter("renewtable");
				request.setAttribute("Reold", rename);
				request.setAttribute("Renew", renewname);

				RequestDispatcher requestDispatcher = request.getRequestDispatcher("/renamedTable.jsp");
				requestDispatcher.forward(request , response);
				
	
	}


	private void dropdb(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String dropdb = request.getParameter("dropdatabase");
		
		request.setAttribute("DDB", dropdb);
		String[] textareas= request.getParameterValues("textarea");

		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/DropDatabase.jsp");
		requestDispatcher.forward(request , response);
	}


	private void Rename(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String olddbname = request.getParameter("olddatabase");
		String newdbname = request.getParameter("newdatabase");
		request.setAttribute("ODB", olddbname);
		request.setAttribute("NDB", newdbname);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/Renamedb.jsp");
		requestDispatcher.forward(request , response);

		
	}


	private void LoginCheck1(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String dbname = request.getParameter("user" );
		//response.setContentType("text/html");
	//	PrintWriter out  = response.getWriter();
		request.setAttribute("CP", dbname);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/Createdb.jsp");
		requestDispatcher.forward(request , response);
		
	}





	
	}


