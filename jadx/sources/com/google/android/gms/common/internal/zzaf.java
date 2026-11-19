package com.google.android.gms.common.internal;

import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: loaded from: classes2.dex */
public final class zzaf extends Exception {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConnectionResult f29251b;

    public zzaf(ConnectionResult connectionResult) {
        Preconditions.b((connectionResult.f28953c == 0 || connectionResult.d == null) ? false : true, "ResolvableConnectionException can only be created with a connection result containing a resolution.");
        this.f29251b = connectionResult;
    }
}
