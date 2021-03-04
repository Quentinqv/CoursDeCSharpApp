using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace CoursDeCSharpApp
{
    public class Global : System.Web.HttpApplication
    {
		protected void Application_Error(object sender, EventArgs e)
		{
			HttpException lastErrorWrapper = Server.GetLastError() as HttpException;

			if (lastErrorWrapper.GetHttpCode() == 404)
				Server.Transfer("~/errorPage.html");
		}
	}
}