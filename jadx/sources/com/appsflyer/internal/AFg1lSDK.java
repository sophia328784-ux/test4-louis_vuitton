package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import com.appsflyer.sdk_base.logger.AFLoggerBase;
import com.appsflyer.sdk_base.logger.LogTag;
import com.appsflyer.share.AppsFlyerConversionListener;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import org.json.JSONException;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\t\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000 '2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001'B!\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0010¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0010¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0015¢\u0006\u0004\b\u0012\u0010\u0013J#\u0010\u0017\u001a\u00020\u00112\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00160\u0014H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0019\u0010\u0013J\u001d\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u0014H\u0002¢\u0006\u0004\b\u001a\u0010\u001bR\u0014\u0010\f\u001a\u00020\u00058\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0016\u0010\u0017\u001a\u0004\u0018\u00010\u00078\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0016\u0010#\u001a\u0004\u0018\u00010 8\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u001c\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010$8\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b%\u0010&"}, d2 = {"Lcom/appsflyer/internal/AFg1lSDK;", "Lcom/appsflyer/internal/AFe1ySDK;", "Ljava/lang/Void;", "Lcom/appsflyer/internal/AFf1uSDK;", "p0", "Lcom/appsflyer/internal/AFc1kSDK;", "p1", "Lcom/appsflyer/share/AppsFlyerConversionListener;", "p2", "<init>", "(Lcom/appsflyer/internal/AFf1uSDK;Lcom/appsflyer/internal/AFc1kSDK;Lcom/appsflyer/share/AppsFlyerConversionListener;)V", "", "AFLogger", "()Z", "", NBSSpanMetricUnit.Day, "()J", "Lcom/appsflyer/internal/AFd1cSDK;", "registerClient", "()Lcom/appsflyer/internal/AFd1cSDK;", "", "", "", "unregisterClient", "(Ljava/util/Map;)Lcom/appsflyer/internal/AFd1cSDK;", "e", "AFLoggerLogLevel", "()Ljava/util/Map;", "v", "Lcom/appsflyer/internal/AFc1kSDK;", "force", "Lcom/appsflyer/share/AppsFlyerConversionListener;", "", "i", "Ljava/lang/Throwable;", "AFKeystoreWrapper", "Lcom/appsflyer/internal/AFd1fSDK;", "afErrorLog", "Lcom/appsflyer/internal/AFd1fSDK;", "AFa1vSDK"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class AFg1lSDK extends AFe1ySDK<Void> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static long f22645e;

    /* JADX INFO: renamed from: afErrorLog, reason: from kotlin metadata */
    private final AFd1fSDK<String> registerClient;

    /* JADX INFO: renamed from: force, reason: from kotlin metadata */
    private final AppsFlyerConversionListener unregisterClient;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private final Throwable AFKeystoreWrapper;

    /* JADX INFO: renamed from: v, reason: from kotlin metadata */
    private final AFc1kSDK AFLogger;

    static {
        Duration.Companion companion = Duration.INSTANCE;
        f22645e = Duration.e(DurationKt.g(60, DurationUnit.DAYS));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AFg1lSDK(AFf1uSDK aFf1uSDK, AFc1kSDK aFc1kSDK, AppsFlyerConversionListener appsFlyerConversionListener) {
        super(AFd1bSDK.GCDSDK, new AFe1zSDK[]{AFd1bSDK.RC_CDN}, "GCD-CHECK");
        aFf1uSDK.getClass();
        aFc1kSDK.getClass();
        this.AFLogger = aFc1kSDK;
        this.unregisterClient = appsFlyerConversionListener;
        this.AFKeystoreWrapper = aFf1uSDK.getV();
        this.registerClient = ((AFe1kSDK) aFf1uSDK).v;
    }

    private final Map<String, Object> AFLoggerLogLevel() {
        String strD = this.AFLogger.d("attributionId");
        if (strD == null) {
            return null;
        }
        try {
            Map<String, Object> mapAFLogger = AFd1rSDK.AFLogger(strD);
            mapAFLogger.getClass();
            return TypeIntrinsics.c(mapAFLogger);
        } catch (JSONException e2) {
            AFLogger aFLogger = AFLogger.INSTANCE;
            LogTag logTag = LogTag.GCD;
            String message = e2.getMessage();
            if (message == null) {
                message = "JSON parsing error";
            }
            AFLoggerBase.e$default(aFLogger, logTag, "[GCD] Failed to parse GCD response: ".concat(message), e2, false, false, false, false, 120, null);
            return null;
        }
    }

    private final AFd1cSDK e() {
        try {
            Throwable th = this.AFKeystoreWrapper;
            if (th != null) {
                AFg1kSDK.registerClient("Launch exception: " + th.getMessage(), this.unregisterClient);
                return AFd1cSDK.SUCCESS;
            }
            AFd1fSDK<String> aFd1fSDK = this.registerClient;
            if (aFd1fSDK != null) {
                if (aFd1fSDK.isSuccessful()) {
                    aFd1fSDK = null;
                }
                if (aFd1fSDK != null) {
                    AFg1kSDK.registerClient("Launch status code: " + aFd1fSDK.getStatusCode(), this.unregisterClient);
                    return AFd1cSDK.SUCCESS;
                }
            }
            return AFd1cSDK.FAILURE;
        } catch (Exception e2) {
            AFLogger aFLogger = AFLogger.INSTANCE;
            LogTag logTag = LogTag.GCD;
            String localizedMessage = e2.getLocalizedMessage();
            if (localizedMessage == null) {
                localizedMessage = "unknown error";
            }
            AFLoggerBase.e$default(aFLogger, logTag, "[GCD] Error executing conversion data callback: ".concat(localizedMessage), e2, false, false, false, false, 120, null);
        }
    }

    private final AFd1cSDK unregisterClient(Map<String, Object> p0) {
        try {
            if (p0.get("is_first_launch") == null) {
                p0.put("is_first_launch", Boolean.FALSE);
            }
            AFg1kSDK.d(p0, this.unregisterClient);
        } catch (Exception e2) {
            AFLogger aFLogger = AFLogger.INSTANCE;
            LogTag logTag = LogTag.GCD;
            String localizedMessage = e2.getLocalizedMessage();
            if (localizedMessage == null) {
                localizedMessage = "unknown error";
            }
            AFLoggerBase.e$default(aFLogger, logTag, "[GCD] Error executing conversion data callback: ".concat(localizedMessage), e2, false, false, false, false, 120, null);
        }
        return AFd1cSDK.SUCCESS;
    }

    @Override // com.appsflyer.internal.AFe1ySDK
    public final boolean AFLogger() {
        return false;
    }

    @Override // com.appsflyer.internal.AFe1ySDK
    public final long d() {
        return 1000L;
    }

    @Override // com.appsflyer.internal.AFe1ySDK
    public final AFd1cSDK registerClient() {
        AFd1cSDK aFd1cSDKUnregisterClient;
        AFLogger aFLogger = AFLogger.INSTANCE;
        LogTag logTag = LogTag.GCD;
        AFLoggerBase.d$default(aFLogger, logTag, "[GCD-A01] Loading conversion data", false, 4, null);
        long jUnregisterClient = this.AFLogger.unregisterClient("appsflyerConversionDataCacheExpiration", 0L);
        if (jUnregisterClient != 0 && System.currentTimeMillis() - jUnregisterClient > f22645e) {
            AFLoggerBase.d$default(aFLogger, logTag, "[GCD-E02] Cached conversion data expired", false, 4, null);
            this.AFLogger.registerClient("sixtyDayConversionData", true);
            this.AFLogger.AFLogger("appsflyerConversionDataCacheExpiration", 0L);
            this.AFLogger.d("attributionId", (String) null);
        }
        Map<String, Object> mapAFLoggerLogLevel = AFLoggerLogLevel();
        return (mapAFLoggerLogLevel == null || (aFd1cSDKUnregisterClient = unregisterClient(mapAFLoggerLogLevel)) == null) ? e() : aFd1cSDKUnregisterClient;
    }
}
