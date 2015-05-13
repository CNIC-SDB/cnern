import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Properties;
import java.util.Set;

import org.dom4j.Attribute;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.Node;
import org.dom4j.io.SAXReader;
import org.dom4j.io.XMLWriter;

import com.izforge.izpack.util.AbstractUIProcessHandler;



public class InitializeStationSet {

    public void run(AbstractUIProcessHandler handler,String[] args){
        handler.logOutput("写入数据库信息、台站信息等配置文件",false);
        String dbUrl="jdbc:jtds:sqlserver://"+args[0]+":"+args[1]+";integratedSecurity=true;databaseName=";
        String userName=args[2];
        String password=args[3];
//        String stationAbb=args[4];
        String stationCode=args[4];
//        String stationTitle=args[6];
        String metaDataFilePath=args[5];
        String stationTitle="";
        String stationAbb="";
        File file=new File("stationInfos");
        try {
            BufferedReader reader=new BufferedReader(new FileReader(file));
            String line=null;
            while((line=reader.readLine())!=null){
                String[] stationInfos=line.split(",");
                if(stationInfos.length!=3)
                    continue;
                if(stationInfos[1].equals(stationCode)){
                    stationTitle=stationInfos[2];
                    stationAbb=stationInfos[0];
                    break;
                }
            }
            reader.close();
        } catch (FileNotFoundException e2) {
            handler.emitErrorAndBlockNext("安装文件不完整！", e2.getMessage());
        } catch (IOException e) {
            handler.emitErrorAndBlockNext("安装文件不完整！", e.getMessage());
        }
        
        String installPath=args[6];
        Map<String, String> dbMap=new HashMap<String, String>();
        dbMap.put("monitordb.url", dbUrl+"monitor");
        dbMap.put("resourcedb.url", dbUrl+"resource");
        dbMap.put("metadatadb.url", dbUrl+"metadata");
        dbMap.put("db.username", userName);
        dbMap.put("db.password", password);
        String propertiesPath=installPath+File.separator+"station"+File.separator+"WEB-INF"+File.separator+"classes";
        try {
            handler.logOutput("写入数据库信息配置文件",false);
            writeProperty(propertiesPath+File.separator+"db.properties", dbMap);
        } catch (IOException e) {
            handler.emitErrorAndBlockNext("写入失败", e.getMessage());
        }
        Map<String, String> stationMap=new HashMap<String, String>();
        stationMap.put("station.code", stationCode);
        stationMap.put("station.abb", stationAbb);
        stationMap.put("station.metaDataFilePath", metaDataFilePath);
        try {
            String casUrl=PropertyUtils.readProperty("casUrl");
            String rsUrl=PropertyUtils.readProperty("rsUrl");
            String cmsUrl=PropertyUtils.readProperty("cmsUrl");
            if(!casUrl.endsWith("/"))
                casUrl+="/";
            if(!rsUrl.endsWith("/"))
                rsUrl+="/";
            stationMap.put("param.casServer", casUrl);
            stationMap.put("param.rsUrl", rsUrl);
            stationMap.put("param.cmsUrl", cmsUrl);
        } catch (IOException e1) {
            handler.emitErrorAndBlockNext("无法读取install.properties文件", e1.getMessage());
        }
        if(!args[7].startsWith("http://"))
            args[7]="http://"+args[7];
        stationMap.put("param.portal",args[7]);
        try {
            handler.logOutput("写入台站信息配置文件",false);
            writeProperty(propertiesPath+File.separator+"sysparam.properties", stationMap);
        } catch (IOException e) {
            handler.emitErrorAndBlockNext("写入失败", e.getMessage());
        }
        Map<String, String> skinMap=new HashMap<String, String>();
        skinMap.put("skin.title", stationTitle);
        try {
            handler.logOutput("写入台站页面标题配置文件",false);
            writeProperty(installPath+File.separator+"station"+File.separator+"WEB-INF"+File.separator+"skin.properties", skinMap);
        } catch (IOException e) {
            handler.emitErrorAndBlockNext("写入失败", e.getMessage());
        }
        String serverConfigFilePath=installPath+File.separator+"tomcat7"+File.separator+"conf"+File.separator+"server.xml";
        File serverConfigFile=new File(serverConfigFilePath);
        SAXReader saxReader=new SAXReader();
        try {
            Document document=saxReader.read(serverConfigFile);
            List nodes=document.selectNodes("/Server/Service/Engine/Host[@name='localhost']");
            if (nodes!=null&&nodes.size()>0) {
                Element hostElement=(Element)nodes.get(0);
                Element valueElement=hostElement.addElement("Valve");
                valueElement.addAttribute("className", "org.apache.catalina.valves.AccessLogValve");
                valueElement.addAttribute("directory", "logs_most");
                valueElement.addAttribute("fileDateFormat", "yyyyMMdd");
                valueElement.addAttribute("prefix", "2005DKA10300data_");
                valueElement.addAttribute("suffix", "_"+stationCode+"_access.log");
                valueElement.addAttribute("pattern", "combined");
            }
            XMLWriter writer=new XMLWriter(new FileWriter(serverConfigFile));
            writer.write(document);
            writer.close();
        } catch (DocumentException e) {
            handler.emitErrorAndBlockNext("写入tomcat日志配置失败", e.getMessage());
        } catch (IOException e) {
            handler.emitErrorAndBlockNext("写入tomcat日志配置失败", e.getMessage());
        }
    }
    /**
     * 写入property文件
     * @param fileName 文件路径
     * @param map key-value对
     * @throws IOException 
     */
    public void writeProperty(String fileName,Map<String, String> map) throws IOException{

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
