package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.sdk_base.logger.LogTag;
import com.appsflyer.share.network.http.ResponseNetwork;

/* JADX INFO: loaded from: classes.dex */
public final class AFd1eSDK implements AFe1vSDK {
    private final AppsFlyerProperties AFKeystoreWrapper;
    private final AFe1wSDK AFLogger;
    private final AFc1bSDK d;
    private final AFc1kSDK registerClient;

    public AFd1eSDK(AFc1kSDK aFc1kSDK, AppsFlyerProperties appsFlyerProperties, AFe1wSDK aFe1wSDK, AFc1bSDK aFc1bSDK) {
        aFc1kSDK.getClass();
        appsFlyerProperties.getClass();
        aFe1wSDK.getClass();
        aFc1bSDK.getClass();
        this.registerClient = aFc1kSDK;
        this.AFKeystoreWrapper = appsFlyerProperties;
        this.AFLogger = aFe1wSDK;
        this.d = aFc1bSDK;
    }

    @Override // com.appsflyer.internal.AFe1vSDK
    public final void AFKeystoreWrapper(AFe1ySDK<?> aFe1ySDK, AFd1cSDK aFd1cSDK) {
        AFg1sSDK aFg1sSDKD;
        aFe1ySDK.getClass();
        aFd1cSDK.getClass();
        if (!(aFe1ySDK instanceof AFf1tSDK)) {
            if (!(aFe1ySDK instanceof AFg1lSDK) || aFd1cSDK == AFd1cSDK.SUCCESS) {
                return;
            }
            this.AFLogger.d(new AFg1mSDK(this.d));
            return;
        }
        AFf1tSDK aFf1tSDK = (AFf1tSDK) aFe1ySDK;
        if (aFd1cSDK == AFd1cSDK.SUCCESS) {
            this.registerClient.d("sentSuccessfully", "true");
            if (!(aFf1tSDK instanceof AFf1qSDK) && (aFg1sSDKD = new AFg1vSDK().d()) != null && aFg1sSDKD.AFLogger) {
                String str = aFg1sSDKD.AFKeystoreWrapper;
                AFLogger.INSTANCE.d(LogTag.UNINSTALL, "Resending Uninstall token to AF servers: ".concat(String.valueOf(str)));
                AFc1aSDK aFc1aSDK = AFa1tSDK.d().AFKeystoreWrapper;
                aFc1aSDK.afWarnLog().d(new AFf1qSDK(str, aFc1aSDK));
            }
            ResponseNetwork responseNetwork = ((AFe1kSDK) aFf1tSDK).v;
            if (responseNetwork != null) {
                AFa1rSDK.AFKeystoreWrapper((String) responseNetwork.getBody(), this.AFKeystoreWrapper);
            }
        }
    }

    @Override // com.appsflyer.internal.AFe1vSDK
    public final void d(AFe1ySDK<?> aFe1ySDK) {
        aFe1ySDK.getClass();
    }

    @Override // com.appsflyer.internal.AFe1vSDK
    public final void registerClient(AFe1ySDK<?> aFe1ySDK) {
        aFe1ySDK.getClass();
    }

    @Override // com.appsflyer.internal.AFe1vSDK
    public final void unregisterClient(AFe1ySDK<?> aFe1ySDK) {
        aFe1ySDK.getClass();
    }
}
