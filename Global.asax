<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        Application["visitor"] = 0;
        Application["currently"] = 0;
        // Code that runs on application startup

    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e) 
    {
        Application["visitor"] = int.Parse(Application["visitor"].ToString()) + 1;
        Application["currently"] = int.Parse(Application["currently"].ToString()) + 1;
        Session["login"] = "nothing";
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e) 
    {
        Application["currently"] = int.Parse(Application["currently"].ToString()) - 1;
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }
       
</script>
