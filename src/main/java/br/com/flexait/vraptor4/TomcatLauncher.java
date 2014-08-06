package br.com.flexait.vraptor4;

import java.io.File;

import javax.servlet.ServletException;

import org.apache.catalina.Context;
import org.apache.catalina.LifecycleException;
import org.apache.catalina.startup.Tomcat;
import org.apache.naming.resources.VirtualDirContext;

public class TomcatLauncher {
	private static final String WEBAPP_DIR_LOCATION = "src/main/webapp/";

	public static void main(String args[]) throws ServletException,
			LifecycleException {
		Tomcat tomcat = new Tomcat();

		tomcat.setPort(Integer.valueOf(getWebPort()));
		Context context = tomcat.addWebapp("/",
				new File(WEBAPP_DIR_LOCATION).getAbsolutePath());
		context.setAllowCasualMultipartParsing(true);
		File additionWebInfClasses = new File("target/classes");
		VirtualDirContext resources = new VirtualDirContext();
		resources.setExtraResourcePaths("/WEB-INF/classes="
				+ additionWebInfClasses);
		context.setResources(resources);

		tomcat.start();
		tomcat.getServer().await();
	}

	private static String getWebPort() {
		String webPort = System.getenv("PORT");
		if (webPort == null || webPort.equals("")) {
			webPort = "8080";
		}
		return webPort;
	}
}
