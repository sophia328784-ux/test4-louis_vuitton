package com.batch.android.e;

import android.content.pm.PackageManager;

/* JADX INFO: loaded from: classes2.dex */
public class y {
    private y() {
    }

    public static boolean a(PackageManager packageManager, String str) {
        if (packageManager == null) {
            return false;
        }
        try {
            return packageManager.getApplicationInfo(str, 0).enabled;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }
}
