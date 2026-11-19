package com.bumptech.glide.load.data;

import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.HttpException;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.util.ContentLengthInputStream;
import com.bumptech.glide.util.LogTime;
import com.dynatrace.android.agent.Global;
import com.dynatrace.android.callback.Callback;
import com.networkbench.agent.impl.performance.coulometry.a;
import defpackage.tr;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLConnection;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class HttpUrlFetcher implements DataFetcher<InputStream> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final GlideUrl f24412b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f24413c;
    public HttpURLConnection d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public InputStream f24414e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile boolean f24415f;

    public static class DefaultHttpUrlConnectionFactory implements HttpUrlConnectionFactory {
    }

    public interface HttpUrlConnectionFactory {
    }

    public HttpUrlFetcher(GlideUrl glideUrl, int i2) {
        this.f24412b = glideUrl;
        this.f24413c = i2;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public final Class a() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public final void b() {
        InputStream inputStream = this.f24414e;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
        HttpURLConnection httpURLConnection = this.d;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
        this.d = null;
    }

    public final InputStream c(URL url, int i2, URL url2, Map map) throws HttpException {
        int iK;
        int iK2 = -1;
        if (i2 >= 5) {
            throw new HttpException("Too many (> 5) redirects!", -1);
        }
        if (url2 != null) {
            try {
                if (url.toURI().equals(url2.toURI())) {
                    throw new HttpException("In re-direct loop", -1);
                }
            } catch (URISyntaxException unused) {
            }
        }
        int i3 = this.f24413c;
        try {
            URLConnection uRLConnectionOpenConnection = url.openConnection();
            Callback.C(uRLConnectionOpenConnection);
            HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
            for (Map.Entry entry : map.entrySet()) {
                httpURLConnection.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
            }
            httpURLConnection.setConnectTimeout(i3);
            httpURLConnection.setReadTimeout(i3);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setDoInput(true);
            httpURLConnection.setInstanceFollowRedirects(false);
            this.d = httpURLConnection;
            try {
                Callback.a(httpURLConnection);
                this.f24414e = Callback.g(this.d);
                if (this.f24415f) {
                    return null;
                }
                try {
                    iK = Callback.k(this.d);
                } catch (IOException unused2) {
                    Log.isLoggable("HttpUrlFetcher", 3);
                    iK = -1;
                }
                int i4 = iK / 100;
                if (i4 != 2) {
                    if (i4 != 3) {
                        if (iK == -1) {
                            throw new HttpException(iK);
                        }
                        try {
                            throw new HttpException(Callback.l(this.d), iK);
                        } catch (IOException e2) {
                            throw new HttpException("Failed to get a response message", iK, e2);
                        }
                    }
                    String strE = Callback.e(a.f37790a, this.d);
                    if (TextUtils.isEmpty(strE)) {
                        throw new HttpException("Received empty or null redirect url", iK);
                    }
                    try {
                        URL url3 = new URL(url, strE);
                        b();
                        return c(url3, i2 + 1, url, map);
                    } catch (MalformedURLException e3) {
                        throw new HttpException(tr.g("Bad redirect url: ", strE), iK, e3);
                    }
                }
                HttpURLConnection httpURLConnection2 = this.d;
                try {
                    AtomicBoolean atomicBoolean = Global.f27308b;
                    if (atomicBoolean.get() && httpURLConnection2 != null) {
                        Callback.D(httpURLConnection2);
                    }
                    if (TextUtils.isEmpty(httpURLConnection2.getContentEncoding())) {
                        this.f24414e = new ContentLengthInputStream(Callback.g(httpURLConnection2), Callback.c(httpURLConnection2));
                    } else {
                        if (Log.isLoggable("HttpUrlFetcher", 3)) {
                            if (atomicBoolean.get()) {
                                Callback.D(httpURLConnection2);
                            }
                            httpURLConnection2.getContentEncoding();
                        }
                        this.f24414e = Callback.g(httpURLConnection2);
                    }
                    return this.f24414e;
                } catch (IOException e4) {
                    try {
                        iK2 = Callback.k(httpURLConnection2);
                    } catch (IOException unused3) {
                        Log.isLoggable("HttpUrlFetcher", 3);
                    }
                    throw new HttpException("Failed to obtain InputStream", iK2, e4);
                }
            } catch (IOException e5) {
                try {
                    iK2 = Callback.k(this.d);
                } catch (IOException unused4) {
                    Log.isLoggable("HttpUrlFetcher", 3);
                }
                throw new HttpException("Failed to connect or obtain data", iK2, e5);
            }
        } catch (IOException e6) {
            throw new HttpException("URL.openConnection threw", 0, e6);
        }
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public final void cancel() {
        this.f24415f = true;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public final DataSource d() {
        return DataSource.REMOTE;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public final void e(Priority priority, DataFetcher.DataCallback dataCallback) {
        GlideUrl glideUrl = this.f24412b;
        int i2 = LogTime.f24987a;
        SystemClock.elapsedRealtimeNanos();
        try {
            dataCallback.f(c(glideUrl.d(), 0, null, glideUrl.f24656b.a()));
        } catch (IOException e2) {
            Log.isLoggable("HttpUrlFetcher", 3);
            dataCallback.c(e2);
        } finally {
            if (Log.isLoggable("HttpUrlFetcher", 2)) {
                SystemClock.elapsedRealtimeNanos();
            }
        }
    }
}
