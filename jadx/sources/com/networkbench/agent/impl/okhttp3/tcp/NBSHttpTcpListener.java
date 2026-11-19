package com.networkbench.agent.impl.okhttp3.tcp;

import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.instrumentation.NBSTransactionState;
import com.networkbench.agent.impl.okhttp3.d;
import com.networkbench.agent.impl.socket.r;
import com.networkbench.agent.impl.util.ak;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.List;
import java.util.Map;
import okhttp3.Call;
import okhttp3.Connection;
import okhttp3.EventListener;
import okhttp3.Handshake;
import okhttp3.HttpUrl;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;

/* JADX INFO: loaded from: classes4.dex */
public class NBSHttpTcpListener extends EventListener {
    public static final NBSHttpTcpFactory FACTORY = new NBSHttpTcpFactory();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    EventListener f37590a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    long f37591b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f37592c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f37593e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f37594f;
    private long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f37595h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f37596i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f37597j;
    private long d = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f37598k = false;

    public NBSHttpTcpListener(HttpUrl httpUrl, EventListener eventListener) {
        this.f37592c = httpUrl.d;
        this.f37597j = httpUrl.f();
        this.f37594f = httpUrl.f76922e;
        this.f37590a = eventListener;
    }

    private void reset() {
        this.d = 0L;
        this.g = 0L;
        this.f37595h = 0L;
        this.f37596i = 0L;
        this.f37598k = true;
    }

    @Override // okhttp3.EventListener
    public void cacheConditionalHit(Call call, Response response) {
        EventListener eventListener = this.f37590a;
        if (eventListener != null) {
            eventListener.cacheConditionalHit(call, response);
        }
    }

    @Override // okhttp3.EventListener
    public void cacheHit(Call call, Response response) {
        EventListener eventListener = this.f37590a;
        if (eventListener != null) {
            eventListener.cacheHit(call, response);
        }
    }

    @Override // okhttp3.EventListener
    public void cacheMiss(Call call) {
        EventListener eventListener = this.f37590a;
        if (eventListener != null) {
            eventListener.cacheMiss(call);
        }
    }

    @Override // okhttp3.EventListener
    public void callEnd(Call call) {
        call.getClass();
        EventListener eventListener = this.f37590a;
        if (eventListener != null) {
            eventListener.callEnd(call);
        }
        try {
            NBSTransactionState nBSTransactionState = d.f37578a.get();
            g.t("callEnd   " + nBSTransactionState);
            if (nBSTransactionState != null) {
                nBSTransactionState.endOkTcpData();
            }
        } catch (Throwable unused) {
        }
    }

    @Override // okhttp3.EventListener
    public void callFailed(Call call, IOException iOException) {
        super.callFailed(call, iOException);
        EventListener eventListener = this.f37590a;
        if (eventListener != null) {
            eventListener.callFailed(call, iOException);
        }
    }

    @Override // okhttp3.EventListener
    public void callStart(Call call) {
        call.getClass();
        EventListener eventListener = this.f37590a;
        if (eventListener != null) {
            eventListener.callStart(call);
        }
        g.t("callStart   thread name : " + Thread.currentThread().getName());
    }

    @Override // okhttp3.EventListener
    public void canceled(Call call) {
        EventListener eventListener = this.f37590a;
        if (eventListener != null) {
            eventListener.canceled(call);
        }
    }

    @Override // okhttp3.EventListener
    public void connectEnd(Call call, InetSocketAddress inetSocketAddress, Proxy proxy, Protocol protocol) {
        super.connectEnd(call, inetSocketAddress, proxy, protocol);
        EventListener eventListener = this.f37590a;
        if (eventListener != null) {
            eventListener.connectEnd(call, inetSocketAddress, proxy, protocol);
        }
        try {
            if (this.f37598k) {
                return;
            }
            try {
                if (ak.r(this.f37593e)) {
                    Map<String, String> map = r.f38219c;
                    String str = map.get(this.f37592c) == null ? "" : map.get(this.f37592c);
                    this.f37593e = str;
                    if (ak.r(str)) {
                        this.f37593e = inetSocketAddress.getAddress().getHostAddress();
                    }
                }
            } catch (Throwable unused) {
            }
            NBSTransactionState nBSTransactionState = d.f37578a.get();
            if (nBSTransactionState != null) {
                nBSTransactionState.setTcpHandShakeTime(getConnectTime());
                nBSTransactionState.setIpAddress(this.f37593e);
            }
            if (nBSTransactionState != null) {
                g.t("connectEnd  nbsTransactionState :  " + nBSTransactionState);
            }
        } catch (Throwable unused2) {
        }
    }

    @Override // okhttp3.EventListener
    public void connectFailed(Call call, InetSocketAddress inetSocketAddress, Proxy proxy, Protocol protocol, IOException iOException) {
        super.connectFailed(call, inetSocketAddress, proxy, protocol, iOException);
        EventListener eventListener = this.f37590a;
        if (eventListener != null) {
            eventListener.connectFailed(call, inetSocketAddress, proxy, protocol, iOException);
        }
    }

    @Override // okhttp3.EventListener
    public void connectStart(Call call, InetSocketAddress inetSocketAddress, Proxy proxy) {
        super.connectStart(call, inetSocketAddress, proxy);
        EventListener eventListener = this.f37590a;
        if (eventListener != null) {
            eventListener.connectStart(call, inetSocketAddress, proxy);
        }
        if (this.f37598k) {
            return;
        }
        this.d = System.currentTimeMillis();
    }

    @Override // okhttp3.EventListener
    public void connectionAcquired(Call call, Connection connection) {
        super.connectionAcquired(call, connection);
        EventListener eventListener = this.f37590a;
        if (eventListener != null) {
            eventListener.connectionAcquired(call, connection);
        }
    }

    @Override // okhttp3.EventListener
    public void connectionReleased(Call call, Connection connection) {
        super.connectionReleased(call, connection);
        EventListener eventListener = this.f37590a;
        if (eventListener != null) {
            eventListener.connectionReleased(call, connection);
        }
    }

    @Override // okhttp3.EventListener
    public void dnsEnd(Call call, String str, List<InetAddress> list) {
        super.dnsEnd(call, str, list);
        EventListener eventListener = this.f37590a;
        if (eventListener != null) {
            eventListener.dnsEnd(call, str, list);
        }
        try {
            if (this.f37598k) {
                return;
            }
            g.t("hostAddress  " + this.f37593e);
            NBSTransactionState nBSTransactionState = d.f37578a.get();
            if (nBSTransactionState != null) {
                Map<String, String> map = r.f38219c;
                if (map.containsKey(this.f37592c)) {
                    nBSTransactionState.setIpAddress(map.get(this.f37592c));
                } else {
                    String hostAddress = list.get(0).getHostAddress();
                    this.f37593e = hostAddress;
                    nBSTransactionState.setIpAddress(hostAddress);
                    map.put(this.f37592c, this.f37593e);
                }
                nBSTransactionState.setDnsElapse((int) (System.currentTimeMillis() - this.f37591b));
                g.t("dnsEnd  " + nBSTransactionState);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // okhttp3.EventListener
    public void dnsStart(Call call, String str) {
        this.f37591b = System.currentTimeMillis();
        super.dnsStart(call, str);
        EventListener eventListener = this.f37590a;
        if (eventListener != null) {
            eventListener.dnsStart(call, str);
        }
        try {
            if (this.f37598k) {
                reset();
            }
            NBSTransactionState nBSTransactionState = d.f37578a.get();
            if (nBSTransactionState != null) {
                g.t("dnsStart   " + nBSTransactionState);
            }
        } catch (Throwable unused) {
        }
    }

    public int getConnectTime() {
        long j2;
        long jCurrentTimeMillis = this.g;
        if (jCurrentTimeMillis > 0) {
            j2 = this.d;
        } else {
            jCurrentTimeMillis = System.currentTimeMillis();
            j2 = this.d;
        }
        return (int) (jCurrentTimeMillis - j2);
    }

    public int getFirstPackageTime() {
        int i2 = (int) (this.f37596i - this.f37595h);
        if (i2 == 0) {
            return 1;
        }
        return i2;
    }

    public EventListener getListener() {
        return this.f37590a;
    }

    public int getSSlTime() {
        return (int) (System.currentTimeMillis() - this.g);
    }

    @Override // okhttp3.EventListener
    public void proxySelectEnd(Call call, HttpUrl httpUrl, List<Proxy> list) {
        EventListener eventListener = this.f37590a;
        if (eventListener != null) {
            eventListener.proxySelectEnd(call, httpUrl, list);
        }
    }

    @Override // okhttp3.EventListener
    public void proxySelectStart(Call call, HttpUrl httpUrl) {
        EventListener eventListener = this.f37590a;
        if (eventListener != null) {
            eventListener.proxySelectStart(call, httpUrl);
        }
    }

    @Override // okhttp3.EventListener
    public void requestBodyEnd(Call call, long j2) {
        call.getClass();
        EventListener eventListener = this.f37590a;
        if (eventListener != null) {
            eventListener.requestBodyEnd(call, j2);
        }
        try {
            if (this.f37598k) {
                return;
            }
            this.f37595h = System.currentTimeMillis();
            NBSTransactionState nBSTransactionState = d.f37578a.get();
            if (nBSTransactionState != null) {
                g.t("requestBodyEnd  " + nBSTransactionState);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // okhttp3.EventListener
    public void requestBodyStart(Call call) {
        call.getClass();
        EventListener eventListener = this.f37590a;
        if (eventListener != null) {
            eventListener.requestBodyStart(call);
        }
        try {
            NBSTransactionState nBSTransactionState = d.f37578a.get();
            if (nBSTransactionState != null) {
                g.t("requestBodyStart   " + nBSTransactionState);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // okhttp3.EventListener
    public void requestFailed(Call call, IOException iOException) {
        EventListener eventListener = this.f37590a;
        if (eventListener != null) {
            eventListener.requestFailed(call, iOException);
        }
    }

    @Override // okhttp3.EventListener
    public void requestHeadersEnd(Call call, Request request) {
        super.requestHeadersEnd(call, request);
        EventListener eventListener = this.f37590a;
        if (eventListener != null) {
            eventListener.requestHeadersEnd(call, request);
        }
        try {
            if (this.f37598k) {
                return;
            }
            if (this.f37595h <= 0) {
                this.f37595h = System.currentTimeMillis();
            }
            NBSTransactionState nBSTransactionState = d.f37578a.get();
            if (nBSTransactionState != null) {
                g.t("requestHeadersEnd   " + nBSTransactionState);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // okhttp3.EventListener
    public void requestHeadersStart(Call call) {
        call.getClass();
        EventListener eventListener = this.f37590a;
        if (eventListener != null) {
            eventListener.requestHeadersStart(call);
        }
        try {
            NBSTransactionState nBSTransactionState = d.f37578a.get();
            if (nBSTransactionState != null) {
                g.t("requestHeadersStart  " + nBSTransactionState);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // okhttp3.EventListener
    public void responseBodyEnd(Call call, long j2) {
        call.getClass();
        EventListener eventListener = this.f37590a;
        if (eventListener != null) {
            eventListener.responseBodyEnd(call, j2);
        }
        try {
            if (this.f37598k) {
                return;
            }
            NBSTransactionState nBSTransactionState = d.f37578a.get();
            if (nBSTransactionState != null) {
                nBSTransactionState.setFirstPacketPeriod(getFirstPackageTime());
                long jCurrentTimeMillis = System.currentTimeMillis();
                nBSTransactionState.setRemainPackage((int) (jCurrentTimeMillis - this.f37596i));
                nBSTransactionState.setokhttp3(true);
                nBSTransactionState.setEndTime(jCurrentTimeMillis);
            }
            this.f37598k = true;
        } catch (Throwable unused) {
        }
    }

    @Override // okhttp3.EventListener
    public void responseBodyStart(Call call) {
        call.getClass();
        EventListener eventListener = this.f37590a;
        if (eventListener != null) {
            eventListener.responseBodyStart(call);
        }
    }

    @Override // okhttp3.EventListener
    public void responseFailed(Call call, IOException iOException) {
        EventListener eventListener = this.f37590a;
        if (eventListener != null) {
            eventListener.responseFailed(call, iOException);
        }
    }

    @Override // okhttp3.EventListener
    public void responseHeadersEnd(Call call, Response response) {
        super.responseHeadersEnd(call, response);
        EventListener eventListener = this.f37590a;
        if (eventListener != null) {
            eventListener.responseHeadersEnd(call, response);
        }
    }

    @Override // okhttp3.EventListener
    public void responseHeadersStart(Call call) {
        call.getClass();
        EventListener eventListener = this.f37590a;
        if (eventListener != null) {
            eventListener.responseHeadersStart(call);
        }
        try {
            if (this.f37598k) {
                return;
            }
            if (this.f37596i <= 0) {
                this.f37596i = System.currentTimeMillis();
            }
            NBSTransactionState nBSTransactionState = d.f37578a.get();
            if (nBSTransactionState != null) {
                nBSTransactionState.setFirstPacketPeriod(getFirstPackageTime());
                g.t("responseHeadersStart   " + nBSTransactionState);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // okhttp3.EventListener
    public void satisfactionFailure(Call call, Response response) {
        EventListener eventListener = this.f37590a;
        if (eventListener != null) {
            eventListener.satisfactionFailure(call, response);
        }
    }

    @Override // okhttp3.EventListener
    public void secureConnectEnd(Call call, Handshake handshake) {
        call.getClass();
        EventListener eventListener = this.f37590a;
        if (eventListener != null) {
            eventListener.secureConnectEnd(call, handshake);
        }
        try {
            if (this.f37598k) {
                return;
            }
            g.t("secureConnectEnd : hostName : " + this.f37592c);
            g.t("secureConnectEnd : getSSlTime() : " + getSSlTime());
            NBSTransactionState nBSTransactionState = d.f37578a.get();
            if (nBSTransactionState != null) {
                nBSTransactionState.setSslHandShakeTime(getSSlTime());
            }
        } catch (Throwable unused) {
        }
    }

    @Override // okhttp3.EventListener
    public void secureConnectStart(Call call) {
        call.getClass();
        EventListener eventListener = this.f37590a;
        if (eventListener != null) {
            eventListener.secureConnectStart(call);
        }
        if (this.f37598k) {
            return;
        }
        this.g = System.currentTimeMillis();
    }

    public NBSHttpTcpListener(HttpUrl httpUrl) {
        this.f37592c = httpUrl.d;
        this.f37594f = httpUrl.f76922e;
    }
}
