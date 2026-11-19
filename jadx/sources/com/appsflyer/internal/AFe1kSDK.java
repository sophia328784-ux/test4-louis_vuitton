package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import com.appsflyer.internal.components.network.http.exceptions.HttpException;
import com.appsflyer.internal.components.network.http.exceptions.ParsingException;
import com.appsflyer.internal.components.queue.exceptions.CreateHttpCallException;
import com.appsflyer.sdk_base.logger.AFLoggerBase;
import com.appsflyer.sdk_base.logger.LogTag;
import com.appsflyer.share.attribution.AppsFlyerRequestListener;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0014\b'\u0018\u0000 D*\u0004\b\u0000\u0010\u00012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00030\u0002:\u0001DBS\b\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b\u0014\u0010\u0015B1\b\u0014\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006\u0012\u0006\u0010\t\u001a\u00020\u0016\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0014\u0010\u0017B;\b\u0014\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006\u0012\u0006\u0010\t\u001a\u00020\u0016\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0010\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0014\u0010\u0018J\u000f\u0010\u001a\u001a\u00020\u0019H\u0010¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001d\u001a\u00020\u001cH\u0015¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010 \u001a\u00020\u001fH\u0014¢\u0006\u0004\b \u0010!J\u001f\u0010#\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\"2\u0006\u0010\u0005\u001a\u00020\u0010H%¢\u0006\u0004\b#\u0010$J\u0011\u0010&\u001a\u0004\u0018\u00010%H%¢\u0006\u0004\b&\u0010'J\u000f\u0010(\u001a\u00020\u001fH$¢\u0006\u0004\b(\u0010!J\u000f\u0010*\u001a\u00020)H\u0010¢\u0006\u0004\b*\u0010+J\u000f\u0010#\u001a\u00020\u001fH\u0010¢\u0006\u0004\b#\u0010!J\u0017\u0010-\u001a\u00020\u00192\u0006\u0010\u0005\u001a\u00020,H\u0015¢\u0006\u0004\b-\u0010.J\u000f\u0010/\u001a\u00020\u0019H\u0015¢\u0006\u0004\b/\u0010\u001bJ\u0017\u0010*\u001a\u00020\u00192\u0006\u0010\u0005\u001a\u000200H\u0015¢\u0006\u0004\b*\u00101J\u000f\u00102\u001a\u00020\u0019H\u0002¢\u0006\u0004\b2\u0010\u001bR\u001a\u0010*\u001a\u00020\b8\u0005X\u0085\u0004¢\u0006\f\n\u0004\b/\u00103\u001a\u0004\b4\u00105R\u001a\u0010:\u001a\u00020\n8\u0005X\u0085\u0004¢\u0006\f\n\u0004\b6\u00107\u001a\u0004\b8\u00109R\u001a\u0010-\u001a\u00020\f8\u0005X\u0085\u0004¢\u0006\f\n\u0004\b;\u0010<\u001a\u0004\b=\u0010>R\u0014\u0010#\u001a\u00020\u000e8\u0004X\u0085\u0004¢\u0006\u0006\n\u0004\b(\u0010?R\u0016\u0010\u001d\u001a\u0004\u0018\u00010\u00128\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b4\u0010@R\u001e\u00106\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00038\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\bA\u0010BR\u0018\u0010A\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\b&\u0010C"}, d2 = {"Lcom/appsflyer/internal/AFe1kSDK;", "Result", "Lcom/appsflyer/internal/AFe1ySDK;", "Lcom/appsflyer/internal/AFd1fSDK;", "Lcom/appsflyer/internal/AFe1zSDK;", "p0", "", "p1", "Lcom/appsflyer/internal/AFd1sSDK;", "p2", "Lcom/appsflyer/internal/AFf1fSDK;", "p3", "Lcom/appsflyer/internal/AFd1uSDK;", "p4", "Lcom/appsflyer/internal/AFc1vSDK;", "p5", "", "p6", "Lcom/appsflyer/internal/AFi1vSDK;", "p7", "<init>", "(Lcom/appsflyer/internal/AFe1zSDK;[Lcom/appsflyer/internal/AFe1zSDK;Lcom/appsflyer/internal/AFd1sSDK;Lcom/appsflyer/internal/AFf1fSDK;Lcom/appsflyer/internal/AFd1uSDK;Lcom/appsflyer/internal/AFc1vSDK;Ljava/lang/String;Lcom/appsflyer/internal/AFi1vSDK;)V", "Lcom/appsflyer/internal/AFc1bSDK;", "(Lcom/appsflyer/internal/AFe1zSDK;[Lcom/appsflyer/internal/AFe1zSDK;Lcom/appsflyer/internal/AFc1bSDK;Ljava/lang/String;)V", "(Lcom/appsflyer/internal/AFe1zSDK;[Lcom/appsflyer/internal/AFe1zSDK;Lcom/appsflyer/internal/AFc1bSDK;Ljava/lang/String;Ljava/lang/String;)V", "", "w", "()V", "Lcom/appsflyer/internal/AFd1cSDK;", "registerClient", "()Lcom/appsflyer/internal/AFd1cSDK;", "", "a_", "()Z", "Lcom/appsflyer/internal/AFd1pSDK;", "AFLogger", "(Ljava/lang/String;)Lcom/appsflyer/internal/AFd1pSDK;", "Lcom/appsflyer/share/attribution/AppsFlyerRequestListener;", "afWarnLog", "()Lcom/appsflyer/share/attribution/AppsFlyerRequestListener;", "e", "", NBSSpanMetricUnit.Day, "()J", "", "AFKeystoreWrapper", "(Ljava/lang/Throwable;)V", "force", "Lcom/appsflyer/internal/AFd1oSDK;", "(Lcom/appsflyer/internal/AFd1oSDK;)V", "AppsFlyerLib", "Lcom/appsflyer/internal/AFd1sSDK;", "afDebugLog", "()Lcom/appsflyer/internal/AFd1sSDK;", "v", "Lcom/appsflyer/internal/AFf1fSDK;", "afInfoLog", "()Lcom/appsflyer/internal/AFf1fSDK;", "unregisterClient", "AFLoggerLogLevel", "Lcom/appsflyer/internal/AFd1uSDK;", "afErrorLog", "()Lcom/appsflyer/internal/AFd1uSDK;", "Lcom/appsflyer/internal/AFc1vSDK;", "Lcom/appsflyer/internal/AFi1vSDK;", "i", "Lcom/appsflyer/internal/AFd1fSDK;", "Ljava/lang/String;", "AFa1vSDK"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class AFe1kSDK<Result> extends AFe1ySDK<AFd1fSDK<Result>> {

    /* JADX INFO: renamed from: AFLoggerLogLevel, reason: from kotlin metadata */
    private final AFd1uSDK AFKeystoreWrapper;

    /* JADX INFO: renamed from: afDebugLog, reason: from kotlin metadata */
    private final AFi1vSDK registerClient;

    /* JADX INFO: renamed from: afWarnLog, reason: from kotlin metadata */
    private String i;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    protected AFc1vSDK AFLogger;

    /* JADX INFO: renamed from: force, reason: from kotlin metadata */
    private final AFd1sSDK d;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    public AFd1fSDK<Result> v;

    /* JADX INFO: renamed from: v, reason: from kotlin metadata */
    private final AFf1fSDK unregisterClient;

    /* JADX WARN: Illegal instructions before constructor call */
    public AFe1kSDK(AFe1zSDK aFe1zSDK, AFe1zSDK[] aFe1zSDKArr, AFc1bSDK aFc1bSDK, String str) {
        aFe1zSDK.getClass();
        aFe1zSDKArr.getClass();
        aFc1bSDK.getClass();
        AFd1sSDK aFd1sSDKUnregisterClient = aFc1bSDK.unregisterClient();
        aFd1sSDKUnregisterClient.getClass();
        AFf1fSDK aFf1fSDKAppsFlyerLib = aFc1bSDK.AppsFlyerLib();
        aFf1fSDKAppsFlyerLib.getClass();
        AFd1uSDK aFd1uSDKAFLoggerLogLevel = aFc1bSDK.AFLoggerLogLevel();
        aFd1uSDKAFLoggerLogLevel.getClass();
        AFc1vSDK aFc1vSDKValues = aFc1bSDK.values();
        aFc1vSDKValues.getClass();
        this(aFe1zSDK, aFe1zSDKArr, aFd1sSDKUnregisterClient, aFf1fSDKAppsFlyerLib, aFd1uSDKAFLoggerLogLevel, aFc1vSDKValues, str, aFc1bSDK.getInstance());
    }

    private static void AppsFlyerLib() {
        AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.HTTP_CLIENT, "Failed to create a cached HTTP call", new CreateHttpCallException("createHttpCall returned null"), false, false, false, false, 96, null);
    }

    private void d(AFd1oSDK p0) {
        p0.getClass();
        String str = this.i;
        this.i = this.AFLogger.registerClient(new AFc1sSDK(p0.d, p0.unregisterClient, "7.0.1", this.unregisterClient, p0.AFLogger));
        if (str != null) {
            this.AFLogger.AFLogger(str);
        }
    }

    @Override // com.appsflyer.internal.AFe1ySDK
    public final void AFKeystoreWrapper(Throwable p0) {
        String message;
        p0.getClass();
        boolean z = p0 instanceof HttpException;
        boolean z2 = !z;
        if (p0 instanceof AFe1qSDK) {
            AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.HTTP_CLIENT, "AppsFlyer SDK is stopped: the request was not sent to the server", p0, true, false, false, false, 96, null);
        } else {
            AFLogger aFLogger = AFLogger.INSTANCE;
            LogTag logTag = LogTag.HTTP_CLIENT;
            AFLoggerBase.e$default(aFLogger, logTag, "Error while sending request to server: " + p0, p0, false, false, z2, false, 64, null);
            AFLoggerBase.w$default(aFLogger, logTag, "Error while sending request to server: " + p0, false, 4, null);
        }
        AppsFlyerRequestListener appsFlyerRequestListenerAfWarnLog = afWarnLog();
        if (appsFlyerRequestListenerAfWarnLog == null) {
            return;
        }
        if (z) {
            message = AFe1hSDK.unregisterClient((HttpException) p0, this.registerClient);
        } else {
            message = p0.getMessage();
            if (message == null) {
                message = "";
            }
        }
        appsFlyerRequestListenerAfWarnLog.onError(40, message);
    }

    public abstract AFd1pSDK<Result> AFLogger(String p0);

    @Override // com.appsflyer.internal.AFe1ySDK
    public boolean AFLogger() {
        if (getV() instanceof AFe1qSDK) {
            return false;
        }
        if (this.e == AFd1cSDK.TIMEOUT) {
            return true;
        }
        Throwable v = getV();
        return (v instanceof IOException) && !(v instanceof ParsingException);
    }

    public boolean a_() {
        return true;
    }

    /* JADX INFO: renamed from: afDebugLog, reason: from getter */
    public final AFd1sSDK getD() {
        return this.d;
    }

    /* JADX INFO: renamed from: afErrorLog, reason: from getter */
    public final AFd1uSDK getAFKeystoreWrapper() {
        return this.AFKeystoreWrapper;
    }

    /* JADX INFO: renamed from: afInfoLog, reason: from getter */
    public final AFf1fSDK getUnregisterClient() {
        return this.unregisterClient;
    }

    public abstract AppsFlyerRequestListener afWarnLog();

    public abstract boolean e();

    @Override // com.appsflyer.internal.AFe1ySDK
    public void force() {
        String str;
        if ((this.e == AFd1cSDK.SUCCESS || !AFLogger()) && (str = this.i) != null) {
            this.AFLogger.AFLogger(str);
        }
    }

    @Override // com.appsflyer.internal.AFe1ySDK
    public AFd1cSDK registerClient() throws Exception {
        if (a_() && this.unregisterClient.AFLogger()) {
            AppsFlyerRequestListener appsFlyerRequestListenerAfWarnLog = afWarnLog();
            if (appsFlyerRequestListenerAfWarnLog != null) {
                appsFlyerRequestListenerAfWarnLog.onError(11, "Skipping event because 'isStopped' is true");
            }
            throw new AFe1qSDK();
        }
        AFf1fSDK aFf1fSDK = this.unregisterClient;
        String str = (String) AFf1fSDK.unregisterClient(new Object[]{aFf1fSDK}, -1660886869, 1660886871, System.identityHashCode(aFf1fSDK));
        if (str == null || StringsKt.w(str)) {
            AppsFlyerRequestListener appsFlyerRequestListenerAfWarnLog2 = afWarnLog();
            if (appsFlyerRequestListenerAfWarnLog2 != null) {
                appsFlyerRequestListenerAfWarnLog2.onError(41, "No dev key");
            }
            throw new AFe1uSDK();
        }
        AFd1pSDK<Result> aFd1pSDKAFLogger = AFLogger(str);
        if (aFd1pSDKAFLogger == null) {
            AppsFlyerLib();
            return AFd1cSDK.FAILURE;
        }
        if (e()) {
            AFd1oSDK aFd1oSDK = aFd1pSDKAFLogger.unregisterClient;
            aFd1oSDK.getClass();
            d(aFd1oSDK);
        }
        AFd1fSDK<Result> aFd1fSDKAFKeystoreWrapper = aFd1pSDKAFLogger.AFKeystoreWrapper();
        aFd1fSDKAFKeystoreWrapper.getClass();
        this.v = aFd1fSDKAFKeystoreWrapper;
        String string = aFd1fSDKAFKeystoreWrapper.getBody().toString();
        AFd1uSDK aFd1uSDK = this.AFKeystoreWrapper;
        String str2 = aFd1pSDKAFLogger.unregisterClient.d;
        str2.getClass();
        aFd1uSDK.AFKeystoreWrapper(str2, aFd1fSDKAFKeystoreWrapper.getStatusCode(), string);
        AppsFlyerRequestListener appsFlyerRequestListenerAfWarnLog3 = afWarnLog();
        if (appsFlyerRequestListenerAfWarnLog3 != null) {
            if (aFd1fSDKAFKeystoreWrapper.isSuccessful()) {
                appsFlyerRequestListenerAfWarnLog3.onSuccess();
            } else {
                appsFlyerRequestListenerAfWarnLog3.onError(50, "Status code failure " + aFd1fSDKAFKeystoreWrapper.getStatusCode());
            }
        }
        return aFd1fSDKAFKeystoreWrapper.isSuccessful() ? AFd1cSDK.SUCCESS : AFd1cSDK.FAILURE;
    }

    @Override // com.appsflyer.internal.AFe1ySDK
    public final void w() {
        super.w();
        if (e()) {
            AFf1fSDK aFf1fSDK = this.unregisterClient;
            String str = (String) AFf1fSDK.unregisterClient(new Object[]{aFf1fSDK}, -1660886869, 1660886871, System.identityHashCode(aFf1fSDK));
            if (str == null || StringsKt.w(str)) {
                return;
            }
            AFd1pSDK<Result> aFd1pSDKAFLogger = AFLogger(str);
            if (aFd1pSDKAFLogger == null) {
                AppsFlyerLib();
                return;
            }
            AFd1oSDK aFd1oSDK = aFd1pSDKAFLogger.unregisterClient;
            aFd1oSDK.getClass();
            d(aFd1oSDK);
        }
    }

    @Override // com.appsflyer.internal.AFe1ySDK
    public long d() {
        return 60000L;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private AFe1kSDK(AFe1zSDK aFe1zSDK, AFe1zSDK[] aFe1zSDKArr, AFd1sSDK aFd1sSDK, AFf1fSDK aFf1fSDK, AFd1uSDK aFd1uSDK, AFc1vSDK aFc1vSDK, String str, AFi1vSDK aFi1vSDK) {
        super(aFe1zSDK, aFe1zSDKArr, str);
        aFe1zSDK.getClass();
        aFe1zSDKArr.getClass();
        aFd1sSDK.getClass();
        aFf1fSDK.getClass();
        aFd1uSDK.getClass();
        aFc1vSDK.getClass();
        this.d = aFd1sSDK;
        this.unregisterClient = aFf1fSDK;
        this.AFKeystoreWrapper = aFd1uSDK;
        this.AFLogger = aFc1vSDK;
        this.registerClient = aFi1vSDK;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AFe1kSDK(AFe1zSDK aFe1zSDK, AFe1zSDK[] aFe1zSDKArr, AFc1bSDK aFc1bSDK, String str, String str2) {
        this(aFe1zSDK, aFe1zSDKArr, aFc1bSDK, str);
        aFe1zSDK.getClass();
        aFe1zSDKArr.getClass();
        aFc1bSDK.getClass();
        this.i = str2;
    }
}
