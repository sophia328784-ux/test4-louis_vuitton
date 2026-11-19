package com.google.android.gms.internal.base;

import com.google.android.gms.common.Feature;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zad {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Feature f29617a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Feature f29618b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Feature[] f29619c;

    static {
        Feature feature = new Feature("CLIENT_TELEMETRY", 1L);
        f29617a = feature;
        Feature feature2 = new Feature("CLIENT_NOTIFICATION_TELEMETRY", 1L);
        f29618b = feature2;
        f29619c = new Feature[]{feature, feature2};
    }
}
