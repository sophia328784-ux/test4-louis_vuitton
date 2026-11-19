package com.appsflyer.internal;

import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes.dex */
public interface AFc1kSDK {
    boolean AFKeystoreWrapper(String str);

    int AFLogger(String str, int i2);

    void AFLogger(String str);

    void AFLogger(String str, long j2);

    String d(String str);

    void d(String str, int i2);

    void d(String str, String str2);

    SharedPreferences p_();

    void registerClient(String str, boolean z);

    boolean registerClient(String str);

    long unregisterClient(String str, long j2);
}
