package com.appsflyer.internal;

import android.content.Context;
import com.appsflyer.AFLogger;
import com.appsflyer.lvl.AppsFlyerLVL;
import com.appsflyer.sdk_base.logger.LogTag;

/* JADX INFO: loaded from: classes.dex */
public final class AFf1cSDK {

    public interface AFa1zSDK {
        void AFKeystoreWrapper(String str, Exception exc);

        void registerClient(String str, String str2);
    }

    public final boolean AFLogger(long j2, Context context, final AFa1zSDK aFa1zSDK) {
        try {
            AppsFlyerLVL.checkLicense(j2, context, new AppsFlyerLVL.resultListener() { // from class: com.appsflyer.internal.AFf1cSDK.5
                public final void onLvlFailure(Exception exc) {
                    aFa1zSDK.AFKeystoreWrapper("onLvlFailure with exception", exc);
                }

                public final void onLvlResult(String str, String str2) {
                    if (str != null && str2 != null) {
                        aFa1zSDK.registerClient(str, str2);
                        return;
                    }
                    AFa1zSDK aFa1zSDK2 = aFa1zSDK;
                    if (str2 == null) {
                        aFa1zSDK2.AFKeystoreWrapper("onLvlResult with error", new Exception("AFLVL Invalid signature"));
                    } else {
                        aFa1zSDK2.AFKeystoreWrapper("onLvlResult with error", new Exception("AFLVL Invalid signedData"));
                    }
                }
            });
            return true;
        } catch (Throwable th) {
            AFLogger.INSTANCE.e(LogTag.GENERAL, "Exception while getting LVL data", th);
            return false;
        }
    }
}
