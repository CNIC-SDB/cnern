import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import java.util.Map.Entry;



public class PropertyUtils {

    public static String readProperty(String key) throws IOException{
        InputStream in=new FileInputStream("./install");
        Properties properties=new Properties();
        properties.load(in);
        String value=properties.getProperty(key);
        in.close();
        return value;
    } 
    /**
     * 写入property文件
     * @param fileName 文件路径
     * @param map key-value对
     * @throws IOException 
     */
    public static void writeProperty(String fileName,Map<String, String> map) throws IOException{

            InputStream in=new BufferedInputStream(new FileInputStream(fileName));
            Properties properties=new Properties();
            properties.load(in);
            in.close();
            OutputStream out=new FileOutputStream(fileName);
            Set<Entry<String, String>> entries=map.entrySet();
            for (Entry<String, String> entry : entries) {
                String key=entry.getKey();
                String value=entry.getValue();
                properties.setProperty(key, value);
            }
            properties.store(out, "update");
            out.close();
        
    }
}
