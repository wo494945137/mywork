package test;

import java.io.IOException;
import java.io.InputStream;
import java.net.Socket;

/**
 * Created by xuhj on 2018/12/28.
 */
public class test2 {
    public static void main(String[] args) {
        try {
            Socket socket=new Socket("10.20.1.240",4530);
            String msg = "mapID,1,0";
            sendMsg(socket,msg.getBytes());
            while (!socket.isClosed()) {
                InputStream in = socket.getInputStream();
                byte[] bytes = new byte[in.available()];
                in.read(bytes);
                if(bytes.length != 0) {
                    System.out.println(new String(bytes));
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static void sendMsg(Socket socket, byte[] msg) {
//        String msg = "{\"cate\":9,\"d\":[]}";
//        sendMsg(socket,msg.getBytes());
        if (socket != null && socket.isConnected()) {
            try {
                socket.getOutputStream().write(msg);
                socket.getOutputStream().flush();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}
