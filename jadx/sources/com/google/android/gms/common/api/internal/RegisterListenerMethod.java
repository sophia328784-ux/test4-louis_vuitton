package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.AnyClient;

/* JADX INFO: loaded from: classes2.dex */
public abstract class RegisterListenerMethod<A extends Api.AnyClient, L> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ListenerHolder f29049a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Feature[] f29050b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f29051c;
    public final int d;

    public RegisterListenerMethod(ListenerHolder listenerHolder, Feature[] featureArr, boolean z, int i2) {
        this.f29049a = listenerHolder;
        this.f29050b = featureArr;
        this.f29051c = z;
        this.d = i2;
    }
}
