package logic;

public class DentakuLogic {
	public int culc(String servletKeepingNum) {

		Checker c = new Checker();
		String numFromChecker = c.check(servletKeepingNum);

		if(numFromChecker.equals("error")) {
			return 0;
		}

		String kigou = "";
		int indexofKigou = 0;
		int result = 0;
		String leftNum = "";
		String rightNum = "";

		for (int i = 0; i < numFromChecker.length(); i++) {

			String str = numFromChecker.substring(i, i + 1);

			if (str.equals("+") || (str.equals("-")) || (str.equals("*")) || (str.equals("/"))) {
				kigou = str;
				indexofKigou = i;

				for (int j = 0; j < i; j++) {
					leftNum += numFromChecker.substring(j, j + 1);
				}
			}
		}

		int x = Integer.parseInt(leftNum);

		for (int i = indexofKigou + 1; i < numFromChecker.length(); i++) {
			rightNum += numFromChecker.substring(i, i + 1);
		}
		int y = Integer.parseInt(rightNum);

		if (kigou.equals("+")) {
			result = x + y;
		}

		if (kigou.equals("-")) {
			result = x - y;
		}
		if (kigou.equals("*")) {
			result = x * y;
		}
		if (kigou.equals("/")) {
			result = x / y;
		}

		return result;

	}
}
