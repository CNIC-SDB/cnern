import java.io.IOException;

import org.apache.commons.httpclient.Cookie;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpStatus;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.GetMethod;
import org.apache.commons.httpclient.methods.PostMethod;

import com.izforge.izpack.installer.AutomatedInstallData;
import com.izforge.izpack.installer.DataValidator;



public class AdminValidation implements DataValidator {

    @Override
    public boolean getDefaultAnswer() {
        // TODO Auto-generated method stub
        return true;
    }

    @Override
    public String getErrorMessageId() {
        // TODO Auto-generated method stub
        return "用户名和密码不正确或者网络不通";
    }

    @Override
    public String getWarningMessageId() {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public Status validateData(AutomatedInstallData arg0) {
        String casUrl;
        try {
            casUrl=PropertyUtils.readProperty("casUrl");
            if(casUrl.endsWith("/"))
                casUrl+="login";
            else {
                casUrl+="/login";
            }
            final HttpClient client=new HttpClient();
            final PostMethod post=new PostMethod(casUrl);
            final String adminUserName=arg0.getVariable("adminUserName");
            final String password=arg0.getVariable("adminPassword");
            client.getHttpConnectionManager().getParams().setConnectionTimeout(10000);
            client.getHttpConnectionManager().getParams().setSoTimeout(20000);
            try {
                String lt=doCasLoginRequest(client, casUrl);
                NameValuePair[] pairs=new NameValuePair[]{new NameValuePair("username",adminUserName),new NameValuePair("password", password),
                                                          new NameValuePair("lt", lt),new NameValuePair("_eventId", "submit")};
                post.setRequestBody(pairs);
                client.executeMethod(post);
                if(post.getStatusCode()==HttpStatus.SC_OK){
                    Cookie[] cookies=client.getState().getCookies();
                    for (Cookie cookie : cookies) {
                        if(cookie.getName().equalsIgnoreCase("CASTGC")){
                            return Status.OK;
                        }
                    }
                }
                return Status.ERROR;
            } catch (IOException e) {
                return Status.ERROR;
            }finally{
                post.releaseConnection();
            }
        } catch (IOException e1) {
            return Status.ERROR;
        }catch (Exception e) {
            return Status.ERROR;
        }
        
    }
    private String doCasLoginRequest(HttpClient httpclient, String url) throws IOException {
        String result = "";
        GetMethod httpget = new GetMethod(url);
        httpclient.executeMethod(httpget);
        String tempLine = httpget.getResponseBodyAsString();
        String s = "<input type=\"hidden\" name=\"lt\" value=\"";
        int index = tempLine.indexOf(s);
        if (index != -1) {
            String s1 = tempLine.substring(index + s.length());
            int index1 = s1.indexOf("\"");
            if (index1 != -1) result = s1.substring(0, index1);
        }
        return result;
    }
}
