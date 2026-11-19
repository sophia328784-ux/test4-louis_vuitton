package com.appsflyer.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.appsflyer.AFLogger;
import com.appsflyer.sdk_base.logger.AFLoggerBase;
import com.appsflyer.sdk_base.logger.LogTag;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class AFg1zSDK implements AFg1xSDK {
    private final AFc1eSDK AFKeystoreWrapper;
    private final Context unregisterClient;

    public AFg1zSDK(Context context, AFc1eSDK aFc1eSDK) {
        context.getClass();
        aFc1eSDK.getClass();
        this.unregisterClient = context;
        this.AFKeystoreWrapper = aFc1eSDK;
    }

    @Override // com.appsflyer.internal.AFg1xSDK
    public final AFg1ySDK registerClient() {
        String string;
        if (!Intrinsics.c(this.AFKeystoreWrapper.afDebugLog, Boolean.TRUE)) {
            return null;
        }
        try {
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.unregisterClient);
            int i2 = defaultSharedPreferences.getInt("IABTCF_gdprApplies", -1);
            int i3 = defaultSharedPreferences.getInt("IABTCF_CmpSdkID", -1);
            int i4 = defaultSharedPreferences.getInt("IABTCF_PolicyVersion", -1);
            int i5 = defaultSharedPreferences.getInt("IABTCF_CmpSdkVersion", -1);
            String str = "";
            if (i2 == 1 && (string = defaultSharedPreferences.getString("IABTCF_TCString", "")) != null) {
                str = string;
            }
            return new AFg1ySDK(i4, i2, i3, i5, str);
        } catch (Exception e2) {
            AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.DMA, "TCF data collection exception", e2, false, false, false, false, 120, null);
            return null;
        }
    }
}
