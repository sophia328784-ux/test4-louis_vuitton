package com.appsflyer.internal;

import android.content.pm.PackageManager;

/* JADX INFO: loaded from: classes.dex */
public interface AFd1uSDK {
    void AFKeystoreWrapper();

    void AFKeystoreWrapper(String str, int i2, String str2);

    void AFKeystoreWrapper(String str, String str2);

    void AFLogger(String str, String str2);

    boolean AFLogger();

    void d();

    void d(String str, String... strArr);

    boolean i();

    void registerClient();

    void registerClient(Throwable th);

    void unregisterClient();

    void v_(String str, PackageManager packageManager);
}
