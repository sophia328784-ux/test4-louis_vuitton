package com.appsflyer.internal;

import com.appsflyer.exception_manager.ExceptionManager;
import com.appsflyer.sdk_base.logger.AFLoggerBase;
import com.appsflyer.sdk_base.logger.LogTag;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class AFh1ySDK extends AFLoggerBase {
    private final AFc1bSDK unregisterClient;

    public AFh1ySDK(AFc1bSDK aFc1bSDK) {
        aFc1bSDK.getClass();
        this.unregisterClient = aFc1bSDK;
    }

    @Override // com.appsflyer.sdk_base.logger.AFLoggerBase
    public final void e(LogTag logTag, String str, Throwable th, boolean z, boolean z2, boolean z3, boolean z4) {
        logTag.getClass();
        str.getClass();
        th.getClass();
        if (z3) {
            if (StringsKt.w(str)) {
                str = "missing label";
            }
            String strWithTag = withTag(str, logTag);
            ExceptionManager entries = this.unregisterClient.getEntries();
            if (entries != null) {
                entries.storeNewException(th, strWithTag);
            }
        }
    }
}
