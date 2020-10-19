package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import logic.DentakuLogic;

@WebServlet("/Servlet")
public class Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	String numOnDisplay = ""; //ディスプレイに表示する文字列

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response)
			throws ServletException, IOException {

		// Ajaxで渡された値を変数inputに格納
		String input = request.getParameter("num");
		//inputをnumOnValueにプラスする
		numOnDisplay = numOnDisplay + input;

		//DentakuLogicの初期化
		DentakuLogic logic = new DentakuLogic();

		//inputが"C"または"="または"それ以外"で分岐
		if (input.equals("C")) { //inputが"C"の場合
			this.numOnDisplay = ""; //numOnDisplayをクリアする

		} else if (input.equals("=")) {//inputが"="の場合
			numOnDisplay = numOnDisplay.replaceFirst("=", "");//numOnDisplayから"="を除く
			this.numOnDisplay = String.valueOf(logic.culc(numOnDisplay));//culcメソッドに代入、計算結果を戻り値で受け取る
		}

		// 返却値に設定
		PrintWriter out = response.getWriter();
		out.print(numOnDisplay);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response)
			throws ServletException, IOException {
	}
}