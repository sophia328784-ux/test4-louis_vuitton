package androidx.media3.datasource;

import android.net.TrafficStats;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import com.dynatrace.android.agent.Global;
import com.dynatrace.android.callback.Callback;
import com.google.common.collect.ForwardingMap;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Maps;
import com.google.common.collect.Sets;
import com.google.common.io.ByteStreams;
import com.linkplay.network.SecurityConstants;
import com.networkbench.agent.impl.performance.coulometry.a;
import com.networkbench.agent.impl.util.r;
import defpackage.pq0;
import defpackage.r81;
import defpackage.tr;
import defpackage.us;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.NoRouteToHostException;
import java.net.URL;
import java.net.URLConnection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.GZIPInputStream;

/* JADX INFO: loaded from: classes.dex */
public class DefaultHttpDataSource extends BaseDataSource implements HttpDataSource {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f14415e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f14416f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f14417h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final HttpDataSource.RequestProperties f14418i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final HttpDataSource.RequestProperties f14419j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public DataSpec f14420k;
    public HttpURLConnection l;
    public InputStream m;
    public boolean n;
    public int o;
    public long p;
    public long q;

    public static final class Factory implements HttpDataSource.Factory {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f14422b;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f14424e;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final HttpDataSource.RequestProperties f14421a = new HttpDataSource.RequestProperties();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f14423c = 8000;
        public int d = 8000;

        @Override // androidx.media3.datasource.HttpDataSource.Factory
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public final DefaultHttpDataSource b() {
            return new DefaultHttpDataSource(this.f14422b, this.f14423c, this.d, this.f14424e, this.f14421a);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public static class NullFilteringHeadersMap extends ForwardingMap<String, List<String>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Map f14425b;

        public NullFilteringHeadersMap(Map<String, List<String>> map) {
            this.f14425b = map;
        }

        @Override // com.google.common.collect.ForwardingObject
        public final Object c() {
            return this.f14425b;
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        public final boolean containsKey(Object obj) {
            return obj != null && super.containsKey(obj);
        }

        @Override // com.google.common.collect.ForwardingMap
        public final Map d() {
            return this.f14425b;
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        public final Set entrySet() {
            return Sets.b(super.entrySet(), new us(0));
        }

        @Override // java.util.Map
        public final boolean equals(Object obj) {
            return obj != null && Maps.a(this, obj);
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        public final Object get(Object obj) {
            if (obj == null) {
                return null;
            }
            return (List) super.get(obj);
        }

        @Override // java.util.Map
        public final int hashCode() {
            return Sets.c(entrySet());
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        public final boolean isEmpty() {
            return super.isEmpty() || (super.size() == 1 && super.containsKey(null));
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        public final Set keySet() {
            return Sets.b(super.keySet(), new us(1));
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        public final int size() {
            return super.size() - (super.containsKey(null) ? 1 : 0);
        }
    }

    public DefaultHttpDataSource(String str, int i2, int i3, boolean z, HttpDataSource.RequestProperties requestProperties) {
        super(true);
        this.f14417h = str;
        this.f14416f = i2;
        this.g = i3;
        this.f14415e = z;
        this.f14418i = requestProperties;
        this.f14419j = new HttpDataSource.RequestProperties();
    }

    /* JADX WARN: Code duplicated, block: B:46:0x011e  */
    /* JADX WARN: Code duplicated, block: B:77:0x017f  */
    @Override // androidx.media3.datasource.DataSource
    public final long a(DataSpec dataSpec) throws HttpDataSource.HttpDataSourceException {
        byte[] bArrB;
        long j2;
        long jMax;
        long j3;
        this.f14420k = dataSpec;
        this.q = 0L;
        this.p = 0L;
        q(dataSpec);
        try {
            Thread threadCurrentThread = Thread.currentThread();
            TrafficStats.setThreadStatsTag((int) (Build.VERSION.SDK_INT < 36 ? threadCurrentThread.getId() : threadCurrentThread.threadId()));
            HttpURLConnection httpURLConnectionU = u(dataSpec);
            long j4 = dataSpec.g;
            long j5 = dataSpec.f14394f;
            this.l = httpURLConnectionU;
            this.o = Callback.k(httpURLConnectionU);
            String strL = Callback.l(httpURLConnectionU);
            int i2 = this.o;
            if (i2 < 200 || i2 > 299) {
                Map mapF = Callback.f(httpURLConnectionU);
                if (this.o == 416) {
                    String strE = Callback.e("Content-Range", httpURLConnectionU);
                    Pattern pattern = HttpUtil.f14433a;
                    if (TextUtils.isEmpty(strE)) {
                        j2 = -1;
                    } else {
                        Matcher matcher = HttpUtil.f14434b.matcher(strE);
                        if (matcher.matches()) {
                            String strGroup = matcher.group(1);
                            strGroup.getClass();
                            j2 = Long.parseLong(strGroup);
                        } else {
                            j2 = -1;
                        }
                    }
                    if (j5 == j2) {
                        this.n = true;
                        r(dataSpec);
                        if (j4 != -1) {
                            return j4;
                        }
                        return 0L;
                    }
                }
                InputStream inputStreamD = Callback.d(httpURLConnectionU);
                try {
                    bArrB = inputStreamD != null ? ByteStreams.b(inputStreamD) : Util.f14243b;
                } catch (IOException unused) {
                    bArrB = Util.f14243b;
                }
                byte[] bArr = bArrB;
                s();
                throw new HttpDataSource.InvalidResponseCodeException(this.o, strL, this.o == 416 ? new DataSourceException(2008) : null, mapF, dataSpec, bArr);
            }
            if (Global.f27308b.get()) {
                Callback.D(httpURLConnectionU);
            }
            httpURLConnectionU.getContentType();
            if (this.o != 200 || j5 == 0) {
                j5 = 0;
            }
            boolean zEqualsIgnoreCase = "gzip".equalsIgnoreCase(Callback.e("Content-Encoding", httpURLConnectionU));
            if (zEqualsIgnoreCase || j4 != -1) {
                this.p = j4;
            } else {
                String strE2 = Callback.e("Content-Length", httpURLConnectionU);
                String strE3 = Callback.e("Content-Range", httpURLConnectionU);
                Pattern pattern2 = HttpUtil.f14433a;
                if (TextUtils.isEmpty(strE2)) {
                    jMax = -1;
                } else {
                    try {
                        jMax = Long.parseLong(strE2);
                    } catch (NumberFormatException unused2) {
                        Log.d("Unexpected Content-Length [" + strE2 + "]");
                        jMax = -1;
                    }
                }
                if (TextUtils.isEmpty(strE3)) {
                    j3 = -1;
                } else {
                    Matcher matcher2 = HttpUtil.f14433a.matcher(strE3);
                    if (matcher2.matches()) {
                        j3 = -1;
                        try {
                            String strGroup2 = matcher2.group(2);
                            strGroup2.getClass();
                            long j6 = Long.parseLong(strGroup2);
                            String strGroup3 = matcher2.group(1);
                            strGroup3.getClass();
                            long j7 = (j6 - Long.parseLong(strGroup3)) + 1;
                            if (jMax < 0) {
                                jMax = j7;
                            } else if (jMax != j7) {
                                Log.g("Inconsistent headers [" + strE2 + "] [" + strE3 + "]");
                                jMax = Math.max(jMax, j7);
                            }
                        } catch (NumberFormatException unused3) {
                            Log.d("Unexpected Content-Range [" + strE3 + "]");
                        }
                    } else {
                        j3 = -1;
                    }
                }
                this.p = jMax != j3 ? jMax - j5 : j3;
            }
            try {
                this.m = Callback.g(httpURLConnectionU);
                if (zEqualsIgnoreCase) {
                    this.m = new GZIPInputStream(this.m);
                }
                this.n = true;
                r(dataSpec);
                try {
                    w(j5, dataSpec);
                    return this.p;
                } catch (IOException e2) {
                    s();
                    if (e2 instanceof HttpDataSource.HttpDataSourceException) {
                        throw ((HttpDataSource.HttpDataSourceException) e2);
                    }
                    throw new HttpDataSource.HttpDataSourceException(e2, dataSpec, r.E, 1);
                }
            } catch (IOException e3) {
                s();
                throw new HttpDataSource.HttpDataSourceException(e3, dataSpec, r.E, 1);
            }
        } catch (IOException e4) {
            s();
            throw HttpDataSource.HttpDataSourceException.a(e4, dataSpec, 1);
        }
    }

    @Override // androidx.media3.datasource.DataSource
    public final void close() {
        try {
            InputStream inputStream = this.m;
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e2) {
                    DataSpec dataSpec = this.f14420k;
                    String str = Util.f14242a;
                    throw new HttpDataSource.HttpDataSourceException(e2, dataSpec, r.E, 3);
                }
            }
            this.m = null;
            s();
            if (this.n) {
                this.n = false;
                p();
            }
            this.l = null;
            this.f14420k = null;
            TrafficStats.clearThreadStatsTag();
        } catch (Throwable th) {
            this.m = null;
            s();
            if (this.n) {
                this.n = false;
                p();
            }
            this.l = null;
            this.f14420k = null;
            TrafficStats.clearThreadStatsTag();
            throw th;
        }
    }

    @Override // androidx.media3.datasource.DataSource
    public final Map f() {
        HttpURLConnection httpURLConnection = this.l;
        return httpURLConnection == null ? ImmutableMap.h() : new NullFilteringHeadersMap(Callback.f(httpURLConnection));
    }

    @Override // androidx.media3.datasource.DataSource
    public final Uri getUri() {
        HttpURLConnection httpURLConnection = this.l;
        if (httpURLConnection != null) {
            return Uri.parse(httpURLConnection.getURL().toString());
        }
        DataSpec dataSpec = this.f14420k;
        if (dataSpec != null) {
            return dataSpec.f14390a;
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0028 A[Catch: IOException -> 0x0032, TRY_LEAVE, TryCatch #0 {IOException -> 0x0032, blocks: (B:5:0x0004, B:7:0x000d, B:10:0x0017, B:11:0x001d, B:14:0x0028), top: B:19:0x0004 }] */
    @Override // androidx.media3.common.DataReader
    public final int read(byte[] bArr, int i2, int i3) throws HttpDataSource.HttpDataSourceException {
        int i4;
        if (i3 == 0) {
            return 0;
        }
        try {
            long j2 = this.p;
            if (j2 != -1) {
                long j3 = j2 - this.q;
                if (j3 != 0) {
                    i3 = (int) Math.min(i3, j3);
                    InputStream inputStream = this.m;
                    String str = Util.f14242a;
                    i4 = inputStream.read(bArr, i2, i3);
                    if (i4 != -1) {
                        this.q += (long) i4;
                        o(i4);
                        return i4;
                    }
                }
            } else {
                InputStream inputStream2 = this.m;
                String str2 = Util.f14242a;
                i4 = inputStream2.read(bArr, i2, i3);
                if (i4 != -1) {
                    this.q += (long) i4;
                    o(i4);
                    return i4;
                }
            }
            return -1;
        } catch (IOException e2) {
            DataSpec dataSpec = this.f14420k;
            String str3 = Util.f14242a;
            throw HttpDataSource.HttpDataSourceException.a(e2, dataSpec, 2);
        }
    }

    public final void s() {
        HttpURLConnection httpURLConnection = this.l;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e2) {
                Log.e("Unexpected error while disconnecting", e2);
            }
        }
    }

    public final URL t(URL url, String str, DataSpec dataSpec) throws HttpDataSource.HttpDataSourceException {
        if (str == null) {
            throw new HttpDataSource.HttpDataSourceException("Null location redirect", dataSpec, 2001, 1);
        }
        try {
            URL url2 = new URL(url, str);
            String protocol = url2.getProtocol();
            if (!SecurityConstants.SECURITY_HTTPS.equals(protocol) && !SecurityConstants.SECURITY_NONE.equals(protocol)) {
                throw new HttpDataSource.HttpDataSourceException(tr.g("Unsupported protocol redirect: ", protocol), dataSpec, 2001, 1);
            }
            if (this.f14415e || protocol.equals(url.getProtocol())) {
                return url2;
            }
            throw new HttpDataSource.HttpDataSourceException("Disallowed cross-protocol redirect (" + url.getProtocol() + " to " + protocol + ")", dataSpec, 2001, 1);
        } catch (MalformedURLException e2) {
            throw new HttpDataSource.HttpDataSourceException(e2, dataSpec, 2001, 1);
        }
    }

    public final HttpURLConnection u(DataSpec dataSpec) throws IOException {
        URL url = new URL(dataSpec.f14390a.toString());
        int i2 = dataSpec.f14392c;
        byte[] bArr = dataSpec.d;
        long j2 = dataSpec.f14394f;
        long j3 = dataSpec.g;
        int i3 = 1;
        int i4 = 0;
        boolean z = (dataSpec.f14396i & 1) == 1;
        if (!this.f14415e) {
            return v(url, i2, bArr, j2, j3, z, true, dataSpec.f14393e);
        }
        while (true) {
            int i5 = i4 + 1;
            if (i4 > 20) {
                throw new HttpDataSource.HttpDataSourceException(new NoRouteToHostException(pq0.k(i5, "Too many redirects: ")), dataSpec, 2001, 1);
            }
            HttpURLConnection httpURLConnectionV = v(url, i2, bArr, j2, j3, z, false, dataSpec.f14393e);
            int iK = Callback.k(httpURLConnectionV);
            String strE = Callback.e(a.f37790a, httpURLConnectionV);
            if ((i2 == i3 || i2 == 3) && (iK == 300 || iK == 301 || iK == 302 || iK == 303 || iK == 307 || iK == 308)) {
                httpURLConnectionV.disconnect();
                url = t(url, strE, dataSpec);
            } else {
                if (i2 != 2 || (iK != 300 && iK != 301 && iK != 302 && iK != 303)) {
                    return httpURLConnectionV;
                }
                httpURLConnectionV.disconnect();
                url = t(url, strE, dataSpec);
                bArr = null;
                i2 = 1;
            }
            i4 = i5;
            i3 = 1;
        }
    }

    public final HttpURLConnection v(URL url, int i2, byte[] bArr, long j2, long j3, boolean z, boolean z2, Map map) throws IOException {
        String string;
        String str;
        URLConnection uRLConnectionOpenConnection = url.openConnection();
        Callback.C(uRLConnectionOpenConnection);
        HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
        httpURLConnection.setConnectTimeout(this.f14416f);
        httpURLConnection.setReadTimeout(this.g);
        HashMap map2 = new HashMap();
        HttpDataSource.RequestProperties requestProperties = this.f14418i;
        if (requestProperties != null) {
            map2.putAll(requestProperties.a());
        }
        map2.putAll(this.f14419j.a());
        map2.putAll(map);
        for (Map.Entry entry : map2.entrySet()) {
            httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
        Pattern pattern = HttpUtil.f14433a;
        if (j2 == 0 && j3 == -1) {
            string = null;
        } else {
            StringBuilder sbQ = pq0.q(j2, "bytes=", "-");
            if (j3 != -1) {
                sbQ.append((j2 + j3) - 1);
            }
            string = sbQ.toString();
        }
        if (string != null) {
            httpURLConnection.setRequestProperty("Range", string);
        }
        String str2 = this.f14417h;
        if (str2 != null) {
            httpURLConnection.setRequestProperty("User-Agent", str2);
        }
        httpURLConnection.setRequestProperty("Accept-Encoding", z ? "gzip" : "identity");
        httpURLConnection.setInstanceFollowRedirects(z2);
        httpURLConnection.setDoOutput(bArr != null);
        int i3 = DataSpec.f14389j;
        if (i2 == 1) {
            str = "GET";
        } else if (i2 == 2) {
            str = "POST";
        } else {
            if (i2 != 3) {
                r81.b();
                return null;
            }
            str = "HEAD";
        }
        httpURLConnection.setRequestMethod(str);
        if (bArr == null) {
            Callback.a(httpURLConnection);
            return httpURLConnection;
        }
        httpURLConnection.setFixedLengthStreamingMode(bArr.length);
        Callback.a(httpURLConnection);
        OutputStream outputStreamI = Callback.i(httpURLConnection);
        outputStreamI.write(bArr);
        outputStreamI.close();
        return httpURLConnection;
    }

    public final void w(long j2, DataSpec dataSpec) throws IOException {
        if (j2 == 0) {
            return;
        }
        byte[] bArr = new byte[4096];
        while (j2 > 0) {
            int iMin = (int) Math.min(j2, 4096L);
            InputStream inputStream = this.m;
            String str = Util.f14242a;
            int i2 = inputStream.read(bArr, 0, iMin);
            if (Thread.currentThread().isInterrupted()) {
                throw new HttpDataSource.HttpDataSourceException(new InterruptedIOException(), dataSpec, r.E, 1);
            }
            if (i2 == -1) {
                throw new HttpDataSource.HttpDataSourceException(dataSpec, 2008, 1);
            }
            j2 -= (long) i2;
            o(i2);
        }
    }
}
