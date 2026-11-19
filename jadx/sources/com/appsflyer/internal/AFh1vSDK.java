package com.appsflyer.internal;

import com.appsflyer.sdk_base.logger.AFLoggerBase;
import com.appsflyer.sdk_base.logger.LogTag;

/* JADX INFO: loaded from: classes.dex */
public final class AFh1vSDK extends AFLoggerBase {
    private final AFc1bSDK AFKeystoreWrapper;
    private final boolean AFLogger;

    public AFh1vSDK(AFc1bSDK aFc1bSDK) {
        aFc1bSDK.getClass();
        this.AFKeystoreWrapper = aFc1bSDK;
        this.AFLogger = true;
    }

    @Override // com.appsflyer.sdk_base.logger.AFLoggerBase
    public final void d(LogTag logTag, String str, boolean z) {
        logTag.getClass();
        str.getClass();
        if (z) {
            this.AFKeystoreWrapper.AFLoggerLogLevel().AFLogger("D", extendedMsg(str, logTag));
        }
    }

    @Override // com.appsflyer.sdk_base.logger.AFLoggerBase
    public final void e(LogTag logTag, String str, Throwable th, boolean z, boolean z2, boolean z3, boolean z4) {
        logTag.getClass();
        str.getClass();
        th.getClass();
        if (z4) {
            this.AFKeystoreWrapper.AFLoggerLogLevel().AFLogger("E", extendedMsg(str, logTag));
        }
        if (z4) {
            this.AFKeystoreWrapper.AFLoggerLogLevel().registerClient(th);
        }
    }

    @Override // com.appsflyer.sdk_base.logger.AFLoggerBase
    public final void force(LogTag logTag, String str) {
        logTag.getClass();
        str.getClass();
        this.AFKeystoreWrapper.AFLoggerLogLevel().AFLogger("F", extendedMsg(str, logTag));
    }

    @Override // com.appsflyer.sdk_base.logger.AFLoggerBase
    public final boolean getShouldExtendMsg() {
        return this.AFLogger;
    }

    @Override // com.appsflyer.sdk_base.logger.AFLoggerBase
    public final void i(LogTag logTag, String str, boolean z) {
        logTag.getClass();
        str.getClass();
        if (z) {
            this.AFKeystoreWrapper.AFLoggerLogLevel().AFLogger("I", extendedMsg(str, logTag));
        }
    }

    @Override // com.appsflyer.sdk_base.logger.AFLoggerBase
    public final void v(LogTag logTag, String str, boolean z) {
        logTag.getClass();
        str.getClass();
        if (z) {
            this.AFKeystoreWrapper.AFLoggerLogLevel().AFLogger("V", extendedMsg(str, logTag));
        }
    }

    @Override // com.appsflyer.sdk_base.logger.AFLoggerBase
    public final void w(LogTag logTag, String str, boolean z) {
        logTag.getClass();
        str.getClass();
        if (z) {
            this.AFKeystoreWrapper.AFLoggerLogLevel().AFLogger("W", extendedMsg(str, logTag));
        }
    }
}
