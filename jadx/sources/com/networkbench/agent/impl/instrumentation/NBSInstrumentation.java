package com.networkbench.agent.impl.instrumentation;

import com.dynatrace.android.callback.Callback;
import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.harvest.Harvest;
import java.net.HttpURLConnection;
import java.net.URLConnection;
import javax.net.ssl.HttpsURLConnection;

/* JADX INFO: loaded from: classes2.dex */
public final class NBSInstrumentation {
    private static final e log = f.a();

    private static URLConnection connectionWrapper(URLConnection uRLConnection) {
        if (uRLConnection != null && Harvest.isHttp_network_enabled()) {
            if (uRLConnection instanceof HttpsURLConnection) {
                NBSHttpsURLConnectionExtension nBSHttpsURLConnectionExtension = new NBSHttpsURLConnectionExtension((HttpsURLConnection) uRLConnection);
                Callback.m(nBSHttpsURLConnectionExtension);
                return nBSHttpsURLConnectionExtension;
            }
            if (uRLConnection instanceof HttpURLConnection) {
                NBSHttpURLConnectionExtension nBSHttpURLConnectionExtension = new NBSHttpURLConnectionExtension((HttpURLConnection) uRLConnection);
                Callback.m(nBSHttpURLConnectionExtension);
                return nBSHttpURLConnectionExtension;
            }
        }
        return uRLConnection;
    }

    public static URLConnection openConnection(URLConnection uRLConnection) {
        try {
            g.l("URLConnection openConnection gather  begin !!");
            return connectionWrapper(uRLConnection);
        } catch (Throwable th) {
            log.e("NBSInstrumentation openConnection() has an error : " + th);
            return uRLConnection;
        }
    }

    public static URLConnection openConnectionWithProxy(URLConnection uRLConnection) {
        try {
            g.l("URLConnection openConnectionWithProxy gather  begin !!");
            return connectionWrapper(uRLConnection);
        } catch (Throwable th) {
            log.e("NBSInstrumentation openConnectionWithProxy() has an error : " + th);
            return uRLConnection;
        }
    }
}
