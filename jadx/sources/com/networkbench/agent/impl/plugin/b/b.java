package com.networkbench.agent.impl.plugin.b;

import android.text.TextUtils;
import com.dynatrace.android.callback.Callback;
import com.networkbench.agent.impl.background.NBSApplicationStateMonitor;
import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.plugin.g.a.a.c;
import com.networkbench.agent.impl.util.ai;
import com.networkbench.agent.impl.util.ak;
import defpackage.tr;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected static e f37947k = f.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f37948a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    long f37949b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    String f37950c;
    String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    String f37951e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    long f37952f;
    int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f37953h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    int f37954i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    Map<String, List<String>> f37955j = new HashMap();
    private String l;

    public b(String str, int i2) {
        this.l = str;
        this.f37953h = i2 * 1048576;
        g.e("downloadSizeLimit:" + this.f37953h);
        this.f37948a = "";
        this.f37950c = "";
        this.d = "";
        this.f37951e = "";
        this.f37954i = 0;
    }

    private void b() throws Exception {
        if (TextUtils.isEmpty(this.f37951e)) {
            return;
        }
        boolean zM = ak.m(this.f37951e);
        String str = this.f37951e;
        if (zM) {
            this.d = str;
        } else {
            com.networkbench.agent.impl.plugin.g.a.b.a(str, new com.networkbench.agent.impl.plugin.g.a.f(), new com.networkbench.agent.impl.plugin.g.a.b.a() { // from class: com.networkbench.agent.impl.plugin.b.b.1
                @Override // com.networkbench.agent.impl.plugin.g.a.b.a
                public void a(com.networkbench.agent.impl.plugin.g.a.b.C0108b c0108b) {
                    if (c0108b == null) {
                        return;
                    }
                    b.this.f37948a = c0108b.d;
                    c[] cVarArr = c0108b.f38103c;
                    if (cVarArr == null) {
                        return;
                    }
                    for (c cVar : cVarArr) {
                        b.f37947k.a("record type:" + cVar.d + ", cname:" + cVar.f38093c);
                        if (cVar.d == 1 && TextUtils.isEmpty(b.this.d)) {
                            b bVar = b.this;
                            bVar.d = cVar.f38093c;
                            bVar.f37952f = c0108b.f38102b;
                        }
                        if (cVar.d == 5) {
                            b.this.f37950c = cVar.f38093c;
                        }
                    }
                }
            });
        }
    }

    private String c() {
        try {
            return new URL(this.l).getHost();
        } catch (Exception e2) {
            f37947k.f("DownloadPlugin get hostName error: " + e2.getMessage());
            return "";
        }
    }

    private HttpURLConnection d() throws IOException {
        URLConnection uRLConnectionOpenConnection = new URL(this.l).openConnection();
        Callback.C(uRLConnectionOpenConnection);
        return (HttpURLConnection) uRLConnectionOpenConnection;
    }

    public void a() throws Exception {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            this.f37951e = c();
            b();
            HttpURLConnection httpURLConnectionD = d();
            httpURLConnectionD.setConnectTimeout(NBSApplicationStateMonitor.ALTERNATEPERIOD);
            httpURLConnectionD.setReadTimeout(NBSApplicationStateMonitor.ALTERNATEPERIOD);
            try {
                Callback.a(httpURLConnectionD);
                try {
                    this.f37955j = Callback.f(httpURLConnectionD);
                } catch (Throwable unused) {
                    g.e("DownloadPlugin  response  headerFields :   null  ");
                }
                if (Callback.k(httpURLConnectionD) == 200) {
                    this.g = a(new BufferedInputStream(Callback.g(httpURLConnectionD)));
                } else if (Callback.k(httpURLConnectionD) >= 400) {
                    this.f37948a = "HTTP statusCode: " + Callback.k(httpURLConnectionD);
                }
                this.f37954i = ai.b(this.f37951e);
                httpURLConnectionD.disconnect();
                this.f37949b = System.currentTimeMillis() - jCurrentTimeMillis;
            } catch (Throwable th) {
                this.f37954i = ai.b(this.f37951e);
                httpURLConnectionD.disconnect();
                this.f37949b = System.currentTimeMillis() - jCurrentTimeMillis;
                throw th;
            }
        } catch (IOException e2) {
            this.f37948a = e2.getMessage();
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("VisitDownUrl{urlStr='");
        sb.append(this.l);
        sb.append("', exception='");
        sb.append(this.f37948a);
        sb.append("', networktime=");
        sb.append(this.f37949b);
        sb.append(", cName='");
        sb.append(this.f37950c);
        sb.append("', ip='");
        sb.append(this.d);
        sb.append("', host='");
        sb.append(this.f37951e);
        sb.append("', dnsTime=");
        sb.append(this.f37952f);
        sb.append(", downloadSize=");
        sb.append(this.g);
        sb.append(", limitSize=");
        return tr.k(sb, this.f37953h, '}');
    }

    private void a(HttpURLConnection httpURLConnection) {
        Callback.f(httpURLConnection);
    }

    private int a(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        do {
            int i2 = inputStream.read(bArr);
            if (i2 == -1) {
                break;
            }
            byteArrayOutputStream.write(bArr, 0, i2);
        } while (byteArrayOutputStream.size() < this.f37953h);
        inputStream.close();
        return byteArrayOutputStream.size();
    }
}
