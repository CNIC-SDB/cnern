import java.io.File;

import com.izforge.izpack.installer.AutomatedInstallData;
import com.izforge.izpack.installer.DataValidator;



public class IntegrityValidation implements DataValidator {

    @Override
    public boolean getDefaultAnswer() {
        // TODO Auto-generated method stub
        return true;
    }

    @Override
    public String getErrorMessageId() {
        // TODO Auto-generated method stub
        return "安装文件不完整！";
    }

    @Override
    public String getWarningMessageId() {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public Status validateData(AutomatedInstallData arg0) {
        File file=new File("./res/userInputSpec.xml");
        if (file.exists()) {
            return Status.OK;
        }
        return Status.ERROR;
    }

}
