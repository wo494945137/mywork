package qgs.csmp.utilty;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import org.apache.commons.lang.StringUtils;

import javax.servlet.http.HttpServletRequest;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.util.HashMap;

/**
 * Created by xuhj on 16-8-7.
 */
public class HttpClientUtil {

    /**
     * post请求，data对象为JSONObject
     * @param url
     * @param data
     * @return String
     */
    public static String post(String url, JSONObject data){
        //支持https
//        ResteasyClientBuilder builder = new ResteasyClientBuilder();
//        Client client = builder.disableTrustManager().build();
        return send(url,data);
    }

    /**
     * post请求，data对象为JSONArray
     * @param url
     * @param data
     * @return String
     */
    public static String post(String url, JSONArray data){
        return send(url,data);
    }

    /**
     * post请求，data对象为HashMap
     * @param url
     * @param data
     * @return String
     */
    public static String post(String url, HashMap<String, Object> data){
        return send(url,data);
    }

    /**
     * post请求，data对象为String
     * @param url
     * @param data
     * @return String
     */
    public static String post(String url, String data){
        return send(url,data);
    }

    private static String send(String url, Object data){
        Client client = ClientBuilder.newClient();
        WebTarget target = client.target(url);
        Response response = target.request().post(Entity.entity(data, MediaType.APPLICATION_JSON_TYPE));
        try {
            return resolveResult(response);
        } finally {
            response.close();
            client.close();
        }
    }

    /**
     * @param url
     * @return String
     */
    public static String get(String url){
        Client client = ClientBuilder.newClient();
        WebTarget target = client.target(url);
        Response response = target.request().get();
        try {
            return resolveResult(response);
        } finally {
            response.close();
            client.close();
        }
    }

    private static String resolveResult(Response response){
        if (response.getStatus() != 200&&response.getStatus() != 204&&response.getStatus() != 205) {
            throw new RuntimeException("Failed with HTTP error code : " + response.getStatus());
        }
        String rss = response.readEntity(String.class);
//        try {
//            JSONObject rs = JSONObject.parseObject(rss);
//            if (rs.get("status") != null) {
//                if(rs.get("status").equals(1)){
//                    return rs.getString("data");
//                }else {
//                    throw new UserHandleException(rs.getString("msg"));
//                }
//            }else {
//                throw new UserHandleException("返回结果为空！");
//            }
//        } catch (Exception e) {
//            throw new RuntimeException("返回结果，格式错误！");
//        }
        return rss;
    }
    /**
     * 获取请求设备类型
     * @param request
     * @return String
     */
    public static String getRequestUser(HttpServletRequest request){
        String rs = "pc";
        String requestHeader = request.getHeader("user-agent");
        String[] deviceArray = new String[]{"android","mac os","windows phone"};
        if(!StringUtil.isNullOrEmpty(requestHeader)){
            requestHeader = requestHeader.toLowerCase();

            for(int i=0;i<deviceArray.length;i++){
                if(requestHeader.indexOf(deviceArray[i])>0){
                    return deviceArray[i];
                }
            }
        }
        return rs;
    }

    /**
     * 获取请求对象ip地址
     * @param request
     * @return String
     */
    public static String getIpAddr(HttpServletRequest request) {
        String ip = request.getHeader("X-Real-IP");
        if (StringUtils.isBlank(ip) || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("X-Forwarded-For");
            if (!StringUtils.isBlank(ip) && !"unknown".equalsIgnoreCase(ip)) {
                // 多次反向代理后会有多个IP值，第一个为真实IP。
                int index = ip.indexOf(',');
                if (index != -1) {
                    ip =  ip.substring(0, index);
                }
            } else {
                ip = request.getRemoteAddr();
            }
        }
        if(StringUtil.isNullOrEmpty(ip)){
            ip = "";
        }
        return ip;
    }

}
