package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import com.appsflyer.sdk_base.logger.AFLoggerBase;
import com.appsflyer.sdk_base.logger.LogTag;
import com.dynatrace.android.callback.Callback;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.io.TextStreamsKt;
import kotlin.text.Charsets;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\b'\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0014\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u0013\u0010\u000b\u001a\u00020\u0005*\u00020\u0005H'¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\u001b\u0010\u000b\u001a\u00020\r*\u00020\u00102\u0006\u0010\u0003\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u000b\u0010\u0012J\u0017\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0013\u0010\u0014R\u0016\u0010\u000b\u001a\u00020\u00028\u0006@\u0006X\u0087\f¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R$\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00048\u0006@\u0006X\u0087\f¢\u0006\u0006\n\u0004\b\u000e\u0010\u0017R\u0014\u0010\u0015\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0018R\u0014\u0010\u001a\u001a\u00020\u00058'X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0019R\u0014\u0010\u0013\u001a\u00020\u001b8'X¦\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\u001cR\u001a\u0010\u001e\u001a\u00020\r8\u0017X\u0097D¢\u0006\f\n\u0004\b\u000b\u0010\u001d\u001a\u0004\b\u0015\u0010\u000f"}, d2 = {"Lcom/appsflyer/internal/AFc1cSDK;", "", "", "p0", "", "", "p1", "", "p2", "<init>", "([BLjava/util/Map;I)V", NBSSpanMetricUnit.Day, "(Ljava/lang/String;)Ljava/lang/String;", "", "unregisterClient", "()Z", "Ljava/net/HttpURLConnection;", "", "(Ljava/net/HttpURLConnection;J)Z", "registerClient", "(Ljava/net/HttpURLConnection;)Ljava/lang/String;", "AFKeystoreWrapper", "[B", "Ljava/util/Map;", "I", "()Ljava/lang/String;", "AFLogger", "Lcom/appsflyer/internal/AFd1tSDK;", "()Lcom/appsflyer/internal/AFd1tSDK;", "Z", "i"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class AFc1cSDK {

    /* JADX INFO: renamed from: AFKeystoreWrapper, reason: from kotlin metadata */
    public byte[] d;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    private final boolean i;

    /* JADX INFO: renamed from: registerClient, reason: from kotlin metadata */
    public int AFKeystoreWrapper;
    public Map<String, String> unregisterClient;

    public AFc1cSDK(byte[] bArr, Map<String, String> map, int i2) {
        bArr.getClass();
        this.d = bArr;
        this.unregisterClient = map;
        this.AFKeystoreWrapper = i2;
        this.i = true;
    }

    private final boolean d(HttpURLConnection httpURLConnection, long j2) throws IOException {
        httpURLConnection.setRequestMethod("POST");
        StringBuilder sb = new StringBuilder(httpURLConnection.getRequestMethod() + ":" + httpURLConnection.getURL());
        sb.append("\n length: ");
        sb.append(new String(this.d, Charsets.UTF_8).length());
        Map<String, String> map = this.unregisterClient;
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                sb.append("\n ");
                sb.append(entry.getKey());
                sb.append(": ");
                sb.append(entry.getValue());
            }
        }
        AFLogger.INSTANCE.v(LogTag.REMOTE_CONTROL, d("HTTP: [" + httpURLConnection.hashCode() + "] " + ((Object) sb)), getD());
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setReadTimeout(this.AFKeystoreWrapper);
        httpURLConnection.setConnectTimeout(this.AFKeystoreWrapper);
        httpURLConnection.addRequestProperty("Content-Type", getRegisterClient().unregisterClient);
        Map<String, String> map2 = this.unregisterClient;
        if (map2 != null) {
            for (Map.Entry<String, String> entry2 : map2.entrySet()) {
                httpURLConnection.addRequestProperty(entry2.getKey(), entry2.getValue());
            }
        }
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setRequestProperty("Content-Length", String.valueOf(this.d.length));
        OutputStream outputStreamI = Callback.i(httpURLConnection);
        outputStreamI.getClass();
        BufferedOutputStream bufferedOutputStream = outputStreamI instanceof BufferedOutputStream ? (BufferedOutputStream) outputStreamI : new BufferedOutputStream(outputStreamI, 8192);
        bufferedOutputStream.write(this.d);
        bufferedOutputStream.close();
        String strRegisterClient = registerClient(httpURLConnection);
        long jCurrentTimeMillis = System.currentTimeMillis() - j2;
        String str = "response code:" + Callback.k(httpURLConnection) + " " + Callback.l(httpURLConnection) + "\n\tbody:" + strRegisterClient + "\n\ttook " + jCurrentTimeMillis + NBSSpanMetricUnit.Millisecond;
        AFLogger.INSTANCE.v(LogTag.REMOTE_CONTROL, d("HTTP: [" + httpURLConnection.hashCode() + "] " + str), getD());
        return Callback.k(httpURLConnection) / 100 == 2;
    }

    private static String registerClient(HttpURLConnection p0) throws IOException {
        InputStream inputStreamD;
        try {
            inputStreamD = Callback.h(p0);
        } catch (Throwable th) {
            AFLogger aFLogger = AFLogger.INSTANCE;
            LogTag logTag = LogTag.HTTP_CLIENT;
            String message = th.getMessage();
            AFLoggerBase.e$default(aFLogger, logTag, message == null ? "" : message, th, false, false, false, false, 96, null);
            inputStreamD = Callback.d(p0);
        }
        if (inputStreamD == null) {
            return "";
        }
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStreamD, Charsets.UTF_8), 8192);
        ArrayList arrayList = new ArrayList();
        try {
            for (String str : TextStreamsKt.a(bufferedReader)) {
                str.getClass();
                arrayList.add(str);
            }
            bufferedReader.close();
            String strK = CollectionsKt.K(arrayList, null, null, null, null, 63);
            bufferedReader.close();
            return strK;
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                CloseableKt.a(bufferedReader, th2);
                throw th3;
            }
        }
    }

    /* JADX INFO: renamed from: AFKeystoreWrapper, reason: from getter */
    public boolean getD() {
        return this.i;
    }

    /* JADX INFO: renamed from: d */
    public abstract AFd1tSDK getRegisterClient();

    public abstract String d(String str);

    public abstract String registerClient();

    public final boolean unregisterClient() {
        HttpURLConnection httpURLConnection;
        Throwable th;
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            String strRegisterClient = registerClient();
            strRegisterClient.getClass();
            URLConnection uRLConnectionOpenConnection = new URL(strRegisterClient).openConnection();
            Callback.C(uRLConnectionOpenConnection);
            uRLConnectionOpenConnection.getClass();
            httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
            try {
                boolean zD = d(httpURLConnection, jCurrentTimeMillis);
                httpURLConnection.disconnect();
                return zD;
            } catch (Throwable th2) {
                th = th2;
                try {
                    String str = "error: " + th + "\n\ttook " + (System.currentTimeMillis() - jCurrentTimeMillis) + "ms\n\t" + th.getMessage();
                    AFLogger.INSTANCE.v(LogTag.REMOTE_CONTROL, d("HTTP: [" + (httpURLConnection != null ? httpURLConnection.hashCode() : 0) + "] " + str), getD());
                    return false;
                } finally {
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                }
            }
        } catch (Throwable th3) {
            httpURLConnection = null;
            th = th3;
        }
    }
}
