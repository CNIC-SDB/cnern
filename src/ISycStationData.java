


import java.util.List;
import java.util.Map;


public interface ISycStationData {

    public List<Map<String, Object>> getTableData(String table, String stationCode,int begin,int end);
    public List<String> getStationArticles(String stationCode);
    public int getRecordCount(String table,String stationCode);
}
