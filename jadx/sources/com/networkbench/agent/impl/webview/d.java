package com.networkbench.agent.impl.webview;

import com.dynatrace.android.callback.Callback;
import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.harvest.InitUrlConnection;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.p;
import defpackage.z81;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class d implements Runnable {
    private boolean a(String str, c cVar) throws IOException {
        InputStream inputStream;
        com.networkbench.agent.impl.harvest.d.c bVar = new com.networkbench.agent.impl.harvest.d.b();
        boolean z = true;
        OutputStream outputStream = null;
        InputStream inputStreamG = null;
        try {
            HttpURLConnection httpURLConnectionConfigureUrlConnectionOfWebView = new InitUrlConnection(null, null, null).configureUrlConnectionOfWebView(cVar.f38495a);
            try {
                if (httpURLConnectionConfigureUrlConnectionOfWebView == null) {
                    return false;
                }
                a(httpURLConnectionConfigureUrlConnectionOfWebView, cVar.d);
                OutputStream outputStreamI = Callback.i(httpURLConnectionConfigureUrlConnectionOfWebView);
                try {
                    a(outputStreamI, cVar.f38497c.getBytes());
                    inputStreamG = Callback.g(httpURLConnectionConfigureUrlConnectionOfWebView);
                    com.networkbench.agent.impl.harvest.a.c cVar2 = new com.networkbench.agent.impl.harvest.a.c(cVar.f38495a, true);
                    String strA = ak.a(inputStreamG);
                    com.networkbench.agent.impl.c.g.d("NBSBrowserRunnable slurp :" + strA);
                    bVar = cVar2.a(strA, bVar);
                    bVar.a(Callback.k(httpURLConnectionConfigureUrlConnectionOfWebView));
                    if (a(bVar)) {
                        com.networkbench.agent.impl.m.b.a().a(str);
                    } else {
                        z = false;
                    }
                    if (outputStreamI != null) {
                        outputStreamI.close();
                    }
                    if (inputStreamG != null) {
                        inputStreamG.close();
                    }
                    return z;
                } catch (Throwable unused) {
                    inputStream = inputStreamG;
                    outputStream = outputStreamI;
                }
                bVar.c("error");
                bVar.b(1);
                return false;
            } finally {
                if (outputStream != null) {
                    outputStream.close();
                }
                if (inputStream != null) {
                    inputStream.close();
                }
            }
        } catch (Throwable unused2) {
            inputStream = null;
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (com.networkbench.agent.impl.m.b.a().f37526b.get()) {
                return;
            }
            try {
                com.networkbench.agent.impl.m.b.a().f37526b.set(true);
                Map<String, ?> mapB = com.networkbench.agent.impl.m.b.a().b();
                for (String str : mapB.keySet()) {
                    String strValueOf = String.valueOf(mapB.get(str));
                    try {
                        c cVar = new c(p.c(strValueOf));
                        com.networkbench.agent.impl.c.j.b("NBSBrowserRunnable url: " + cVar.f38495a + ", body: " + cVar.f38497c);
                        if (!a(p.c(str), cVar)) {
                            com.networkbench.agent.impl.m.b.a().f37526b.set(false);
                            return;
                        }
                    } catch (Throwable unused) {
                        com.networkbench.agent.impl.m.b.a().a(strValueOf);
                    }
                }
            } catch (Throwable unused2) {
            }
            com.networkbench.agent.impl.m.b.a().f37526b.set(false);
        } catch (Throwable th) {
            z81.k(new StringBuilder("NBSBrowserRunnable   has an error : "), th);
        }
    }

    private boolean a(com.networkbench.agent.impl.harvest.d.c cVar) {
        return (cVar == null || cVar.g() || !cVar.d()) ? false : true;
    }

    private void a(OutputStream outputStream, byte[] bArr) throws Exception {
        outputStream.write(bArr);
        outputStream.flush();
        outputStream.close();
    }

    private void a(HttpURLConnection httpURLConnection, Map<String, ?> map) {
        try {
            for (String str : map.keySet()) {
                String strValueOf = String.valueOf(map.get(str));
                httpURLConnection.addRequestProperty(str, strValueOf);
                com.networkbench.agent.impl.c.g.d("setHttpURLConnectionHeader  key : " + str);
                com.networkbench.agent.impl.c.g.d("setHttpURLConnectionHeader  value : " + strValueOf);
            }
            httpURLConnection.addRequestProperty("User-Agent", NBSAgent.getDeviceInformation().initUserHeaderValue());
        } catch (Throwable unused) {
        }
    }
}
