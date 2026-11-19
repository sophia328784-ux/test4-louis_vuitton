package com.google.android.gms.internal.base;

import android.os.Build;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zak {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f29620a;

    static {
        f29620a = Build.VERSION.SDK_INT >= 31 ? 33554432 : 0;
    }
}
