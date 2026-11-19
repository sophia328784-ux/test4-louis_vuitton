package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import com.appsflyer.sdk_base.logger.AFLoggerBase;
import com.appsflyer.sdk_base.logger.LogTag;
import com.appsflyer.share.AppsFlyerConversionListener;
import defpackage.tr;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class AFg1kSDK {
    public static final void d(Map<String, ? extends Object> map, AppsFlyerConversionListener appsFlyerConversionListener) {
        map.getClass();
        if (appsFlyerConversionListener != null) {
            AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.GCD, "[GCD-A02] Calling onConversionDataSuccess with:\n" + map, false, 4, null);
            appsFlyerConversionListener.onConversionDataSuccess(map);
        }
    }

    public static final void registerClient(String str, AppsFlyerConversionListener appsFlyerConversionListener) {
        str.getClass();
        if (appsFlyerConversionListener != null) {
            AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.GCD, tr.g("[GCD-A02] Calling onConversionFailure with:\n", str), false, 4, null);
            appsFlyerConversionListener.onConversionDataFail(str);
        }
    }
}
