package test;

import java.io.IOException;
import java.io.InputStream;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 * Created by xuhj on 2018/12/28.
 */
public class testKongying {
    public static void main(String[] args) {
        try {
            List<Socket> sockets = new ArrayList<>();
            fun1(sockets);
            AsyncExecutor.execute(() -> {
                setHeart(sockets);
            });
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void fun1(List<Socket> sockets) throws IOException {
        for (int i = 1; i < 3; i++) {
            Socket socket=new Socket("10.20.1.240",4530);
            sockets.add(socket);
            String msg = "mapID,"+i+",0";
            testFreer.sendMsg(socket,msg.getBytes());
            AsyncExecutor.execute(() -> {
                setCallback(socket,new KongyingImpl());
            });

        }
    }
    public static void setCallback(Socket socket, KongyingIntf impl){
        try {
            System.out.println("setCallback start");
            while (!socket.isClosed()) {
                InputStream in = socket.getInputStream();
                byte[] bytes = new byte[in.available()];
                in.read(bytes);
                if(bytes.length != 0) {
                    impl.recv(new String(bytes));
                }
                Thread.currentThread().sleep(1);
//                System.out.println(socket.isClosed());
            }
            System.out.println("setCallback end");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void setHeart(List<Socket> sockets){
        while (sockets.size()>0) {
            Socket socket = sockets.get(0);
            try {
                testFreer.sendMsg(socket, "1".getBytes());
                Thread.currentThread().sleep(5000);
            } catch (Exception e) {
                try {
                    for (Socket sck: sockets) {
                        sck.close();
                    }
                    sockets.clear();
                    while (sockets.size()==0){
                        try {
                            fun1(sockets);
                            Thread.currentThread().sleep(100);
                        }catch (Exception ex){

                        }
                    }
                } catch (IOException e1) {
                    e1.printStackTrace();
                }
            }
        }
    }

}
