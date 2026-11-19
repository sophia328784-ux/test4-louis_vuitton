package com.sensorsdata.analytics.android.sdk.util;

import android.content.Context;
import com.sensorsdata.analytics.android.sdk.SALog;

/* JADX INFO: loaded from: classes3.dex */
public class SADisplayUtil {
    public static int dip2px(Context context, float f2) {
        return (int) ((f2 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static String getStringResource(Context context, int i2) {
        try {
            return context.getString(i2);
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
            return "";
        }
    }
}
