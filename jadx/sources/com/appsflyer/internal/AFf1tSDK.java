package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import com.appsflyer.sdk_base.logger.AFLoggerBase;
import com.appsflyer.sdk_base.logger.LogTag;
import com.appsflyer.share.attribution.AppsFlyerRequestListener;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\b\u0016\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B%\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\b\u0010\tJ\u001f\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\n2\u0006\u0010\u0004\u001a\u00020\u0002H\u0005¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0014¢\u0006\u0004\b\u000e\u0010\u000fJ\u0011\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0015¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0004\u001a\u00020\u0003H\u0015¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0004\u001a\u00020\u0003H\u0014¢\u0006\u0004\b\u0016\u0010\u0015J\u0017\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0004\u001a\u00020\u0003H\u0014¢\u0006\u0004\b\u0017\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0004\u001a\u00020\u0003H\u0014¢\u0006\u0004\b\u0018\u0010\u0015J\u0017\u0010\u000b\u001a\u00020\u00132\u0006\u0010\u0004\u001a\u00020\u0003H\u0014¢\u0006\u0004\b\u000b\u0010\u0015J\u0017\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u0004\u001a\u00020\u0003H\u0014¢\u0006\u0004\b\u0019\u0010\u0015J\u0017\u0010\u000e\u001a\u00020\u00132\u0006\u0010\u0004\u001a\u00020\u0003H\u0014¢\u0006\u0004\b\u000e\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u00038\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0014\u0010\u000b\u001a\u00020\u001c8\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001dR\u0014\u0010\u0017\u001a\u00020\u001e8\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0014\u0010\u0018\u001a\u00020!8\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\"R\u0014\u0010\u0014\u001a\u00020#8\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b$\u0010%R\u001a\u0010+\u001a\u00020&8\u0005X\u0085\u0004¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*R\u001a\u0010\u000e\u001a\u00020,8\u0005X\u0085\u0004¢\u0006\f\n\u0004\b-\u0010.\u001a\u0004\b/\u00100R\u001a\u00106\u001a\u0002018\u0005X\u0085\u0004¢\u0006\f\n\u0004\b2\u00103\u001a\u0004\b4\u00105R\u0014\u0010\u0019\u001a\u0002078\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b4\u00108"}, d2 = {"Lcom/appsflyer/internal/AFf1tSDK;", "Lcom/appsflyer/internal/AFe1kSDK;", "", "Lcom/appsflyer/internal/AFh1pSDK;", "p0", "Lcom/appsflyer/internal/AFc1bSDK;", "p1", "p2", "<init>", "(Lcom/appsflyer/internal/AFh1pSDK;Lcom/appsflyer/internal/AFc1bSDK;Ljava/lang/String;)V", "Lcom/appsflyer/internal/AFd1pSDK;", "AFLogger", "(Ljava/lang/String;)Lcom/appsflyer/internal/AFd1pSDK;", "", "e", "()Z", "Lcom/appsflyer/share/attribution/AppsFlyerRequestListener;", "afWarnLog", "()Lcom/appsflyer/share/attribution/AppsFlyerRequestListener;", "", NBSSpanMetricUnit.Day, "(Lcom/appsflyer/internal/AFh1pSDK;)V", "registerClient", "unregisterClient", "AFKeystoreWrapper", "v", "force", "Lcom/appsflyer/internal/AFh1pSDK;", "Lcom/appsflyer/internal/AFf1hSDK;", "Lcom/appsflyer/internal/AFf1hSDK;", "Lcom/appsflyer/internal/AFd1jSDK;", "afInfoLog", "Lcom/appsflyer/internal/AFd1jSDK;", "Lcom/appsflyer/internal/AFf1eSDK;", "Lcom/appsflyer/internal/AFf1eSDK;", "Lcom/appsflyer/internal/AFd1zSDK;", "afDebugLog", "Lcom/appsflyer/internal/AFd1zSDK;", "Lcom/appsflyer/internal/AFc1iSDK;", "AFLoggerLogLevel", "Lcom/appsflyer/internal/AFc1iSDK;", "AppsFlyerLib", "()Lcom/appsflyer/internal/AFc1iSDK;", "i", "Lcom/appsflyer/internal/AFc1kSDK;", "afErrorLog", "Lcom/appsflyer/internal/AFc1kSDK;", "getLevel", "()Lcom/appsflyer/internal/AFc1kSDK;", "Lcom/appsflyer/internal/AFg1rSDK;", "valueOf", "Lcom/appsflyer/internal/AFg1rSDK;", "values", "()Lcom/appsflyer/internal/AFg1rSDK;", "w", "Lcom/appsflyer/internal/AFe1cSDK;", "Lcom/appsflyer/internal/AFe1cSDK;"}, k = 1, mv = {2, 0, 0}, xi = 48)
public class AFf1tSDK extends AFe1kSDK<String> {

    /* JADX INFO: renamed from: AFLoggerLogLevel, reason: from kotlin metadata */
    private final AFc1iSDK i;

    /* JADX INFO: renamed from: afDebugLog, reason: from kotlin metadata */
    private final AFd1zSDK d;

    /* JADX INFO: renamed from: afErrorLog, reason: from kotlin metadata */
    private final AFc1kSDK e;

    /* JADX INFO: renamed from: afInfoLog, reason: from kotlin metadata */
    private final AFd1jSDK unregisterClient;

    /* JADX INFO: renamed from: afWarnLog, reason: from kotlin metadata */
    private final AFf1eSDK AFKeystoreWrapper;

    /* JADX INFO: renamed from: force, reason: from kotlin metadata */
    private final AFh1pSDK registerClient;

    /* JADX INFO: renamed from: v, reason: from kotlin metadata */
    private final AFf1hSDK AFLogger;

    /* JADX INFO: renamed from: valueOf, reason: from kotlin metadata */
    private final AFg1rSDK w;

    /* JADX INFO: renamed from: values, reason: from kotlin metadata */
    private final AFe1cSDK v;

    /* JADX WARN: Illegal instructions before constructor call */
    public AFf1tSDK(AFh1pSDK aFh1pSDK, AFc1bSDK aFc1bSDK, String str) {
        aFh1pSDK.getClass();
        aFc1bSDK.getClass();
        AFe1zSDK aFe1zSDKAFKeystoreWrapper = aFh1pSDK.AFKeystoreWrapper();
        aFe1zSDKAFKeystoreWrapper.getClass();
        super(aFe1zSDKAFKeystoreWrapper, AFf1rSDK.unregisterClient, aFc1bSDK, str);
        this.registerClient = aFh1pSDK;
        AFf1hSDK aFf1hSDKI = aFc1bSDK.i();
        aFf1hSDKI.getClass();
        this.AFLogger = aFf1hSDKI;
        AFd1jSDK level = aFc1bSDK.getLevel();
        level.getClass();
        this.unregisterClient = level;
        AFf1eSDK oaidData = aFc1bSDK.setOaidData();
        oaidData.getClass();
        this.AFKeystoreWrapper = oaidData;
        AFd1zSDK aFd1zSDKValueOf = aFc1bSDK.valueOf();
        aFd1zSDKValueOf.getClass();
        this.d = aFd1zSDKValueOf;
        AFc1iSDK aFc1iSDKAFLogger = aFc1bSDK.AFLogger();
        aFc1iSDKAFLogger.getClass();
        this.i = aFc1iSDKAFLogger;
        AFc1kSDK aFc1kSDKAFKeystoreWrapper = aFc1bSDK.AFKeystoreWrapper();
        aFc1kSDKAFKeystoreWrapper.getClass();
        this.e = aFc1kSDKAFKeystoreWrapper;
        AFg1rSDK aFg1rSDKForce = aFc1bSDK.force();
        aFg1rSDKForce.getClass();
        this.w = aFg1rSDKForce;
        this.v = new AFe1cSDK(getAFKeystoreWrapper());
        if (ArraysKt.f(this.unregisterClient, AFf1rSDK.AFKeystoreWrapper)) {
            return;
        }
        int i2 = aFh1pSDK.afWarnLog;
        AFe1zSDK aFe1zSDK = this.unregisterClient;
        if (i2 <= 0) {
            AFd1bSDK aFd1bSDK = AFd1bSDK.CONVERSION;
            if (aFe1zSDK != aFd1bSDK) {
                aFd1bSDK.getClass();
                this.AFLogger.add(aFd1bSDK);
                return;
            }
            return;
        }
        if (aFe1zSDK == AFd1bSDK.ATTR) {
            AFd1bSDK aFd1bSDK2 = AFd1bSDK.CONVERSION;
            aFd1bSDK2.getClass();
            this.AFLogger.add(aFd1bSDK2);
        } else {
            AFd1bSDK aFd1bSDK3 = AFd1bSDK.CONVERSION;
            aFd1bSDK3.getClass();
            this.AFKeystoreWrapper.add(aFd1bSDK3);
        }
    }

    public void AFKeystoreWrapper(AFh1pSDK p0) {
        p0.getClass();
        this.w.registerClient(p0);
    }

    @Override // com.appsflyer.internal.AFe1kSDK
    public final AFd1pSDK<String> AFLogger(String p0) {
        AFh1gSDK aFh1gSDK;
        AFi1zSDK aFi1zSDK;
        p0.getClass();
        d(this.registerClient);
        if (this.registerClient.d.containsKey("meta")) {
            AFh1aSDK aFh1aSDK = this.AFLogger.unregisterClient.AFLogger;
            if (AFh1pSDK.unregisterClient((aFh1aSDK == null || (aFh1gSDK = aFh1aSDK.registerClient) == null || (aFi1zSDK = aFh1gSDK.AFKeystoreWrapper) == null) ? 1.0d : aFi1zSDK.AFLogger)) {
                this.registerClient.d.remove("meta");
            }
        }
        AFd1pSDK<String> aFd1pSDKAFLogger = getCom.networkbench.agent.impl.NBSSpanMetricUnit.Day java.lang.String().AFLogger(this.registerClient, p0, this.d);
        AFe1cSDK aFe1cSDK = this.v;
        String string = toString();
        Map<String, ? extends Object> map = this.registerClient.d;
        map.getClass();
        aFe1cSDK.registerClient(string, aFd1pSDKAFLogger, map);
        return aFd1pSDKAFLogger;
    }

    /* JADX INFO: renamed from: AppsFlyerLib, reason: from getter */
    public final AFc1iSDK getI() {
        return this.i;
    }

    @Override // com.appsflyer.internal.AFe1kSDK
    public final AppsFlyerRequestListener afWarnLog() {
        return this.registerClient.AFLogger;
    }

    public void d(AFh1pSDK p0) {
        p0.getClass();
        try {
            try {
                AFLogger(p0);
                registerClient(p0);
                AFKeystoreWrapper(p0);
                unregisterClient(p0);
                v(p0);
                e(p0);
            } catch (Throwable th) {
                AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.QUEUE, "Error while collecting payload params", th, true, true, false, false, 64, null);
            }
            if (p0.d()) {
                AFf1fSDK unregisterClient = getUnregisterClient();
                p0.AFKeystoreWrapper((Map) AFf1fSDK.unregisterClient(new Object[]{unregisterClient, p0.d}, 1953197941, -1953197940, System.identityHashCode(unregisterClient)));
                AFf1fSDK unregisterClient2 = getUnregisterClient();
                p0.AFKeystoreWrapper((Map) AFf1fSDK.unregisterClient(new Object[]{unregisterClient2, p0.d}, 389111715, -389111715, System.identityHashCode(unregisterClient2)));
            }
            p0.AFKeystoreWrapper(getUnregisterClient().AFKeystoreWrapper());
            boolean z = this.AFLogger.contains(AFd1bSDK.LAUNCH) || this.AFLogger.contains(AFd1bSDK.CONVERSION);
            if (getW() && z) {
                p0.unregisterClient(this.i.AFKeystoreWrapper.AFLogger("appsFlyerCount", 0));
            }
            if (p0.registerClient()) {
                Map<String, Object> map = p0.d;
                map.getClass();
                Map<String, Object> mapAFLogger = AFj1iSDK.AFLogger(map);
                AFd1jSDK aFd1jSDK = this.unregisterClient;
                AFd1aSDK aFd1aSDK = new AFd1aSDK(aFd1jSDK.d(), aFd1jSDK.registerClient(), AFd1jSDK.d == null ? AFd1dSDK.DEFAULT : AFd1dSDK.API);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("name", aFd1aSDK.AFLogger);
                AFd1dSDK aFd1dSDK = aFd1aSDK.registerClient;
                if (aFd1dSDK != AFd1dSDK.DEFAULT) {
                    jSONObject.put("method", aFd1dSDK.unregisterClient);
                }
                String str = aFd1aSDK.unregisterClient;
                if (str != null && !StringsKt.w(str)) {
                    jSONObject.put("prefix", aFd1aSDK.unregisterClient);
                }
                mapAFLogger.put("host", jSONObject);
            }
            String strAFLogger = this.i.AFLogger("AF_PREINSTALL_DISABLED");
            if (strAFLogger != null ? Boolean.parseBoolean(strAFLogger) : false) {
                Map<String, Object> map2 = p0.d;
                map2.getClass();
                AFj1iSDK.AFLogger(map2).put("preinstall_disabled", Boolean.TRUE);
            }
            AFf1eSDK aFf1eSDK = this.AFKeystoreWrapper;
            Map<String, Object> map3 = p0.d;
            map3.getClass();
            AFe1zSDK aFe1zSDKAFKeystoreWrapper = p0.AFKeystoreWrapper();
            aFe1zSDKAFKeystoreWrapper.getClass();
            aFf1eSDK.d(map3, aFe1zSDKAFKeystoreWrapper);
        } catch (Throwable th2) {
            AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.QUEUE, "Error while preparing to send event", th2, true, true, false, false, 64, null);
        }
    }

    public void e(AFh1pSDK p0) {
        p0.getClass();
        AFg1rSDK aFg1rSDK = this.w;
        Map<String, Object> map = p0.d;
        map.getClass();
        aFg1rSDK.unregisterClient(map);
    }

    /* JADX INFO: renamed from: getLevel, reason: from getter */
    public final AFc1kSDK getE() {
        return this.e;
    }

    public void registerClient(AFh1pSDK p0) {
        p0.getClass();
        AFg1rSDK aFg1rSDK = this.w;
        Map<String, Object> map = p0.d;
        map.getClass();
        aFg1rSDK.d(map);
    }

    public void unregisterClient(AFh1pSDK p0) {
        p0.getClass();
        this.w.AFKeystoreWrapper(p0);
    }

    public void v(AFh1pSDK p0) {
        p0.getClass();
        this.w.d(p0);
    }

    /* JADX INFO: renamed from: values, reason: from getter */
    public final AFg1rSDK getW() {
        return this.w;
    }

    @Override // com.appsflyer.internal.AFe1kSDK
    public boolean e() {
        return true;
    }

    public void AFLogger(AFh1pSDK p0) {
        p0.getClass();
        this.w.AFLogger(p0);
    }

    public /* synthetic */ AFf1tSDK(AFh1pSDK aFh1pSDK, AFc1bSDK aFc1bSDK, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(aFh1pSDK, aFc1bSDK, (i2 & 4) != 0 ? null : str);
    }
}
