package logic;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Checker {

	String processNum;

	public String check(String servletKeepingNum) {

		String pattern = "^[0-9]+[\\+\\-\\*/][0-9]*[1-9]+";
		Pattern p = Pattern.compile(pattern);
		Matcher m = p.matcher(servletKeepingNum);
		boolean result = m.matches();

		if (result) {
			this.processNum = servletKeepingNum;
		} else {
			this.processNum = "error";

		}

		return this.processNum;

	}
}