package com.appsflyer.internal;

import com.appsflyer.share.LinkGenerator;
import com.appsflyer.share.attribution.AppsFlyerRequestListener;
import com.appsflyer.share.network.http.ResponseNetwork;
import java.util.Map;
import java.util.UUID;
import kotlin.collections.MapsKt;

/* JADX INFO: loaded from: classes.dex */
public final class AFe1pSDK extends AFe1kSDK<String> {
    private final String AFLoggerLogLevel;
    private final LinkGenerator afDebugLog;
    private final LinkGenerator.ResponseListener afErrorLog;
    private final Map<String, String> afInfoLog;
    private final UUID force;
    private final String v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AFe1pSDK(AFc1bSDK aFc1bSDK, UUID uuid, String str, Map<String, String> map, String str2, LinkGenerator.ResponseListener responseListener, LinkGenerator linkGenerator) {
        super(AFd1bSDK.ONELINK, new AFe1zSDK[]{AFd1bSDK.RC_CDN}, aFc1bSDK, uuid.toString());
        aFc1bSDK.getClass();
        uuid.getClass();
        str.getClass();
        map.getClass();
        linkGenerator.getClass();
        this.force = uuid;
        this.v = str;
        this.AFLoggerLogLevel = str2;
        this.afErrorLog = responseListener;
        this.afDebugLog = linkGenerator;
        this.afInfoLog = MapsKt.o(map);
    }

    @Override // com.appsflyer.internal.AFe1kSDK
    public final AFd1pSDK<String> AFLogger(String str) {
        str.getClass();
        AFd1pSDK<String> aFd1pSDKUnregisterClient = getCom.networkbench.agent.impl.NBSSpanMetricUnit.Day java.lang.String().unregisterClient(this.v, this.afInfoLog, this.AFLoggerLogLevel, this.force, str);
        aFd1pSDKUnregisterClient.getClass();
        return aFd1pSDKUnregisterClient;
    }

    @Override // com.appsflyer.internal.AFe1kSDK
    public final boolean a_() {
        return false;
    }

    @Override // com.appsflyer.internal.AFe1kSDK
    public final AppsFlyerRequestListener afWarnLog() {
        return null;
    }

    @Override // com.appsflyer.internal.AFe1kSDK, com.appsflyer.internal.AFe1ySDK
    public final long d() {
        return AFe1oSDK.AFKeystoreWrapper;
    }

    @Override // com.appsflyer.internal.AFe1kSDK
    public final boolean e() {
        return false;
    }

    @Override // com.appsflyer.internal.AFe1kSDK, com.appsflyer.internal.AFe1ySDK
    public final void force() {
        super.force();
        LinkGenerator.ResponseListener responseListener = this.afErrorLog;
        if (responseListener != null) {
            ResponseNetwork responseNetwork = ((AFe1kSDK) this).v;
            if (this.e != AFd1cSDK.SUCCESS || responseNetwork == null) {
                responseListener.onResponseError(this.afDebugLog.generateLink());
            } else {
                responseListener.onResponse((String) responseNetwork.getBody());
            }
        }
    }
}
