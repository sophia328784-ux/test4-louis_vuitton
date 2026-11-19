package com.batch.android.e;

import android.content.Context;
import android.net.TrafficStats;
import android.text.TextUtils;
import com.appsflyer.sdk_base.referrer.Payload;
import com.batch.android.FailReason;
import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;
import com.dynatrace.android.agent.Global;
import com.dynatrace.android.callback.Callback;
import com.linkplay.medialib.ContentTree;
import defpackage.a61;
import defpackage.md;
import defpackage.r81;
import defpackage.rh;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.net.UnknownHostException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicReference;
import java.util.zip.GZIPInputStream;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLHandshakeException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class o0 {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String f23125i = "Webservice";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int f23126j = 487;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int f23127k = 60;
    private static b l;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f23128b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private m0 f23129c;
    protected Map<String, String> d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected Context f23130e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private c f23131f;
    protected boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private com.batch.android.v0.h f23132h = com.batch.android.n.v.a();

    public static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f23133a;

        static {
            int[] iArr = new int[d.a.values().length];
            f23133a = iArr;
            try {
                iArr[d.a.NETWORK_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f23133a[d.a.UNEXPECTED_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f23133a[d.a.SERVER_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f23133a[d.a.INVALID_API_KEY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f23133a[d.a.DEACTIVATED_API_KEY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public interface b {
        HttpURLConnection a(HttpURLConnection httpURLConnection);

        URL a(URL url);

        void a(String str, HttpURLConnection httpURLConnection, d dVar);

        void a(String str, HttpURLConnection httpURLConnection, byte[] bArr, long j2);

        void b(String str, HttpURLConnection httpURLConnection, byte[] bArr, long j2);
    }

    public enum c {
        GET,
        POST
    }

    public o0(Context context, c cVar, String str, String... strArr) throws MalformedURLException {
        if (context == null) {
            r81.d("null context");
            throw null;
        }
        if (str == null) {
            r81.d("null urlPattern");
            throw null;
        }
        if (cVar == null) {
            r81.d("Null type");
            throw null;
        }
        this.f23128b = UUID.randomUUID().toString();
        this.f23131f = cVar;
        this.f23130e = context.getApplicationContext();
        this.f23129c = new m0(str, q(), strArr);
        this.d = new HashMap();
        this.g = com.batch.android.n.w.a(this.f23130e).a(z.L0) != null;
    }

    private b0 E() {
        String strA;
        String strF = F();
        if (strF == null || (strA = com.batch.android.n.w.a(this.f23130e).a(strF)) == null) {
            return null;
        }
        return new b0(strA);
    }

    private boolean c(int i2) {
        return i2 <= 0 || i2 == 502 || i2 == 504 || i2 == 503 || i2 == 499;
    }

    private void j() {
        com.batch.android.n.w.a(this.f23130e).a(z.L0, Long.toString(System.currentTimeMillis()), true);
    }

    private int m() {
        String strA;
        String strA2 = A();
        return (strA2 == null || (strA = com.batch.android.n.w.a(this.f23130e).a(strA2)) == null) ? Integer.parseInt(com.batch.android.n.w.a(this.f23130e).a(z.N0)) : Integer.parseInt(strA);
    }

    private com.batch.android.e.c n() {
        String strA;
        String strP = p();
        if (strP == null || (strA = com.batch.android.n.w.a(this.f23130e).a(strP)) == null) {
            return null;
        }
        return this.g ? com.batch.android.e.d.a(com.batch.android.e.d.b.EAS_BASE64) : com.batch.android.e.d.a(Integer.parseInt(strA));
    }

    private m0.b q() {
        String strA;
        String strO = o();
        if (strO != null && (strA = com.batch.android.n.w.a(this.f23130e).a(strO)) != null) {
            try {
                m0.b bVarA = m0.b.a(Integer.parseInt(strA));
                if (bVarA != null) {
                    return bVarA;
                }
            } catch (Exception e2) {
                t.c(f23125i, "Error while getting cryptor mode for key : ".concat(strO), e2);
            }
        }
        return m0.b.ALL;
    }

    private int s() {
        String strA;
        String strC = C();
        return (strC == null || (strA = com.batch.android.n.w.a(this.f23130e).a(strC)) == null) ? Integer.parseInt(com.batch.android.n.w.a(this.f23130e).a(z.M0)) : Integer.parseInt(strA);
    }

    private p0 u() {
        String strA;
        String strV = v();
        if (strV == null || (strA = com.batch.android.n.w.a(this.f23130e).a(strV)) == null) {
            return null;
        }
        return this.g ? new p0(com.batch.android.e.d.b.EAS_BASE64) : new p0(Integer.parseInt(strA));
    }

    private p0 x() {
        String strA;
        String strY = y();
        if (strY == null || (strA = com.batch.android.n.w.a(this.f23130e).a(strY)) == null) {
            return null;
        }
        return this.g ? new p0(com.batch.android.e.d.b.EAS_BASE64) : new p0(Integer.parseInt(strA));
    }

    private int z() {
        String strA;
        String strB = B();
        return (strB == null || (strA = com.batch.android.n.w.a(this.f23130e).a(strB)) == null) ? Integer.parseInt(com.batch.android.n.w.a(this.f23130e).a(z.O0)) : Integer.parseInt(strA);
    }

    public abstract String A();

    public abstract String B();

    public abstract String C();

    public JSONObject D() throws d, JSONException {
        JSONObject jSONObjectA = g0.a(k());
        if (jSONObjectA == null) {
            a61.o("Unable to parse the response as json");
            return null;
        }
        if (!jSONObjectA.has("header") || jSONObjectA.isNull("header")) {
            a61.o("Missing header");
            return null;
        }
        if (!jSONObjectA.has("body")) {
            a61.o("Missing body");
            return null;
        }
        JSONObject jSONObject = jSONObjectA.getJSONObject("header");
        if (!jSONObject.has("status") || jSONObject.isNull("status")) {
            a61.o("Missing header status");
            return null;
        }
        String string = jSONObject.getString("status");
        if (!string.equals(Payload.RESPONSE_OK)) {
            if (string.equals("DESACTIVATED_APIKEY")) {
                throw new d(d.a.DEACTIVATED_API_KEY);
            }
            if (string.equals("INVALID_APIKEY")) {
                throw new d(d.a.INVALID_API_KEY);
            }
            throw new JSONException("Status not OK : ".concat(string));
        }
        if (jSONObject.has("ts") && !jSONObject.isNull("ts")) {
            long j2 = jSONObject.getLong("ts");
            String strA = com.batch.android.n.w.a(this.f23130e).a(z.Y0);
            if (strA != null) {
                long j3 = Long.parseLong(strA);
                if (j3 < j2) {
                    com.batch.android.n.w.a(this.f23130e).a(z.Y0, Long.toString(j2), true);
                } else {
                    j2 = j3;
                }
            } else {
                com.batch.android.n.w.a(this.f23130e).a(z.Y0, Long.toString(j2), true);
            }
            com.batch.android.n.b0.a().a(new Date(j2));
        }
        return jSONObjectA.getJSONObject("body");
    }

    public abstract String F();

    public String a(HttpURLConnection httpURLConnection, List<String> list) {
        StringBuilder sb = new StringBuilder();
        sb.append(httpURLConnection.getRequestMethod().toUpperCase(Locale.US));
        sb.append(' ');
        String path = httpURLConnection.getURL().getPath();
        if (TextUtils.isEmpty(path)) {
            sb.append("/");
        } else {
            sb.append(path);
        }
        String query = httpURLConnection.getURL().getQuery();
        if (query != null) {
            sb.append('?');
            sb.append(query);
        }
        ListIterator<String> listIterator = list.listIterator();
        while (listIterator.hasNext()) {
            String next = listIterator.next();
            if (TextUtils.isEmpty(httpURLConnection.getRequestProperty(next))) {
                listIterator.remove();
            } else {
                sb.append('\n');
                sb.append(next.toLowerCase(Locale.US));
                sb.append(": ");
                sb.append(httpURLConnection.getRequestProperty(next));
            }
        }
        return sb.toString();
    }

    public void b() {
        String str;
        this.d.put("Accept-Encoding", "gzip");
        this.d.put("X-Batch-Nonce", this.f23128b);
        if (this.g) {
            str = "1";
            this.d.put("X-Batch-Cipher-Downgraded", "1");
        } else {
            str = ContentTree.AUDIO_ID;
        }
        this.d.put("X-Batch-Accept-Cipher", str);
        if (this.f23131f == c.POST) {
            this.d.put("X-Batch-Content-Cipher", str);
        }
    }

    public void d() {
        Map<String, String> mapR = r();
        if (mapR == null || mapR.isEmpty()) {
            return;
        }
        this.d.putAll(mapR);
    }

    public void e() {
        Map<String, String> mapT = t();
        if (mapT == null || mapT.isEmpty()) {
            return;
        }
        for (String str : mapT.keySet()) {
            String str2 = mapT.get(str);
            if (str != null && str2 != null) {
                this.f23129c.a(str, str2);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0082  */
    public HttpURLConnection f() throws Exception {
        byte[] bArrA;
        URLConnection uRLConnectionOpenConnection = h().openConnection();
        Callback.C(uRLConnectionOpenConnection);
        HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
        if (httpURLConnection instanceof HttpsURLConnection) {
            ((HttpsURLConnection) httpURLConnection).setSSLSocketFactory(new j0());
        }
        httpURLConnection.setConnectTimeout(m());
        httpURLConnection.setReadTimeout(z());
        if (!this.d.isEmpty()) {
            for (String str : this.d.keySet()) {
                String str2 = this.d.get(str);
                if (str != null && str2 != null) {
                    httpURLConnection.setRequestProperty(str, str2);
                }
            }
        }
        httpURLConnection.setRequestProperty("Accept-Encoding", "gzip");
        if (this.f23131f == c.POST) {
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setRequestMethod("POST");
            com.batch.android.b1.g<?> gVarW = w();
            if (gVarW != null) {
                httpURLConnection.setRequestProperty("Content-Type", gVarW.i());
                bArrA = a(gVarW);
            } else {
                bArrA = null;
            }
        } else {
            bArrA = null;
        }
        a(httpURLConnection, bArrA);
        if (bArrA == null) {
            return httpURLConnection;
        }
        DataOutputStream dataOutputStream = new DataOutputStream(Callback.i(httpURLConnection));
        try {
            dataOutputStream.write(bArrA);
            dataOutputStream.close();
            return httpURLConnection;
        } catch (Throwable th) {
            try {
                dataOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public void g() {
        c();
        e();
        b();
        d();
    }

    public URL h() {
        g();
        return this.f23129c.a(E(), n());
    }

    public boolean i() {
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:111:0x0195  */
    /* JADX WARN: Code duplicated, block: B:145:0x01a9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:147:0x0186 A[EXC_TOP_SPLITTER, PHI: r3 r5 r6 r7 r8
      0x0186: PHI (r3v5 int) = (r3v10 int), (r3v1 int) binds: [B:105:0x0184, B:70:0x011c] A[DONT_GENERATE, DONT_INLINE]
      0x0186: PHI (r5v11 java.net.HttpURLConnection) = (r5v15 java.net.HttpURLConnection), (r5v16 java.net.HttpURLConnection) binds: [B:105:0x0184, B:70:0x011c] A[DONT_GENERATE, DONT_INLINE]
      0x0186: PHI (r6v12 int) = (r6v16 int), (r6v19 int) binds: [B:105:0x0184, B:70:0x011c] A[DONT_GENERATE, DONT_INLINE]
      0x0186: PHI (r7v8 java.io.InputStream) = (r7v11 java.io.InputStream), (r7v17 java.io.InputStream) binds: [B:105:0x0184, B:70:0x011c] A[DONT_GENERATE, DONT_INLINE]
      0x0186: PHI (r8v3 com.batch.android.e.o0$d) = (r8v7 com.batch.android.e.o0$d), (r8v10 com.batch.android.e.o0$d) binds: [B:105:0x0184, B:70:0x011c] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:159:0x01a4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:161:0x0180 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:173:0x019d A[SYNTHETIC] */
    public byte[] k() throws Throwable {
        d dVar;
        ByteArrayOutputStream byteArrayOutputStream;
        InputStream gZIPInputStream;
        Exception e2;
        if (!i() && this.f23132h.c(this.f23130e)) {
            throw new d(d.a.SDK_OPTED_OUT);
        }
        InputStream inputStream = null;
        int i2 = 0;
        int iK = -1;
        d dVar2 = null;
        HttpURLConnection httpURLConnectionF = null;
        do {
            if (i2 > 0) {
                a(dVar2);
            }
            com.batch.android.f.a aVarA = com.batch.android.n.h.a(new com.batch.android.f.c());
            try {
                try {
                    TrafficStats.setThreadStatsTag((int) Thread.currentThread().getId());
                    httpURLConnectionF = f();
                    Callback.b(httpURLConnectionF);
                    try {
                        try {
                            gZIPInputStream = new BufferedInputStream(Callback.h(httpURLConnectionF));
                        } catch (Exception e3) {
                            e = e3;
                            gZIPInputStream = null;
                            e2 = e;
                            byteArrayOutputStream = null;
                            try {
                                d dVar3 = new d(d.a.UNEXPECTED_ERROR, e2);
                                if (byteArrayOutputStream != null) {
                                    try {
                                        byteArrayOutputStream.close();
                                    } catch (Exception unused) {
                                    }
                                }
                                dVar = dVar3;
                                if (gZIPInputStream != null) {
                                    try {
                                        gZIPInputStream.close();
                                    } catch (Exception unused2) {
                                    }
                                }
                                try {
                                    httpURLConnectionF.disconnect();
                                } catch (Exception unused3) {
                                }
                                i2++;
                                dVar2 = dVar;
                                if (i2 <= s()) {
                                    throw dVar2;
                                }
                            } catch (Throwable th) {
                                th = th;
                                inputStream = gZIPInputStream;
                                gZIPInputStream = inputStream;
                                if (byteArrayOutputStream != null) {
                                    try {
                                        byteArrayOutputStream.close();
                                    } catch (Exception unused4) {
                                    }
                                }
                                if (gZIPInputStream != null) {
                                    try {
                                        gZIPInputStream.close();
                                    } catch (Exception unused5) {
                                    }
                                }
                                try {
                                    httpURLConnectionF.disconnect();
                                    throw th;
                                } catch (Exception unused6) {
                                    throw th;
                                }
                            }
                        }
                    } catch (SocketTimeoutException e4) {
                        d dVar4 = new d(d.a.NETWORK_ERROR, e4);
                        i2++;
                        try {
                            httpURLConnectionF.disconnect();
                        } catch (Exception unused7) {
                        }
                        iK = -1;
                        dVar2 = dVar4;
                    } catch (IOException unused8) {
                        gZIPInputStream = null;
                    }
                    try {
                        iK = Callback.k(httpURLConnectionF);
                        if (b(iK)) {
                            String host = h().getHost();
                            if (aVarA.b(host) && !aVarA.a(host)) {
                                aVarA.a();
                            }
                            aVarA.b();
                            String strE = Callback.e("Content-Encoding", httpURLConnectionF);
                            if (strE != null && strE.equals("gzip")) {
                                gZIPInputStream = new GZIPInputStream(gZIPInputStream);
                            }
                            byteArrayOutputStream = new ByteArrayOutputStream();
                            try {
                                byte[] bArr = new byte[8192];
                                while (true) {
                                    int i3 = gZIPInputStream.read(bArr, 0, 8192);
                                    if (i3 == -1) {
                                        break;
                                    }
                                    byteArrayOutputStream.write(bArr, 0, i3);
                                }
                                byteArrayOutputStream.flush();
                                byte[] byteArray = byteArrayOutputStream.toByteArray();
                                p0 p0VarX = x();
                                if (p0VarX != null && (byteArray = p0VarX.a(byteArray, this, httpURLConnectionF)) == null) {
                                    j();
                                    throw new Exception("Unable to read encrypted data");
                                }
                                try {
                                    byteArrayOutputStream.close();
                                } catch (Exception unused9) {
                                }
                                try {
                                    gZIPInputStream.close();
                                } catch (Exception unused10) {
                                }
                                try {
                                    httpURLConnectionF.disconnect();
                                } catch (Exception unused11) {
                                }
                                return byteArray;
                            } catch (Exception e5) {
                                e2 = e5;
                                d dVar5 = new d(d.a.UNEXPECTED_ERROR, e2);
                                if (byteArrayOutputStream != null) {
                                    byteArrayOutputStream.close();
                                }
                                dVar = dVar5;
                                if (gZIPInputStream != null) {
                                    gZIPInputStream.close();
                                }
                                httpURLConnectionF.disconnect();
                                i2++;
                                dVar2 = dVar;
                                if (i2 <= s()) {
                                    throw dVar2;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                if (byteArrayOutputStream != null) {
                                    byteArrayOutputStream.close();
                                }
                                if (gZIPInputStream != null) {
                                    gZIPInputStream.close();
                                }
                                httpURLConnectionF.disconnect();
                                throw th;
                            }
                        } else {
                            d.a aVarA2 = a(iK);
                            dVar = new d(aVarA2, new IOException("Response code : " + iK));
                            if (aVarA2 == d.a.TOO_MANY_REQUESTS) {
                                if (Global.f27308b.get()) {
                                    Callback.D(httpURLConnectionF);
                                }
                                dVar.a(httpURLConnectionF.getHeaderFieldInt("Retry-After", 60));
                            }
                            if (iK == f23126j) {
                                j();
                            }
                            if (gZIPInputStream != null) {
                                gZIPInputStream.close();
                            }
                            httpURLConnectionF.disconnect();
                            i2++;
                            dVar2 = dVar;
                            if (i2 <= s()) {
                                throw dVar2;
                            }
                        }
                    } catch (Exception e6) {
                        e = e6;
                        e2 = e;
                        byteArrayOutputStream = null;
                        d dVar6 = new d(d.a.UNEXPECTED_ERROR, e2);
                        if (byteArrayOutputStream != null) {
                            byteArrayOutputStream.close();
                        }
                        dVar = dVar6;
                        if (gZIPInputStream != null) {
                            gZIPInputStream.close();
                        }
                        httpURLConnectionF.disconnect();
                        i2++;
                        dVar2 = dVar;
                        if (i2 <= s()) {
                            throw dVar2;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        byteArrayOutputStream = null;
                        inputStream = gZIPInputStream;
                        gZIPInputStream = inputStream;
                        if (byteArrayOutputStream != null) {
                            byteArrayOutputStream.close();
                        }
                        if (gZIPInputStream != null) {
                            gZIPInputStream.close();
                        }
                        httpURLConnectionF.disconnect();
                        throw th;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    byteArrayOutputStream = null;
                    gZIPInputStream = inputStream;
                    if (byteArrayOutputStream != null) {
                        byteArrayOutputStream.close();
                    }
                    if (gZIPInputStream != null) {
                        gZIPInputStream.close();
                    }
                    httpURLConnectionF.disconnect();
                    throw th;
                }
            } catch (IOException e7) {
                dVar = new d(d.a.NETWORK_ERROR, e7);
                i2++;
                try {
                    if ((e7 instanceof UnknownHostException) || (e7 instanceof ConnectException)) {
                        String host2 = this.f23129c.a().getHost();
                        if (!aVarA.b(host2) || aVarA.a(host2)) {
                            aVarA.e();
                        } else {
                            aVarA.d();
                        }
                    }
                    try {
                        httpURLConnectionF.disconnect();
                    } catch (Exception unused12) {
                    }
                    iK = -1;
                } catch (Exception e8) {
                    e = e8;
                    iK = -1;
                    gZIPInputStream = null;
                    e2 = e;
                    byteArrayOutputStream = null;
                    d dVar7 = new d(d.a.UNEXPECTED_ERROR, e2);
                    if (byteArrayOutputStream != null) {
                        byteArrayOutputStream.close();
                    }
                    dVar = dVar7;
                    if (gZIPInputStream != null) {
                        gZIPInputStream.close();
                    }
                    httpURLConnectionF.disconnect();
                    i2++;
                }
            } catch (Exception | ExceptionInInitializerError e9) {
                throw new d(d.a.UNEXPECTED_ERROR, e9);
            }
        } while (c(iK));
        throw dVar2;
    }

    public JSONObject l() throws d, JSONException {
        JSONObject jSONObjectA = g0.a(k());
        if (jSONObjectA != null) {
            return jSONObjectA;
        }
        a61.o("Unable to parse the response as json");
        return null;
    }

    public abstract String o();

    public abstract String p();

    public Map<String, String> r() {
        return null;
    }

    public Map<String, String> t() {
        return null;
    }

    public abstract String v();

    public abstract com.batch.android.b1.g<?> w();

    public abstract String y();

    public static class d extends Throwable {
        private static final long serialVersionUID = 1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private a f23136b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f23137c;

        public enum a {
            NETWORK_ERROR,
            SERVER_ERROR,
            TOO_MANY_REQUESTS,
            NOT_FOUND_ERROR,
            INVALID_API_KEY,
            DEACTIVATED_API_KEY,
            UNEXPECTED_ERROR,
            FORBIDDEN,
            SDK_OPTED_OUT
        }

        public d(a aVar) {
            super("");
            this.f23137c = 0;
            if (aVar != null) {
                this.f23136b = aVar;
            } else {
                r81.d("Null reason");
                throw null;
            }
        }

        public FailReason a() {
            int i2 = a.f23133a[b().ordinal()];
            if (i2 == 1) {
                return FailReason.NETWORK_ERROR;
            }
            if (i2 != 4) {
                return i2 != 5 ? FailReason.UNEXPECTED_ERROR : FailReason.DEACTIVATED_API_KEY;
            }
            return FailReason.INVALID_API_KEY;
        }

        public a b() {
            return this.f23136b;
        }

        public int c() {
            return this.f23137c * 1000;
        }

        public d(a aVar, Throwable th) {
            super(th);
            this.f23137c = 0;
            if (aVar != null) {
                this.f23136b = aVar;
            } else {
                r81.d("Null reason");
                throw null;
            }
        }

        public void a(int i2) {
            this.f23137c = i2;
        }
    }

    public void c() {
    }

    public static boolean b(int i2) {
        return i2 >= 200 && i2 <= 399;
    }

    public void a(String str, String str2) {
        if (str == null || str.length() == 0 || str2 == null || str2.length() == 0) {
            return;
        }
        this.f23129c.a(str, str2);
    }

    public static String[] a(String[] strArr) {
        String[] strArr2 = new String[strArr.length + 1];
        AtomicReference atomicReference = new AtomicReference();
        com.batch.android.n.z.a().a(new rh(atomicReference, 7));
        strArr2[0] = atomicReference.toString();
        System.arraycopy(strArr, 0, strArr2, 1, strArr.length);
        return strArr2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(AtomicReference atomicReference, com.batch.android.j1.b bVar) {
        atomicReference.set(bVar.b());
    }

    private void a(d dVar) {
        q0 q0Var = q0.OTHER;
        if (dVar != null) {
            int i2 = a.f23133a[dVar.f23136b.ordinal()];
            if (i2 != 1) {
                if (i2 == 2) {
                    q0Var = q0.PARSING_ERROR;
                } else if (i2 == 3) {
                    q0Var = q0.SERVER_ERROR;
                }
            } else if (dVar.getCause() instanceof SocketTimeoutException) {
                q0Var = q0.NETWORK_TIMEOUT;
            } else if (dVar.getCause() instanceof SSLHandshakeException) {
                q0Var = q0.SSL_HANDSHAKE_FAILURE;
            }
        }
        if (dVar != null) {
            t.c(f23125i, "Sending retry signal: " + q0Var, dVar);
        }
        a(q0Var);
    }

    public void a(q0 q0Var) {
        t.c(f23125i, "Retry webservice, cause : " + q0Var);
    }

    public static d.a a(int i2) {
        if (b(i2)) {
            return d.a.UNEXPECTED_ERROR;
        }
        if (i2 == 429) {
            return d.a.TOO_MANY_REQUESTS;
        }
        if (i2 == 404) {
            return d.a.NOT_FOUND_ERROR;
        }
        if (i2 == 403) {
            return d.a.FORBIDDEN;
        }
        return d.a.SERVER_ERROR;
    }

    public static String a(String str) {
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (UnsupportedEncodingException unused) {
            md.k("UTF-8 encoding is not supported, can't build URL");
            return null;
        }
    }

    private byte[] a(com.batch.android.b1.g<?> gVar) throws Exception {
        byte[] bArrG = gVar.g();
        p0 p0VarU = u();
        return p0VarU != null ? p0VarU.a(bArrG, this) : bArrG;
    }

    public void a(HttpURLConnection httpURLConnection, byte[] bArr) {
        if (bArr != null) {
            httpURLConnection.setRequestProperty("Content-SHA1", com.batch.android.e.b.a(bArr));
        }
        ArrayList arrayList = new ArrayList(httpURLConnection.getRequestProperties().keySet());
        Collections.sort(arrayList);
        String strA = r0.a(a(httpURLConnection, arrayList));
        StringBuilder sb = new StringBuilder("SHA256");
        int size = arrayList.size();
        boolean z = true;
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            String str = (String) obj;
            if (!z) {
                sb.append(',');
            } else {
                sb.append(' ');
            }
            sb.append(str.toLowerCase(Locale.US));
            z = false;
        }
        sb.append(' ');
        sb.append(strA);
        httpURLConnection.setRequestProperty("X-Batch-Signature", sb.toString());
    }

    public static void a(b bVar) {
    }

    public static String a(Date date) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        return simpleDateFormat.format(date);
    }
}
