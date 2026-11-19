package com.linkplay.lpmdpkit.okhttp;

import com.networkbench.agent.impl.harvest.InitUrlConnection;
import java.util.ArrayList;
import java.util.List;
import lv.nfc.reader.utils.LVConstants;

/* JADX INFO: loaded from: classes2.dex */
public class OkHttpDataUtil {
    public static final int ConnectTimeOut = 15;
    public static final int ReadTimeOut = 30;
    public static final int WriteTimeOut = 10;

    public static List<HttpRequestUtils.Param> getHeaders() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new HttpRequestUtils.Param("http.protocol.allow-circular-redirects", "false"));
        arrayList.add(new HttpRequestUtils.Param(LVConstants.LV_JSON_KEY, InitUrlConnection.CONTENT_TYPE_VALUE));
        arrayList.add(new HttpRequestUtils.Param("Accept-Language", HttpHeaderUtil.makeAcceptLanguage()));
        return arrayList;
    }
}
