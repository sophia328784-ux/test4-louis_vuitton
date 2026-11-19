package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
final class zam {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f29119a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConnectionResult f29120b;

    public zam(ConnectionResult connectionResult, int i2) {
        Preconditions.h(connectionResult);
        this.f29120b = connectionResult;
        this.f29119a = i2;
    }
}
