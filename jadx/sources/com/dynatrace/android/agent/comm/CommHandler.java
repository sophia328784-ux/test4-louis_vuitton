package com.dynatrace.android.agent.comm;

import com.dynatrace.android.agent.Global;
import com.dynatrace.android.agent.comm.ssl.LocalX509TrustManager;
import com.dynatrace.android.agent.conf.Configuration;
import com.linkplay.network.SecurityConstants;
import com.networkbench.agent.impl.background.NBSApplicationStateMonitor;
import com.networkbench.agent.impl.socket.k;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;

/* JADX INFO: loaded from: classes2.dex */
public class CommHandler {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f27320b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f27321c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Configuration f27322a;

    static {
        boolean z = Global.f27307a;
        f27320b = 10000;
        f27321c = NBSApplicationStateMonitor.ALTERNATEPERIOD;
    }

    public CommHandler(Configuration configuration) {
        this.f27322a = configuration;
    }

    public final HttpURLConnection a(URL url) throws NoSuchAlgorithmException, KeyManagementException {
        Configuration configuration = this.f27322a;
        String str = configuration.f27341c;
        boolean z = configuration.f27342e;
        if (!str.startsWith(SecurityConstants.SECURITY_HTTPS)) {
            return (HttpURLConnection) url.openConnection();
        }
        HttpsURLConnection httpsURLConnection = (HttpsURLConnection) url.openConnection();
        if (!z) {
            SSLContext sSLContext = SSLContext.getInstance(k.f38194b);
            sSLContext.init(null, new TrustManager[]{new LocalX509TrustManager(null, !z)}, new SecureRandom());
            httpsURLConnection.setSSLSocketFactory(sSLContext.getSocketFactory());
        }
        return httpsURLConnection;
    }
}
