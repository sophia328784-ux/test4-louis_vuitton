package com.google.android.gms.internal.identity_credentials;

import com.google.android.gms.common.Feature;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zze {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Feature f30209a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Feature[] f30210b;

    static {
        Feature feature = new Feature("GET_CREDENTIAL", 1L);
        f30209a = feature;
        f30210b = new Feature[]{feature, new Feature("CREDENTIAL_REGISTRY", 1L), new Feature("CLEAR_REGISTRY", 1L)};
    }
}
