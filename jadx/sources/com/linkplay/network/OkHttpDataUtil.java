package com.linkplay.network;

import com.networkbench.agent.impl.harvest.InitUrlConnection;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class OkHttpDataUtil {
    private static int ConnectTimeOut = 15;
    private static int ReadTimeOut = 30;
    private static int WriteTimeOut = 10;

    public static int getConnectTimeOut() {
        return ConnectTimeOut;
    }

    public static List<HttpRequestUtils.Param> getHeaders() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new HttpRequestUtils.Param("Content-Type", InitUrlConnection.CONTENT_TYPE_VALUE));
        return arrayList;
    }

    public static int getReadTimeOut() {
        return ReadTimeOut;
    }

    public static int getWriteTimeOut() {
        return WriteTimeOut;
    }

    public static void setConnectTimeOut(int i2) {
        ConnectTimeOut = i2;
    }

    public static void setReadTimeOut(int i2) {
        ReadTimeOut = i2;
    }

    public static void setWriteTimeOut(int i2) {
        WriteTimeOut = i2;
    }
}
