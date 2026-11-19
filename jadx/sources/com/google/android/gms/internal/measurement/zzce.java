package com.google.android.gms.internal.measurement;

import android.os.Build;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzce {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f30599a;

    static {
        f30599a = Build.VERSION.SDK_INT >= 31 ? 33554432 : 0;
    }
}
