package com.appsflyer.internal;

import android.util.Base64;
import com.appsflyer.AFLogger;
import com.appsflyer.sdk_base.logger.AFLoggerBase;
import com.appsflyer.sdk_base.logger.LogTag;
import com.appsflyer.share.attribution.AppsFlyerRequestListener;
import com.appsflyer.share.network.http.ResponseNetwork;
import defpackage.tr;
import java.net.MalformedURLException;
import java.net.URL;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \u00152\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0015B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u001f\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\t2\u0006\u0010\u0004\u001a\u00020\u0002H\u0015¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0014¢\u0006\u0004\b\r\u0010\u000eJ\u0011\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0015¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\n\u001a\u00020\fH\u0010¢\u0006\u0004\b\n\u0010\u000eR\u0014\u0010\u0014\u001a\u00020\u00038\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013"}, d2 = {"Lcom/appsflyer/internal/AFf1sSDK;", "Lcom/appsflyer/internal/AFe1kSDK;", "", "Lcom/appsflyer/internal/AFh1nSDK;", "p0", "Lcom/appsflyer/internal/AFc1bSDK;", "p1", "<init>", "(Lcom/appsflyer/internal/AFh1nSDK;Lcom/appsflyer/internal/AFc1bSDK;)V", "Lcom/appsflyer/internal/AFd1pSDK;", "AFLogger", "(Ljava/lang/String;)Lcom/appsflyer/internal/AFd1pSDK;", "", "e", "()Z", "Lcom/appsflyer/share/attribution/AppsFlyerRequestListener;", "afWarnLog", "()Lcom/appsflyer/share/attribution/AppsFlyerRequestListener;", "v", "Lcom/appsflyer/internal/AFh1nSDK;", "registerClient", "AFa1vSDK_"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class AFf1sSDK extends AFe1kSDK<String> {

    /* JADX INFO: renamed from: AFa1vSDK_, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: v, reason: from kotlin metadata */
    private final AFh1nSDK registerClient;

    /* JADX WARN: Illegal instructions before constructor call */
    public AFf1sSDK(AFh1nSDK aFh1nSDK, AFc1bSDK aFc1bSDK) {
        aFh1nSDK.getClass();
        aFc1bSDK.getClass();
        AFe1zSDK aFe1zSDK = aFh1nSDK.AFLoggerLogLevel;
        AFe1zSDK aFe1zSDK2 = aFe1zSDK == null ? AFd1bSDK.CACHED_EVENT : aFe1zSDK;
        aFe1zSDK2.getClass();
        super(aFe1zSDK2, new AFe1zSDK[]{AFd1bSDK.RC_CDN}, aFc1bSDK, tr.h(aFh1nSDK.w, "-", Companion.AFLogger(aFh1nSDK)), aFh1nSDK.w);
        this.registerClient = aFh1nSDK;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0024  */
    /* JADX WARN: Code duplicated, block: B:21:0x0039  */
    /* JADX WARN: Code duplicated, block: B:28:0x0047  */
    @Override // com.appsflyer.internal.AFe1kSDK, com.appsflyer.internal.AFe1ySDK
    public final boolean AFLogger() {
        boolean z;
        AFe1zSDK aFe1zSDK;
        boolean z2;
        ResponseNetwork responseNetwork;
        if (!super.AFLogger()) {
            Object obj = this.registerClient.AFLoggerLogLevel;
            if (obj == null) {
                obj = AFd1bSDK.CACHED_EVENT;
            }
            if (obj != AFd1bSDK.ARS_VALIDATE || (responseNetwork = ((AFe1kSDK) this).v) == null) {
                ResponseNetwork responseNetwork2 = ((AFe1kSDK) this).v;
                if (this.e == AFd1cSDK.FAILURE || responseNetwork2 == null || responseNetwork2.getStatusCode() / 500 != 1) {
                    z = false;
                } else {
                    z = true;
                }
                aFe1zSDK = this.unregisterClient;
                if (aFe1zSDK != AFd1bSDK.CONVERSION || aFe1zSDK == AFd1bSDK.ATTR) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (z || !z2) {
                    return false;
                }
            } else {
                responseNetwork.getClass();
                if (responseNetwork.getStatusCode() != 424) {
                    ResponseNetwork responseNetwork3 = ((AFe1kSDK) this).v;
                    if (this.e == AFd1cSDK.FAILURE) {
                        z = false;
                    } else {
                        z = false;
                    }
                    aFe1zSDK = this.unregisterClient;
                    if (aFe1zSDK != AFd1bSDK.CONVERSION) {
                        z2 = true;
                    } else {
                        z2 = true;
                    }
                    if (z) {
                    }
                    return false;
                }
            }
        }
        return true;
    }

    @Override // com.appsflyer.internal.AFe1kSDK
    public final AppsFlyerRequestListener afWarnLog() {
        return this.registerClient.AFLogger;
    }

    @Override // com.appsflyer.internal.AFe1kSDK
    public final boolean e() {
        return false;
    }

    /* JADX INFO: renamed from: com.appsflyer.internal.AFf1sSDK$AFa1vSDK_, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\b"}, d2 = {"Lcom/appsflyer/internal/AFf1sSDK$AFa1vSDK_;", "", "<init>", "()V", "Lcom/appsflyer/internal/AFh1nSDK;", "p0", "", "AFLogger", "(Lcom/appsflyer/internal/AFh1nSDK;)Ljava/lang/String;"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static String AFLogger(AFh1nSDK p0) {
            try {
                return new URL(p0.f22654i).getHost();
            } catch (MalformedURLException unused) {
                return "";
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Override // com.appsflyer.internal.AFe1kSDK
    public final AFd1pSDK<String> AFLogger(String p0) {
        p0.getClass();
        String strEncodeToString = Base64.encodeToString(this.registerClient.force, 2);
        AFLoggerBase.i$default(AFLogger.INSTANCE, LogTag.CACHE, tr.g("cached data: ", strEncodeToString), false, 4, null);
        AFd1uSDK aFd1uSDKAfErrorLog = getAFKeystoreWrapper();
        String str = this.registerClient.f22654i;
        strEncodeToString.getClass();
        aFd1uSDKAfErrorLog.AFKeystoreWrapper(str, strEncodeToString);
        return getCom.networkbench.agent.impl.NBSSpanMetricUnit.Day java.lang.String().unregisterClient(this.registerClient);
    }
}
