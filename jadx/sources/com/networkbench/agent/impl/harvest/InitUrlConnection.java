package com.networkbench.agent.impl.harvest;

import com.dynatrace.android.callback.Callback;
import com.linkplay.medialib.ContentTree;
import com.networkbench.agent.impl.data.type.b;
import com.networkbench.agent.impl.harvest.a.m;
import com.networkbench.agent.impl.util.ah;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.d;
import com.networkbench.agent.impl.util.r;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.URL;
import java.net.URLConnection;
import java.util.UUID;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class InitUrlConnection {
    private static final String CONTENT_ENCODING = "Content-Encoding";
    public static final String CONTENT_TYPE_KEY = "Content-Type";
    public static final String CONTENT_TYPE_VALUE = "application/json";
    public static final String CONTENT_TYPE_VALUE_STEAM = "application/octet-stream";
    private static final String USER_AGENT = "User-Agent";
    public static final String X_AES_KEY = "X-Aes-Key";
    private static final String X_APP_NONCE = "X-App-Nonce";
    public static final String X_APP_PROCESS = "X-App-Process";
    private static final String X_APP_SIGN = "X-App-Sign";
    public static final String X_APP_START = "X-App-Start";
    private static final String X_APP_TIMESTAMP = "X-App-Timestamp";
    private static final String X_LICENSE_KEY = "X-License-Key";
    public static final String X_TINGYUN_PROTOCOL = "X-Tingyun-Protocol";
    public static int port = 80;
    public static String proxy;
    private String apkSha1;
    private StringBuilder composeHeaderValue = new StringBuilder();
    private String licenseKey;
    private int messageLen;
    private String userAgent;

    public InitUrlConnection(String str, String str2, String str3) {
        this.apkSha1 = str;
        this.userAgent = str2;
        this.licenseKey = str3;
    }

    private void addNewlensHeader(HttpURLConnection httpURLConnection) {
        httpURLConnection.setRequestProperty(CONTENT_ENCODING, getContentType());
        httpURLConnection.setRequestProperty(USER_AGENT, this.userAgent);
        httpURLConnection.setRequestProperty(X_APP_SIGN, this.apkSha1);
        httpURLConnection.setRequestProperty(X_LICENSE_KEY, this.licenseKey);
        httpURLConnection.setRequestProperty(X_APP_PROCESS, isMainProcess());
        httpURLConnection.setRequestProperty(X_TINGYUN_PROTOCOL, "2.0");
        if (r.p == 0) {
            httpURLConnection.setRequestProperty(X_APP_START, b.a().g() + "");
        } else {
            httpURLConnection.setRequestProperty(X_APP_START, ContentTree.ROOT_ID);
        }
        String str = m.a().b() + "";
        if (r.u().D) {
            httpURLConnection.setRequestProperty(X_APP_TIMESTAMP, str);
            httpURLConnection.setRequestProperty(X_APP_NONCE, composeAppNonce(str));
            StringBuilder sb = this.composeHeaderValue;
            sb.append(this.userAgent);
            sb.append(this.licenseKey);
            sb.append(getContentType());
        }
        StringBuilder sb2 = this.composeHeaderValue;
        sb2.append(str);
        sb2.append(httpURLConnection.getRequestProperty(X_APP_NONCE));
    }

    private String composeAppNonce(String str) {
        return ah.b(UUID.randomUUID().toString() + "#" + str);
    }

    private HttpURLConnection createUrlConnection(String str) throws Exception {
        URL url = new URL(str);
        if (proxy == null) {
            URLConnection uRLConnectionOpenConnection = url.openConnection();
            Callback.C(uRLConnectionOpenConnection);
            return (HttpURLConnection) uRLConnectionOpenConnection;
        }
        URLConnection uRLConnectionOpenConnection2 = url.openConnection(new Proxy(Proxy.Type.HTTP, new InetSocketAddress(proxy, port)));
        Callback.C(uRLConnectionOpenConnection2);
        return (HttpURLConnection) uRLConnectionOpenConnection2;
    }

    private String getContentType() {
        return "deflate";
    }

    private void initConnection(HttpURLConnection httpURLConnection) {
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        TimeUnit timeUnit2 = TimeUnit.SECONDS;
        int iConvert = (int) timeUnit.convert(5L, timeUnit2);
        int iConvert2 = (int) timeUnit.convert(10L, timeUnit2);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setConnectTimeout(iConvert);
        httpURLConnection.setReadTimeout(iConvert2);
    }

    public static String isMainProcess() {
        return String.valueOf(r.p + 1);
    }

    public String composeHeadValue() {
        return this.composeHeaderValue.toString();
    }

    public HttpURLConnection configureConnectionForLogTrack(String str) throws Exception {
        HttpURLConnection httpURLConnectionCreateUrlConnection = createUrlConnection(str);
        initConnection(httpURLConnectionCreateUrlConnection);
        httpURLConnectionCreateUrlConnection.setRequestProperty("Content-Type", "application/octet-stream");
        httpURLConnectionCreateUrlConnection.setRequestProperty(X_LICENSE_KEY, this.licenseKey);
        httpURLConnectionCreateUrlConnection.setRequestProperty(X_TINGYUN_PROTOCOL, "2.0");
        httpURLConnectionCreateUrlConnection.addRequestProperty("X-Tingyun-Resource", ak.n());
        return httpURLConnectionCreateUrlConnection;
    }

    public HttpURLConnection configureUrlConnection(String str, int i2) throws Exception {
        if (str == null || i2 < 0) {
            throw new d("error");
        }
        this.composeHeaderValue = new StringBuilder();
        this.messageLen = i2;
        HttpURLConnection httpURLConnectionCreateUrlConnection = createUrlConnection(str);
        initConnection(httpURLConnectionCreateUrlConnection);
        addNewlensHeader(httpURLConnectionCreateUrlConnection);
        return httpURLConnectionCreateUrlConnection;
    }

    public HttpURLConnection configureUrlConnectionOfWebView(String str) throws Exception {
        if (str == null) {
            return null;
        }
        HttpURLConnection httpURLConnectionCreateUrlConnection = createUrlConnection(str);
        initConnection(httpURLConnectionCreateUrlConnection);
        return httpURLConnectionCreateUrlConnection;
    }
}
