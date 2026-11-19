package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import com.appsflyer.sdk_base.logger.AFLoggerBase;
import com.appsflyer.sdk_base.logger.LogTag;

/* JADX INFO: loaded from: classes.dex */
public final class AFh1tSDK implements AFh1wSDK {
    private AFh1ySDK AFKeystoreWrapper;
    private AFh1vSDK AFLogger;
    private AFh1zSDK d;
    private final AFc1bSDK registerClient;

    public AFh1tSDK(AFc1bSDK aFc1bSDK) {
        aFc1bSDK.getClass();
        this.registerClient = aFc1bSDK;
    }

    @Override // com.appsflyer.internal.AFh1wSDK
    public final void AFKeystoreWrapper() {
        AFh1zSDK aFh1zSDK = this.d;
        if (aFh1zSDK != null) {
            AFLogger aFLogger = AFLogger.INSTANCE;
            AFLoggerBase.v$default(aFLogger, LogTag.RD, "Releasing Proxy Manager Client", false, 4, null);
            aFLogger.unregisterClient(aFh1zSDK);
            this.d = null;
        }
    }

    @Override // com.appsflyer.internal.AFh1wSDK
    public final void AFLogger() {
        AFLogger aFLogger = AFLogger.INSTANCE;
        if (this.AFLogger == null) {
            this.AFLogger = new AFh1vSDK(this.registerClient);
        }
        AFh1vSDK aFh1vSDK = this.AFLogger;
        aFh1vSDK.getClass();
        aFLogger.registerClient(aFh1vSDK);
    }

    @Override // com.appsflyer.internal.AFh1wSDK
    public final void d() {
        AFh1ySDK aFh1ySDK = this.AFKeystoreWrapper;
        if (aFh1ySDK != null) {
            AFLogger aFLogger = AFLogger.INSTANCE;
            AFLoggerBase.v$default(aFLogger, LogTag.EXCEPTION_MANAGER, "Releasing Exception Manager Client", false, 4, null);
            aFLogger.unregisterClient(aFh1ySDK);
            this.AFKeystoreWrapper = null;
        }
    }

    @Override // com.appsflyer.internal.AFh1wSDK
    public final void e() {
        AFLogger aFLogger = AFLogger.INSTANCE;
        if (this.d == null) {
            AFc1iSDK aFc1iSDKAFLogger = this.registerClient.AFLogger();
            aFc1iSDKAFLogger.getClass();
            this.d = new AFh1zSDK(aFc1iSDKAFLogger);
        }
        AFh1zSDK aFh1zSDK = this.d;
        aFh1zSDK.getClass();
        aFLogger.registerClient(aFh1zSDK);
    }

    @Override // com.appsflyer.internal.AFh1wSDK
    public final void registerClient() {
        AFLogger aFLogger = AFLogger.INSTANCE;
        if (this.AFKeystoreWrapper == null) {
            this.AFKeystoreWrapper = new AFh1ySDK(this.registerClient);
        }
        AFh1ySDK aFh1ySDK = this.AFKeystoreWrapper;
        aFh1ySDK.getClass();
        aFLogger.registerClient(aFh1ySDK);
    }

    @Override // com.appsflyer.internal.AFh1wSDK
    public final void unregisterClient() {
        AFh1vSDK aFh1vSDK = this.AFLogger;
        if (aFh1vSDK != null) {
            AFLogger aFLogger = AFLogger.INSTANCE;
            AFLoggerBase.v$default(aFLogger, LogTag.RD, "Releasing Proxy Manager Client", false, 4, null);
            aFLogger.unregisterClient(aFh1vSDK);
            this.AFLogger = null;
        }
    }
}
