package com.portal.log;

import java.util.Enumeration;

import org.apache.log4j.Logger;
import org.apache.log4j.Level;
import org.apache.log4j.LogManager;

public class ADLogs {
	static final Logger logger = Logger.getLogger(ADLogs.class);
	
	static {


		Enumeration<?> allLoggers = LogManager.getLoggerRepository().getCurrentLoggers();
		while (allLoggers.hasMoreElements()) {
			Logger tmpLogger = (Logger) allLoggers.nextElement();
			String nm = tmpLogger.getName();
			if (nm.startsWith("com.portal.log")) {
				tmpLogger.setLevel(Level.DEBUG);

			}

		}
	
	}

	private ADLogs() {}

	public static void debug(String msg) {
		if (msg != null && !msg.isEmpty()) {
			logger.debug(msg);
		}
	}

	public static void debug(String msg, Exception e) {
		if (logger.isDebugEnabled()) {
			logger.debug(msg, e);
		}
	}

	public static void error(String msg) {
		if (msg != null && !msg.isEmpty()) {
			logger.error(msg);
		}
	}

	public static void error(String msg, Exception e) {
		logger.error(msg, e);
	}

	public static void info(String msg) {
		if (logger.isInfoEnabled() && (msg != null && !msg.isEmpty())) {
				logger.info(msg);
		}		
	}

	public static void info(String msg, Exception e) {
		if (logger.isInfoEnabled()) {
			logger.info(msg, e);
		}
	}

}