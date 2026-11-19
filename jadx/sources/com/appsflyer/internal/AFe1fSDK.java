package com.appsflyer.internal;

import android.os.Build;
import com.appsflyer.AFLogger;
import com.appsflyer.sdk_base.logger.AFLoggerBase;
import com.appsflyer.sdk_base.logger.LogTag;
import com.appsflyer.sdk_base.referrer.Payload;
import com.appsflyer.sdk_base.referrer.Referrer;
import com.appsflyer.share.attribution.AppsFlyerRequestListener;
import com.appsflyer.share.deeplink.DeepLink;
import com.appsflyer.share.deeplink.DeepLinkResult;
import com.appsflyer.share.network.http.ResponseNetwork;
import defpackage.cj;
import defpackage.pq0;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import kotlin.Pair;
import kotlin.collections.MapsKt;

/* JADX INFO: loaded from: classes.dex */
public final class AFe1fSDK extends AFe1kSDK<AFa1gSDK> {
    private final AFa1qSDK AFLoggerLogLevel;
    private int AppsFlyerLib;
    private final AFh1xSDK afDebugLog;
    private final AFi1aSDK afErrorLog;
    private final AFc1eSDK afInfoLog;
    private int afWarnLog;
    private final AFc1iSDK force;
    private final CountDownLatch getLevel;
    private final AFa1oSDK v;
    private final List<Referrer> valueOf;
    private int values;

    public /* synthetic */ class AFa1tSDK {
        public static final /* synthetic */ int[] AFKeystoreWrapper;
        public static final /* synthetic */ int[] registerClient;

        static {
            int[] iArr = new int[AFd1cSDK.values().length];
            try {
                iArr[AFd1cSDK.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AFd1cSDK.FAILURE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            registerClient = iArr;
            int[] iArr2 = new int[Referrer.State.values().length];
            try {
                iArr2[Referrer.State.FINISHED.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[Referrer.State.STARTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            AFKeystoreWrapper = iArr2;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AFe1fSDK(AFc1bSDK aFc1bSDK) {
        super(AFd1bSDK.DLSDK, new AFe1zSDK[]{AFd1bSDK.RC_CDN, AFd1bSDK.FETCH_ADVERTISING_ID}, aFc1bSDK, "DdlSdk");
        aFc1bSDK.getClass();
        int i2 = 0;
        this.v = new AFa1oSDK();
        AFc1iSDK aFc1iSDKAFLogger = aFc1bSDK.AFLogger();
        aFc1iSDKAFLogger.getClass();
        this.force = aFc1iSDKAFLogger;
        AFc1eSDK androidIdData = aFc1bSDK.setAndroidIdData();
        androidIdData.getClass();
        this.afInfoLog = androidIdData;
        AFa1qSDK aFa1qSDKEnableTCFDataCollection = aFc1bSDK.enableTCFDataCollection();
        aFa1qSDKEnableTCFDataCollection.getClass();
        this.AFLoggerLogLevel = aFa1qSDKEnableTCFDataCollection;
        AFh1xSDK aFh1xSDKE = aFc1bSDK.e();
        aFh1xSDKE.getClass();
        this.afDebugLog = aFh1xSDKE;
        AFi1aSDK aFi1aSDKAfDebugLog = aFc1bSDK.afDebugLog();
        aFi1aSDKAfDebugLog.getClass();
        this.afErrorLog = aFi1aSDKAfDebugLog;
        this.getLevel = new CountDownLatch(1);
        this.valueOf = new ArrayList();
        Referrer[] referrerArr = (Referrer[]) aFi1aSDKAfDebugLog.unregisterClient.toArray(new Referrer[0]);
        referrerArr.getClass();
        ArrayList<Referrer> arrayList = new ArrayList();
        for (Referrer referrer : referrerArr) {
            if (referrer != null && referrer.getState() != Referrer.State.NOT_STARTED) {
                arrayList.add(referrer);
            }
        }
        this.AppsFlyerLib = arrayList.size();
        for (Referrer referrer2 : arrayList) {
            int i3 = AFa1tSDK.AFKeystoreWrapper[referrer2.getState().ordinal()];
            if (i3 == 1) {
                AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.DDL, referrer2.map.get(Payload.SOURCE) + " referrer collected earlier", false, 4, null);
                AFKeystoreWrapper(referrer2);
            } else if (i3 == 2) {
                referrer2.setAdditionalReferrerDataCollectionFinishedCallback(new m(referrer2, this, i2));
            }
        }
    }

    private final void AFKeystoreWrapper(Referrer referrer) {
        if (unregisterClient(referrer)) {
            this.valueOf.add(referrer);
            this.getLevel.countDown();
            AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.DDL, "Added non-organic ".concat(referrer.getClass().getSimpleName()), false, 4, null);
        } else {
            int i2 = this.values + 1;
            this.values = i2;
            if (i2 == this.AppsFlyerLib) {
                this.getLevel.countDown();
            }
        }
    }

    private static boolean unregisterClient(Referrer referrer) {
        Object obj = referrer.map.get(Payload.CLICK_TS);
        Long l = obj instanceof Long ? (Long) obj : null;
        if (l != null) {
            if (System.currentTimeMillis() - TimeUnit.SECONDS.toMillis(l.longValue()) < 86400000) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0140  */
    @Override // com.appsflyer.internal.AFe1kSDK
    public final AFd1pSDK<AFa1gSDK> AFLogger(String str) {
        Map mapI;
        String[] strArr;
        str.getClass();
        int i2 = this.afWarnLog + 1;
        this.afWarnLog = i2;
        AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.DDL, pq0.k(i2, "Preparing request "), false, 4, null);
        Map<String, Object> map = this.v.d;
        if (this.afWarnLog == 1) {
            map.put("is_first", Boolean.valueOf(this.force.AFKeystoreWrapper.AFLogger("appsFlyerCount", 0) == 0));
            Locale locale = Locale.getDefault();
            map.put("lang", locale.getLanguage() + "-" + locale.getCountry());
            map.put("os", Build.VERSION.RELEASE);
            map.put("type", Build.MODEL);
            map.put("request_id", AFb1jSDK.AFLogger(this.force.AFKeystoreWrapper));
            AFb1rSDK aFb1rSDK = this.afInfoLog.w;
            if (aFb1rSDK != null && (strArr = aFb1rSDK.AFKeystoreWrapper) != null) {
                map.put("sharing_filter", strArr);
            }
            AFh1qSDK aFh1qSDK = this.force.registerClient.updateServerUninstallToken;
            Map<String, String> mapUnregisterClient = unregisterClient(aFh1qSDK != null ? new AFb1lSDK(aFh1qSDK.com.networkbench.agent.impl.NBSSpanMetricUnit.Day java.lang.String, aFh1qSDK.registerClient) : null);
            if (mapUnregisterClient != null) {
                map.put("gaid", mapUnregisterClient);
            }
            Map<String, String> mapUnregisterClient2 = unregisterClient(AFb1iSDK.unregisterClient(this.force.d.d));
            if (mapUnregisterClient2 != null) {
                map.put("oaid", mapUnregisterClient2);
            }
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        map.put("timestamp", simpleDateFormat.format(new Date(jCurrentTimeMillis)));
        map.put("request_count", Integer.valueOf(this.afWarnLog));
        List<Referrer> list = this.valueOf;
        ArrayList arrayList = new ArrayList();
        for (Referrer referrer : list) {
            if (referrer.getState() == Referrer.State.FINISHED) {
                Object obj = referrer.map.get(Payload.RFR);
                String str2 = obj instanceof String ? (String) obj : null;
                if (str2 != null) {
                    Object obj2 = referrer.map.get(Payload.SOURCE);
                    obj2.getClass();
                    mapI = MapsKt.i(new Pair(Payload.SOURCE, (String) obj2), new Pair("value", str2));
                } else {
                    mapI = null;
                }
            } else {
                mapI = null;
            }
            if (mapI != null) {
                arrayList.add(mapI);
            }
        }
        if (!arrayList.isEmpty()) {
            map.put(Payload.RFRS, arrayList);
        }
        AFa1oSDK aFa1oSDK = this.v;
        AFj1mSDK aFj1mSDK = new AFj1mSDK(this.force);
        AFf1fSDK aFf1fSDKAfInfoLog = getUnregisterClient();
        String str3 = (String) AFf1fSDK.unregisterClient(new Object[]{aFf1fSDKAfInfoLog}, -1660886869, 1660886871, System.identityHashCode(aFf1fSDKAfInfoLog));
        Object obj3 = this.v.d.get("timestamp");
        obj3.getClass();
        aFa1oSDK.f22654i = aFj1mSDK.AFLogger(str3, (String) obj3);
        AFh1xSDK aFh1xSDK = this.afDebugLog;
        int i3 = this.afWarnLog;
        if (i3 <= 0 || i3 > 2) {
            AFLogger.INSTANCE.e(LogTag.DDL, "Unexpected ddl requestCount - start", new IllegalStateException("Metrics: Unexpected ddl requestCount = ".concat(String.valueOf(i3))), false, false);
        } else {
            int i4 = i3 - 1;
            aFh1xSDK.force[i4] = System.currentTimeMillis();
            if (i4 == 0) {
                long j2 = aFh1xSDK.f22657e;
                if (j2 != 0) {
                    aFh1xSDK.registerClient.put("from_fg", Long.valueOf(aFh1xSDK.force[i4] - j2));
                } else {
                    AFLogger.INSTANCE.i(LogTag.GENERAL, "Metrics: fg ts is missing");
                }
            }
        }
        AFd1sSDK aFd1sSDKAfDebugLog = getCom.networkbench.agent.impl.NBSSpanMetricUnit.Day java.lang.String();
        AFd1pSDK<AFa1gSDK> aFd1pSDK = (AFd1pSDK) AFd1sSDK.d(new Object[]{aFd1sSDKAfDebugLog, this.v}, 232910799, -232910798, System.identityHashCode(aFd1sSDKAfDebugLog));
        aFd1pSDK.getClass();
        return aFd1pSDK;
    }

    @Override // com.appsflyer.internal.AFe1kSDK
    public final boolean a_() {
        return false;
    }

    @Override // com.appsflyer.internal.AFe1kSDK
    public final /* bridge */ /* synthetic */ AppsFlyerRequestListener afWarnLog() {
        return null;
    }

    @Override // com.appsflyer.internal.AFe1kSDK, com.appsflyer.internal.AFe1ySDK
    public final long d() {
        return this.AFLoggerLogLevel.AFKeystoreWrapper;
    }

    @Override // com.appsflyer.internal.AFe1kSDK
    public final boolean e() {
        return false;
    }

    @Override // com.appsflyer.internal.AFe1kSDK, com.appsflyer.internal.AFe1ySDK
    public final AFd1cSDK registerClient() {
        AFd1cSDK aFd1cSDK = AFd1cSDK.FAILURE;
        try {
            AFd1cSDK aFd1cSDKRegisterClient = super.registerClient();
            AFh1xSDK aFh1xSDK = this.afDebugLog;
            int i2 = this.afWarnLog;
            if (i2 <= 0 || i2 > 2) {
                AFLogger.INSTANCE.e(LogTag.DDL, "Unexpected ddl requestCount - end", new IllegalStateException("Metrics: Unexpected ddl requestCount = ".concat(String.valueOf(i2))), false, false);
            } else {
                int i3 = i2 - 1;
                aFh1xSDK.v[i3] = System.currentTimeMillis();
                long j2 = aFh1xSDK.force[i3];
                if (j2 != 0) {
                    long[] jArr = aFh1xSDK.w;
                    jArr[i3] = aFh1xSDK.v[i3] - j2;
                    aFh1xSDK.registerClient.put("net", jArr);
                } else {
                    AFLogger aFLogger = AFLogger.INSTANCE;
                    LogTag logTag = LogTag.GENERAL;
                    StringBuilder sb = new StringBuilder("Metrics: ddlStart[");
                    sb.append(i3);
                    sb.append("] ts is missing");
                    aFLogger.i(logTag, sb.toString());
                }
            }
            int i4 = AFa1tSDK.registerClient[aFd1cSDKRegisterClient.ordinal()];
            if (i4 != 1) {
                if (i4 != 2) {
                    return aFd1cSDKRegisterClient;
                }
                AFLogger aFLogger2 = AFLogger.INSTANCE;
                LogTag logTag2 = LogTag.DDL;
                ResponseNetwork responseNetwork = ((AFe1kSDK) this).v;
                AFLoggerBase.d$default(aFLogger2, logTag2, "Error occurred. Server response code = " + (responseNetwork != null ? Integer.valueOf(responseNetwork.getStatusCode()) : null), false, 4, null);
                DeepLinkResult deepLinkResult = new DeepLinkResult(null, DeepLinkResult.Error.HTTP_STATUS_CODE);
                this.afDebugLog.registerClient(deepLinkResult, this.AFLoggerLogLevel.AFKeystoreWrapper);
                this.AFLoggerLogLevel.d(deepLinkResult);
                return aFd1cSDKRegisterClient;
            }
            ResponseNetwork responseNetwork2 = ((AFe1kSDK) this).v;
            responseNetwork2.getClass();
            Object body = responseNetwork2.getBody();
            body.getClass();
            AFa1gSDK aFa1gSDK = (AFa1gSDK) body;
            DeepLink deepLink = aFa1gSDK.unregisterClient;
            if (deepLink != null) {
                DeepLinkResult deepLinkResult2 = new DeepLinkResult(deepLink, null);
                this.afDebugLog.registerClient(deepLinkResult2, this.AFLoggerLogLevel.AFKeystoreWrapper);
                this.AFLoggerLogLevel.d(deepLinkResult2);
                return aFd1cSDKRegisterClient;
            }
            if (this.afWarnLog <= 1 && aFa1gSDK.AFKeystoreWrapper) {
                Object obj = this.v.d.get(Payload.RFRS);
                List list = obj instanceof List ? (List) obj : null;
                if ((list != null ? list.size() : 0) < this.AppsFlyerLib && !this.v.d.containsKey(Payload.RFRS)) {
                    AFLogger aFLogger3 = AFLogger.INSTANCE;
                    AFLoggerBase.d$default(aFLogger3, LogTag.DDL, "Waiting for referrers...", false, 4, null);
                    this.getLevel.await();
                    AFh1xSDK aFh1xSDK2 = this.afDebugLog;
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    long j3 = aFh1xSDK2.v[0];
                    if (j3 != 0) {
                        aFh1xSDK2.registerClient.put("rfr_wait", Long.valueOf(jCurrentTimeMillis - j3));
                    } else {
                        aFLogger3.i(LogTag.GENERAL, "Metrics: ddlEnd[0] ts is missing");
                    }
                    if (this.values != this.AppsFlyerLib) {
                        return registerClient();
                    }
                    DeepLinkResult deepLinkResult3 = new DeepLinkResult(null, null);
                    this.afDebugLog.registerClient(deepLinkResult3, this.AFLoggerLogLevel.AFKeystoreWrapper);
                    this.AFLoggerLogLevel.d(deepLinkResult3);
                    return AFd1cSDK.SUCCESS;
                }
            }
            DeepLinkResult deepLinkResult4 = new DeepLinkResult(null, null);
            this.afDebugLog.registerClient(deepLinkResult4, this.AFLoggerLogLevel.AFKeystoreWrapper);
            this.AFLoggerLogLevel.d(deepLinkResult4);
            return aFd1cSDKRegisterClient;
        } catch (Exception e2) {
            Throwable cause = e2.getCause();
            if (!(cause instanceof InterruptedException) && !(cause instanceof InterruptedIOException)) {
                if (cause instanceof IOException) {
                    AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.DDL, "Http Exception: the request was not sent to the server", false, 4, null);
                    DeepLinkResult deepLinkResult5 = new DeepLinkResult(null, DeepLinkResult.Error.NETWORK);
                    this.afDebugLog.registerClient(deepLinkResult5, this.AFLoggerLogLevel.AFKeystoreWrapper);
                    this.AFLoggerLogLevel.d(deepLinkResult5);
                    return aFd1cSDK;
                }
                AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.DDL, cj.j("Unexpected Exception: ", e2), false, 4, null);
                DeepLinkResult deepLinkResult6 = new DeepLinkResult(null, DeepLinkResult.Error.UNEXPECTED);
                this.afDebugLog.registerClient(deepLinkResult6, this.AFLoggerLogLevel.AFKeystoreWrapper);
                this.AFLoggerLogLevel.d(deepLinkResult6);
                return aFd1cSDK;
            }
            AFLogger aFLogger4 = AFLogger.INSTANCE;
            LogTag logTag3 = LogTag.DDL;
            AFLoggerBase.e$default(aFLogger4, logTag3, "[DDL] Timeout", new TimeoutException(), false, false, false, false, 96, null);
            AFLoggerBase.d$default(aFLogger4, logTag3, "Timeout, didn't manage to find deferred deeplink after " + this.afWarnLog + " attempt(s) within " + this.AFLoggerLogLevel.AFKeystoreWrapper + " milliseconds", false, 4, null);
            DeepLinkResult deepLinkResult7 = new DeepLinkResult(null, DeepLinkResult.Error.TIMEOUT);
            this.afDebugLog.registerClient(deepLinkResult7, this.AFLoggerLogLevel.AFKeystoreWrapper);
            this.AFLoggerLogLevel.d(deepLinkResult7);
            return AFd1cSDK.TIMEOUT;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void unregisterClient(Referrer referrer, AFe1fSDK aFe1fSDK) {
        AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.DDL, referrer.map.get(Payload.SOURCE) + " referrer collected via callback", false, 4, null);
        aFe1fSDK.AFKeystoreWrapper(referrer);
    }

    private static Map<String, String> unregisterClient(AFb1lSDK aFb1lSDK) {
        String str;
        if (aFb1lSDK == null || (str = aFb1lSDK.d) == null) {
            return null;
        }
        Boolean bool = aFb1lSDK.AFLogger;
        if (bool == null || !bool.booleanValue()) {
            return MapsKt.i(new Pair("type", "unhashed"), new Pair("value", str));
        }
        return null;
    }

    @Override // com.appsflyer.internal.AFe1kSDK, com.appsflyer.internal.AFe1ySDK
    public final boolean AFLogger() {
        return false;
    }
}
