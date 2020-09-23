package logic;

public class Dentaku implements java.io.Serializable{

	private String processNum;
	private int result;

	public Dentaku() {
	}

	public String getProcessNum() {
		return processNum;
	}

	public void setProcessNum(String number) {
		this.processNum = number;
	}

	public int getResult() {
		return result;
	}

	public void setResult(int result) {
		this.result = result;
	}



}