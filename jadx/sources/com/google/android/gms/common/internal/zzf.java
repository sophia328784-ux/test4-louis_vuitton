package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: loaded from: classes2.dex */
public final class zzf extends zza {
    public final IBinder g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ BaseGmsClient f29261h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzf(BaseGmsClient baseGmsClient, int i2, IBinder iBinder, Bundle bundle) {
        super(baseGmsClient, i2, bundle);
        java.util.Objects.requireNonNull(baseGmsClient);
        this.f29261h = baseGmsClient;
        this.g = iBinder;
    }

    @Override // com.google.android.gms.common.internal.zza
    public final boolean b() {
        IBinder iBinder = this.g;
        try {
            Preconditions.h(iBinder);
            String interfaceDescriptor = iBinder.getInterfaceDescriptor();
            BaseGmsClient baseGmsClient = this.f29261h;
            if (!baseGmsClient.w().equals(interfaceDescriptor)) {
                new StringBuilder(baseGmsClient.w().length() + 34 + String.valueOf(interfaceDescriptor).length());
                return false;
            }
            IInterface iInterfaceP = baseGmsClient.p(iBinder);
            if (iInterfaceP != null && (baseGmsClient.B(2, 4, iInterfaceP) || baseGmsClient.B(3, 4, iInterfaceP))) {
                baseGmsClient.v = null;
                BaseGmsClient.BaseConnectionCallbacks baseConnectionCallbacks = baseGmsClient.p;
                if (baseConnectionCallbacks == null) {
                    return true;
                }
                baseConnectionCallbacks.a();
                return true;
            }
            return false;
        } catch (RemoteException unused) {
        }
    }

    @Override // com.google.android.gms.common.internal.zza
    public final void c(ConnectionResult connectionResult) {
        BaseGmsClient.BaseOnConnectionFailedListener baseOnConnectionFailedListener = this.f29261h.q;
        if (baseOnConnectionFailedListener != null) {
            baseOnConnectionFailedListener.onConnectionFailed(connectionResult);
        }
        System.currentTimeMillis();
    }
}
