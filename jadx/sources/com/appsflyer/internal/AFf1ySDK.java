package com.appsflyer.internal;

import android.net.Uri;
import com.appsflyer.AFLogger;
import com.appsflyer.sdk_base.logger.AFLoggerBase;
import com.appsflyer.sdk_base.logger.LogTag;
import com.dynatrace.android.callback.Callback;
import defpackage.pq0;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.ranges.IntRange;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class AFf1ySDK {
    private static final long AFKeystoreWrapper;
    private static final int d;
    private static final IntRange unregisterClient;

    static {
        Duration.Companion companion = Duration.INSTANCE;
        DurationUnit durationUnit = DurationUnit.SECONDS;
        AFKeystoreWrapper = Duration.e(DurationKt.g(60, durationUnit));
        d = (int) Duration.e(DurationKt.g(2, durationUnit));
        unregisterClient = new IntRange(300, 305);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Map<String, Object> x_(Uri uri) {
        String strE;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        AFLogger aFLogger = AFLogger.INSTANCE;
        LogTag logTag = LogTag.DDL;
        AFLoggerBase.d$default(aFLogger, logTag, pq0.l(uri, "ESP deeplink resolving is started: "), false, 4, null);
        HttpURLConnection httpURLConnection = null;
        try {
            URLConnection uRLConnectionOpenConnection = new URL(uri.toString()).openConnection();
            Callback.C(uRLConnectionOpenConnection);
            uRLConnectionOpenConnection.getClass();
            HttpURLConnection httpURLConnection2 = (HttpURLConnection) uRLConnectionOpenConnection;
            httpURLConnection2.setInstanceFollowRedirects(false);
            int i2 = d;
            httpURLConnection2.setReadTimeout(i2);
            httpURLConnection2.setConnectTimeout(i2);
            httpURLConnection2.setRequestProperty("User-agent", "Dalvik/2.1.0 (Linux; U; Android 6.0.1; Nexus 5 Build/M4B30Z)");
            httpURLConnection2.setRequestProperty("af-esp", "7.0.1");
            try {
                int iK = Callback.k(httpURLConnection2);
                linkedHashMap.put("status", Integer.valueOf(iK));
                IntRange intRange = unregisterClient;
                int i3 = intRange.f71951b;
                if (iK <= intRange.f71952c && i3 <= iK && (strE = Callback.e(com.networkbench.agent.impl.performance.coulometry.a.f37790a, httpURLConnection2)) != null) {
                    linkedHashMap.put("res", strE);
                }
                AFLoggerBase.d$default(aFLogger, logTag, "ESP deeplink resolving is finished", false, 4, null);
                httpURLConnection2.disconnect();
                return linkedHashMap;
            } catch (Throwable th) {
                th = th;
                httpURLConnection = httpURLConnection2;
                Throwable th2 = th;
                try {
                    String localizedMessage = th2.getLocalizedMessage();
                    if (localizedMessage != null) {
                        linkedHashMap.put("error", localizedMessage);
                    }
                    AFLogger aFLogger2 = AFLogger.INSTANCE;
                    LogTag logTag2 = LogTag.DDL;
                    String message = th2.getMessage();
                    if (message == null) {
                        message = "Error resolving ESP deeplink";
                    }
                    AFLoggerBase.e$default(aFLogger2, logTag2, message, th2, false, false, false, false, 120, null);
                    return linkedHashMap;
                } finally {
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                }
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }
}
