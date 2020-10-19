package logic;

public class DentakuLogic {
	public int culc(String numFromServlet) {

		Checker c = new Checker(); //不正な入力値をチェックするCheckerクラスを初期化

		if(!c.check(numFromServlet)) { //入力値に不正があった場合の処理
			return 0;//画面に0を表示する
		}
		//入力値が正常だった場合の処理
		int indexofKigou = 0;
		int result = 0;
		String kigou = "";
		String leftNum = "";
		String rightNum = "";

		//for文で入力値を1文字づつ切り取り確認
		for (int i = 0; i < numFromServlet.length(); i++) {

			String str = numFromServlet.substring(i, i + 1);

			//切り取った文字が計算記号に当たった場合の処理
			if (str.equals("+") || (str.equals("-")) || (str.equals("*")) || (str.equals("/"))) {
				kigou = str; //計算記号を変数kigouに格納
				indexofKigou = i; //計算記号のindex番号を変数indexofKigouに格納

				//入力値の計算記号より左側の数値を取り出す処理
				for (int j = 0; j < i; j++) {
					leftNum += numFromServlet.substring(j, j + 1);
				}
			}
		}

		int x = Integer.parseInt(leftNum); //leftNumをint型に変換して変数xに格納

		//入力値の計算記号から右側の数値を取り出す処理
		for (int i = indexofKigou + 1; i < numFromServlet.length(); i++) {
			rightNum += numFromServlet.substring(i, i + 1);
		}
		int y = Integer.parseInt(rightNum); //rightNumをint型に変換して変数yに格納

		if (kigou.equals("+")) { //足し算
			result = x + y;
		}

		if (kigou.equals("-")) { //引き算
			result = x - y;
		}
		if (kigou.equals("*")) { //掛け算
			result = x * y;
		}
		if (kigou.equals("/")) { //割り算
			result = x / y;
		}

		return result; //計算結果を戻り値で返す

	}
}