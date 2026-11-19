package com.google.android.gms.common.util;

import android.os.Build;
import android.os.StrictMode;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzd {
    public static StrictMode.VmPolicy a() {
        StrictMode.VmPolicy vmPolicy = StrictMode.getVmPolicy();
        if (Build.VERSION.SDK_INT >= 31) {
            StrictMode.setVmPolicy(zzc.a(new StrictMode.VmPolicy.Builder(vmPolicy)).build());
        }
        return vmPolicy;
    }
}
