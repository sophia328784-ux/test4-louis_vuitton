package com.google.android.gms.common.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.internal.OnConnectionFailedListener;

/* JADX INFO: loaded from: classes2.dex */
final class zal implements BaseGmsClient.BaseOnConnectionFailedListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ OnConnectionFailedListener f29231b;

    public zal(OnConnectionFailedListener onConnectionFailedListener) {
        this.f29231b = onConnectionFailedListener;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        this.f29231b.onConnectionFailed(connectionResult);
    }
}
