package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import com.appsflyer.internal.components.network.http.exceptions.HttpException;
import com.appsflyer.sdk_base.logger.LogTag;
import com.dynatrace.android.callback.Callback;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import com.networkbench.agent.impl.harvest.InitUrlConnection;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class AFd1mSDK {
    private final int AFKeystoreWrapper;

    public AFd1mSDK(int i2) {
        this.AFKeystoreWrapper = i2;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x006c  */
    /* JADX WARN: Code duplicated, block: B:35:0x0071  */
    /* JADX WARN: Code duplicated, block: B:47:? A[SYNTHETIC] */
    private static String AFLogger(HttpURLConnection httpURLConnection) throws Throwable {
        Throwable th;
        BufferedReader bufferedReader;
        InputStream inputStreamD;
        InputStreamReader inputStreamReader = null;
        try {
            try {
                inputStreamD = Callback.h(httpURLConnection);
            } catch (Exception e2) {
                inputStreamD = Callback.d(httpURLConnection);
                AFLogger.INSTANCE.e(LogTag.HTTP_CLIENT, e2.getMessage() != null ? e2.getMessage() : "", e2, false, false, false, false);
            }
            if (inputStreamD == null) {
                return "";
            }
            StringBuilder sb = new StringBuilder();
            InputStreamReader inputStreamReader2 = new InputStreamReader(inputStreamD, Charset.defaultCharset());
            try {
                BufferedReader bufferedReader2 = new BufferedReader(inputStreamReader2);
                boolean z = true;
                while (true) {
                    try {
                        String line = bufferedReader2.readLine();
                        if (line == null) {
                            String string = sb.toString();
                            inputStreamReader2.close();
                            bufferedReader2.close();
                            return string;
                        }
                        if (!z) {
                            sb.append('\n');
                        }
                        sb.append(line);
                        z = false;
                    } catch (Throwable th2) {
                        bufferedReader = bufferedReader2;
                        th = th2;
                        inputStreamReader = inputStreamReader2;
                        if (inputStreamReader != null) {
                            inputStreamReader.close();
                        }
                        if (bufferedReader != null) {
                            throw th;
                        }
                        bufferedReader.close();
                        throw th;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                bufferedReader = null;
            }
        } catch (Throwable th4) {
            th = th4;
            bufferedReader = null;
        }
        if (inputStreamReader != null) {
            inputStreamReader.close();
        }
        if (bufferedReader != null) {
            throw th;
        }
        bufferedReader.close();
        throw th;
    }

    public final AFd1fSDK<String> registerClient(AFd1oSDK aFd1oSDK) throws IOException {
        Throwable th;
        long jCurrentTimeMillis = System.currentTimeMillis();
        HttpURLConnection httpURLConnection = null;
        BufferedOutputStream bufferedOutputStream = null;
        try {
            byte[] bArr = aFd1oSDK.unregisterClient;
            StringBuilder sb = new StringBuilder();
            sb.append(aFd1oSDK.AFKeystoreWrapper);
            sb.append(":");
            sb.append(aFd1oSDK.d);
            StringBuilder sb2 = new StringBuilder(sb.toString());
            byte[] bArr2 = aFd1oSDK.unregisterClient;
            if (aFd1oSDK.f22616e && bArr2 != null) {
                String str = aFd1oSDK.registerClient ? "<encrypted>" : new String(bArr2, Charset.defaultCharset());
                sb2.append("\n payload: ");
                sb2.append(str);
            }
            for (Map.Entry<String, String> entry : aFd1oSDK.AFLogger.entrySet()) {
                sb2.append("\n ");
                sb2.append(entry.getKey());
                sb2.append(": ");
                sb2.append(entry.getValue());
            }
            StringBuilder sb3 = new StringBuilder("[");
            sb3.append(aFd1oSDK.hashCode());
            sb3.append("] ");
            sb3.append((Object) sb2);
            AFLogger.INSTANCE.d(LogTag.HTTP_CLIENT, sb3.toString());
            URLConnection uRLConnectionOpenConnection = new URL(aFd1oSDK.d).openConnection();
            Callback.C(uRLConnectionOpenConnection);
            HttpURLConnection httpURLConnection2 = (HttpURLConnection) uRLConnectionOpenConnection;
            try {
                httpURLConnection2.setRequestMethod(aFd1oSDK.AFKeystoreWrapper);
                if (aFd1oSDK.force) {
                    httpURLConnection2.setUseCaches(false);
                }
                if (!aFd1oSDK.w) {
                    httpURLConnection2.setInstanceFollowRedirects(false);
                }
                int i2 = this.AFKeystoreWrapper;
                int i3 = aFd1oSDK.v;
                if (i3 != -1) {
                    i2 = i3;
                }
                httpURLConnection2.setConnectTimeout(i2);
                httpURLConnection2.setReadTimeout(i2);
                httpURLConnection2.addRequestProperty("Content-Type", aFd1oSDK.registerClient ? "application/octet-stream" : InitUrlConnection.CONTENT_TYPE_VALUE);
                for (Map.Entry<String, String> entry2 : aFd1oSDK.AFLogger.entrySet()) {
                    httpURLConnection2.setRequestProperty(entry2.getKey(), entry2.getValue());
                }
                if (bArr != null) {
                    httpURLConnection2.setDoOutput(true);
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append(bArr.length);
                    httpURLConnection2.setRequestProperty("Content-Length", sb4.toString());
                    try {
                        BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(Callback.i(httpURLConnection2));
                        try {
                            bufferedOutputStream2.write(bArr);
                            bufferedOutputStream2.close();
                        } catch (Throwable th2) {
                            th = th2;
                            bufferedOutputStream = bufferedOutputStream2;
                            if (bufferedOutputStream != null) {
                                bufferedOutputStream.close();
                            }
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                    }
                }
                boolean z = Callback.k(httpURLConnection2) / 100 == 2;
                String strAFLogger = aFd1oSDK.f22617i ? AFLogger(httpURLConnection2) : "";
                AFd1nSDK aFd1nSDK = new AFd1nSDK(System.currentTimeMillis() - jCurrentTimeMillis);
                StringBuilder sb5 = new StringBuilder("response code:");
                sb5.append(Callback.k(httpURLConnection2));
                sb5.append(" ");
                sb5.append(Callback.l(httpURLConnection2));
                sb5.append("\n body:");
                sb5.append(strAFLogger);
                sb5.append("\n took ");
                sb5.append(aFd1nSDK.registerClient);
                sb5.append(NBSSpanMetricUnit.Millisecond);
                String string = sb5.toString();
                AFLogger aFLogger = AFLogger.INSTANCE;
                LogTag logTag = LogTag.HTTP_CLIENT;
                StringBuilder sb6 = new StringBuilder("[");
                sb6.append(aFd1oSDK.hashCode());
                sb6.append("] ");
                sb6.append(string);
                aFLogger.d(logTag, sb6.toString());
                HashMap map = new HashMap(Callback.f(httpURLConnection2));
                map.remove(null);
                AFd1fSDK<String> aFd1fSDK = new AFd1fSDK<>(strAFLogger, Callback.k(httpURLConnection2), z, map, aFd1nSDK);
                httpURLConnection2.disconnect();
                return aFd1fSDK;
            } catch (Throwable th4) {
                th = th4;
                httpURLConnection = httpURLConnection2;
                try {
                    AFd1nSDK aFd1nSDK2 = new AFd1nSDK(System.currentTimeMillis() - jCurrentTimeMillis);
                    StringBuilder sb7 = new StringBuilder("error: ");
                    sb7.append(th);
                    sb7.append("\n took ");
                    sb7.append(aFd1nSDK2.registerClient);
                    sb7.append(NBSSpanMetricUnit.Millisecond);
                    String string2 = sb7.toString();
                    AFLogger aFLogger2 = AFLogger.INSTANCE;
                    LogTag logTag2 = LogTag.HTTP_CLIENT;
                    StringBuilder sb8 = new StringBuilder("[");
                    sb8.append(aFd1oSDK.hashCode());
                    sb8.append("] ");
                    sb8.append(string2);
                    aFLogger2.e(logTag2, sb8.toString(), th, false, false, false);
                    throw new HttpException(th, aFd1nSDK2);
                } catch (Throwable th5) {
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    throw th5;
                }
            }
        } catch (Throwable th6) {
            th = th6;
        }
    }
}
