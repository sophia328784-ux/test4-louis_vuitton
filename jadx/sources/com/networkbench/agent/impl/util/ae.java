package com.networkbench.agent.impl.util;

import android.text.TextUtils;
import com.networkbench.agent.impl.crash.anomalous.AnomalousCallBackControl;

/* JADX INFO: loaded from: classes2.dex */
public class ae {
    public static String a() {
        return b(System.currentTimeMillis());
    }

    private static String b(long j2) {
        if (AnomalousCallBackControl.getInstance().getErrorIdGenerateBlock() == null) {
            return c(j2);
        }
        String uuidCallBack = AnomalousCallBackControl.getInstance().getUuidCallBack();
        if (TextUtils.isEmpty(uuidCallBack)) {
            return c(j2);
        }
        return uuidCallBack.length() > 64 ? uuidCallBack.substring(0, 64) : uuidCallBack;
    }

    private static String c(long j2) {
        try {
            if (j2 <= 0) {
                return String.valueOf(System.currentTimeMillis()) + String.valueOf((int) (((Math.random() * 9.0d) + 1.0d) * 100000.0d));
            }
            return String.valueOf(j2) + String.valueOf((int) (((Math.random() * 9.0d) + 1.0d) * 100000.0d));
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String a(long j2) {
        return b(j2);
    }
}
