package com.networkbench.agent.impl.okhttp3.websocket;

import com.linkplay.medialib.FinalDataUtil;
import com.networkbench.agent.impl.NBSAppAgent;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;
import com.networkbench.agent.impl.session.ISpan;
import com.networkbench.agent.impl.session.SpanStatus;
import java.io.IOException;
import java.net.ConnectException;
import java.net.MalformedURLException;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.UnknownHostException;
import javax.net.ssl.SSLException;

/* JADX INFO: loaded from: classes2.dex */
public class b implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final e f37602a = f.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ISpan f37603b = NBSAppAgent.startSpan("websocket invoke", "websocket");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f37604c = 0;
    private int d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f37605e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f37606f;
    private int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f37607h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f37608i;

    private void b() {
        this.f37603b.setMetric("receiveCount", Integer.valueOf(this.f37604c));
        this.f37603b.setMetric("receiveSize", Integer.valueOf(this.d), NBSSpanMetricUnit.Byte);
        this.f37603b.setMetric("sendCount", Integer.valueOf(this.f37605e));
        this.f37603b.setMetric("sendSize", Integer.valueOf(this.f37606f), NBSSpanMetricUnit.Byte);
        int i2 = this.g;
        ISpan iSpan = this.f37603b;
        if (i2 != 0) {
            iSpan.setMetric("pingpongAvgTime", Long.valueOf(this.f37607h / ((long) i2)), NBSSpanMetricUnit.Millisecond);
        } else {
            iSpan.setMetric("pingpongAvgTime", 0, NBSSpanMetricUnit.Millisecond);
        }
        this.f37603b.setMetric("pingpongCount", Integer.valueOf(this.g));
    }

    private int d(int i2) {
        if (i2 == -1) {
            return 0;
        }
        return i2;
    }

    private void e(int i2) {
        f37602a.a("receiveSize:" + i2);
        this.f37604c = this.f37604c + 1;
        this.d = this.d + i2;
    }

    @Override // com.networkbench.agent.impl.okhttp3.websocket.a
    public void a(c cVar) throws Exception {
        if (!cVar.f37610b) {
            this.f37603b.setTag("errorCode", String.valueOf(cVar.f37611c));
            this.f37603b.setData("errorDesc", cVar.d);
            this.f37603b.finish(SpanStatus.SPAN_STATUS_ERROR);
            return;
        }
        if (cVar.f37609a != null) {
            e eVar = f37602a;
            eVar.a("openInfo.transactionState :" + cVar.f37609a.toString());
            String strA = a(cVar.f37609a.getUrl());
            this.f37603b.setName(strA);
            eVar.a("openInfo.transactionState  url:" + strA);
            this.f37603b.setTag("protocol", b(strA));
            this.f37603b.setTag("host", c(cVar.f37609a.getUrl()));
            this.f37603b.setTag("host_ip", cVar.f37609a.getIpAddress());
            this.f37603b.setMetric("dns", Integer.valueOf(d(cVar.f37609a.getDnsElapse())), NBSSpanMetricUnit.Millisecond);
            this.f37603b.setMetric("connect", Integer.valueOf(d(cVar.f37609a.getTcpHandShakeTime())), NBSSpanMetricUnit.Millisecond);
            if (strA.startsWith("wss://")) {
                this.f37603b.setMetric("ssl", Integer.valueOf(d(cVar.f37609a.getSslHandShakeTime())), NBSSpanMetricUnit.Millisecond);
            }
            this.f37603b.setMetric("firstPackage", Integer.valueOf(d(cVar.f37609a.getFirstPacketPeriod())), NBSSpanMetricUnit.Millisecond);
            if (cVar.f37609a.getStatusCode() != 101) {
                this.f37603b.setTag("status_code", String.valueOf(cVar.f37609a.getStatusCode()));
            }
        }
    }

    @Override // com.networkbench.agent.impl.okhttp3.websocket.a
    public void c(int i2) {
        this.g++;
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j2 = this.f37608i;
        if (jCurrentTimeMillis < j2) {
            f37602a.e("onReadPong time is error");
        } else {
            this.f37607h = (jCurrentTimeMillis - j2) + this.f37607h;
        }
    }

    private String c(String str) {
        try {
            return new URL(str).getHost();
        } catch (Throwable unused) {
            return "";
        }
    }

    @Override // com.networkbench.agent.impl.okhttp3.websocket.a
    public void b(int i2) throws Exception {
        e(i2);
    }

    @Override // com.networkbench.agent.impl.okhttp3.websocket.a
    public void b(int i2, String str) throws Exception {
        b();
        this.f37603b.setTag("closeCode", String.valueOf(i2));
        this.f37603b.setData("closeReason", str);
        this.f37603b.finish(SpanStatus.SPAN_STATUS_OK);
    }

    private String b(String str) {
        if (str.startsWith("wss://")) {
            return "wss";
        }
        if (str.startsWith("ws://")) {
            return "ws";
        }
        return "";
    }

    public static boolean b(Throwable th) {
        if (th != null) {
            try {
                if ((th instanceof SocketException) && th.getMessage().contains("recvfrom failed: ECONNRESET (Connection reset by peer)")) {
                    return true;
                }
            } catch (Exception e2) {
                f37602a.a("isSocketECONNRESET error", e2);
            }
        }
        return false;
    }

    @Override // com.networkbench.agent.impl.okhttp3.websocket.a
    public void a(int i2, String str) throws Exception {
    }

    private String a(String str) {
        try {
            if (str.startsWith("https://")) {
                return "wss://" + str.split("https://")[1];
            }
            if (str.startsWith(FinalDataUtil.HTTP_HEAD)) {
                return "ws://" + str.split(FinalDataUtil.HTTP_HEAD)[1];
            }
            return "";
        } catch (Throwable unused) {
            return "";
        }
    }

    @Override // com.networkbench.agent.impl.okhttp3.websocket.a
    public void a(int i2) throws Exception {
        e(i2);
    }

    @Override // com.networkbench.agent.impl.okhttp3.websocket.a
    public void a(c cVar, int i2, String str, Throwable th) throws Exception {
        try {
            if (!cVar.f37610b) {
                String strA = a(cVar.f37609a.getUrl());
                this.f37603b.setName(strA);
                f37602a.a("openInfo.transactionState  url:" + strA);
                this.f37603b.setTag("protocol", b(strA));
                this.f37603b.setTag("host", c(cVar.f37609a.getUrl()));
            }
            b();
            ISpan iSpan = this.f37603b;
            if (i2 != -1) {
                iSpan.setTag("status_code", String.valueOf(i2));
            } else {
                iSpan.setTag("status_code", String.valueOf(a(th)));
            }
            this.f37603b.setData("error", str);
            this.f37603b.finish(SpanStatus.SPAN_STATUS_ERROR);
        } catch (Throwable th2) {
            f37602a.a("NBSWebSocketMetric  onFailure    error:" + th2.getMessage());
        }
    }

    @Override // com.networkbench.agent.impl.okhttp3.websocket.a
    public void a(int i2, int i3) {
        f37602a.a("send length:" + i2 + ", formatOpcode:" + i3);
        this.f37605e = this.f37605e + 1;
        this.f37606f = this.f37606f + i2;
    }

    @Override // com.networkbench.agent.impl.okhttp3.websocket.a
    public void a() {
        this.f37608i = System.currentTimeMillis();
    }

    public static int a(Throwable th) {
        if (th instanceof IOException) {
            if (b(th)) {
                return 411;
            }
            String message = th.getMessage();
            if (message != null && message.contains("ftruncate failed: ENOENT (No such file or directory)")) {
                return 517;
            }
        }
        if (th instanceof UnknownHostException) {
            return 901;
        }
        if (th instanceof SocketTimeoutException) {
            return 903;
        }
        if (th instanceof ConnectException) {
            return 902;
        }
        if (th instanceof MalformedURLException) {
            return 900;
        }
        return th instanceof SSLException ? 908 : -1;
    }
}
