package com.portal.exception;

public class PortalException extends Exception {
	 private static final long serialVersionUID = 1L;

	  public PortalException()
	  {
	    super();
	  }
	  public PortalException(String message)
	  {
	    super(message);
	  }

	  public PortalException(Throwable cause)
	  {
	    super(cause.getMessage(), cause);
	  }

	  public PortalException(String message, Throwable cause)
	  {
	    super(message, cause);
	  }

	  public PortalException(String message, Throwable cause,
	      boolean enableSuppression, boolean writableStackTrace)
	  {
	    super(message, cause, enableSuppression, writableStackTrace);
	  }

}
