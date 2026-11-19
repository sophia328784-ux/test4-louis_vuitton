package com.appsflyer.internal;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.appsflyer.AFLogger;
import com.appsflyer.sdk_base.logger.LogTag;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public final class AFg1pSDK implements AFg1wSDK {
    private static IntentFilter unregisterClient = new IntentFilter("android.intent.action.BATTERY_CHANGED");

    @Override // com.appsflyer.internal.AFg1wSDK
    public final AFg1wSDK.AFa1vSDK registerClient(Context context) {
        String str = null;
        float f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        try {
            Intent intentRegisterReceiver = context.registerReceiver(null, unregisterClient);
            if (intentRegisterReceiver != null) {
                if (2 == intentRegisterReceiver.getIntExtra("status", -1)) {
                    int intExtra = intentRegisterReceiver.getIntExtra("plugged", -1);
                    if (intExtra == 1) {
                        str = "ac";
                    } else if (intExtra != 2) {
                        str = intExtra != 4 ? "other" : "wireless";
                    } else {
                        str = "usb";
                    }
                } else {
                    str = "no";
                }
                int intExtra2 = intentRegisterReceiver.getIntExtra("level", -1);
                int intExtra3 = intentRegisterReceiver.getIntExtra("scale", -1);
                if (-1 != intExtra2 && -1 != intExtra3) {
                    f2 = (intExtra2 * 100.0f) / intExtra3;
                }
            }
        } catch (Throwable th) {
            AFLogger.INSTANCE.e(LogTag.DEVICE_DATA, "Failed to register receiver for battery status", th, false, false);
        }
        return new AFg1wSDK.AFa1vSDK(f2, str);
    }
}
