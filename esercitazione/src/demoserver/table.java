//Roncadin Alessandro 5BIA
package demoserver;

public class table {

	String ip;
	int port;
	String date;

	public String getIp()
	{
		return ip;
	}

	public int getPort()
	{
		return port;
	}

	public String getDate()
	{
		return date;
	}

	public table(String ip, int port, String date)
	{
		this.ip = ip;
		this.port = port;
		this.date = date;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public void setPort(int port) {
		this.port = port;
	}

	public void setDate(String date) {
		this.date = date;
	}

}


