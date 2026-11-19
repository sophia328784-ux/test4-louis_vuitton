package com.google.android.gms.internal.cloudmessaging;

import android.os.Build;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f29806a;

    static {
        f29806a = Build.VERSION.SDK_INT >= 31 ? 33554432 : 0;
    }
}
