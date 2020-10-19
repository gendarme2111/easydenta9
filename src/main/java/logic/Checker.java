package logic;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Checker {

	public boolean check(String numFromServlet) {

		String pattern = "^[0-9]+[\\+\\-\\*/][0-9]*[1-9]+"; //正規表現で入力値を確認
		Pattern p = Pattern.compile(pattern);
		Matcher m = p.matcher(numFromServlet);

		if (m.matches()) {
			return true; //trueの場合は戻り値にtrueを返す
		} else {
			return false; //falseの場合は戻り値にfalseを返す

		}
	}
}
