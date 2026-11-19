package com.appsflyer.internal;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class AFg1nSDK implements AFg1qSDK {
    private Map<String, String> unregisterClient = new LinkedHashMap();

    @Override // com.appsflyer.internal.AFg1qSDK
    public final Map<String, String> registerClient(Context context) {
        context.getClass();
        if (this.unregisterClient.isEmpty()) {
            Resources resources = context.getResources();
            DisplayMetrics displayMetrics = resources.getDisplayMetrics();
            int i2 = resources.getConfiguration().screenLayout & 15;
            this.unregisterClient.put("xdp", String.valueOf(displayMetrics.xdpi));
            this.unregisterClient.put("ydp", String.valueOf(displayMetrics.ydpi));
            this.unregisterClient.put("x_px", String.valueOf(displayMetrics.widthPixels));
            this.unregisterClient.put("y_px", String.valueOf(displayMetrics.heightPixels));
            this.unregisterClient.put("d_dpi", String.valueOf(displayMetrics.densityDpi));
            this.unregisterClient.put("size", String.valueOf(i2));
        }
        return this.unregisterClient;
    }
}
