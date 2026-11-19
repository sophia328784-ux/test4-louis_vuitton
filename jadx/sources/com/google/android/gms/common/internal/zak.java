package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.internal.ConnectionCallbacks;

/* JADX INFO: loaded from: classes2.dex */
final class zak implements BaseGmsClient.BaseConnectionCallbacks {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ConnectionCallbacks f29230b;

    public zak(ConnectionCallbacks connectionCallbacks) {
        this.f29230b = connectionCallbacks;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void a() {
        this.f29230b.onConnected(null);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i2) {
        this.f29230b.onConnectionSuspended(i2);
    }
}
