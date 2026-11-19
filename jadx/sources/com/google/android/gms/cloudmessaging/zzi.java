package com.google.android.gms.cloudmessaging;

import com.google.android.gms.common.Feature;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Feature f28929a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Feature[] f28930b;

    static {
        Feature feature = new Feature("register", 1L, true);
        f28929a = feature;
        f28930b = new Feature[]{feature, new Feature("unregister", 1L, true)};
    }
}
