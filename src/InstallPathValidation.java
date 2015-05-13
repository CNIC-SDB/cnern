import com.izforge.izpack.installer.AutomatedInstallData;
import com.izforge.izpack.installer.DataValidator;



public class InstallPathValidation implements DataValidator{

    @Override
    public boolean getDefaultAnswer() {
        // TODO Auto-generated method stub
        return true;
    }

    @Override
    public String getErrorMessageId() {
        // TODO Auto-generated method stub
        return "请不要安装在系统盘，影响系统使用";
    }

    @Override
    public String getWarningMessageId() {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public Status validateData(AutomatedInstallData arg0) {
        String path=arg0.getVariable("INSTALL_PATH");
        if(path!=null&&(path.startsWith("C")||path.startsWith("c")))
            return Status.ERROR;
        return Status.OK;
    }

}
