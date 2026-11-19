package com.google.ar.core.dependencies;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class i extends d implements j {
    public i() {
        super("com.google.android.play.core.install.protocol.IInstallServiceCallback");
    }

    @Override // com.google.ar.core.dependencies.d
    public final boolean a(int i2, Parcel parcel) throws RemoteException {
        if (i2 == 1) {
            Bundle bundle = (Bundle) e.a(parcel, Bundle.CREATOR);
            e.d(parcel);
            b(bundle);
        } else if (i2 == 2) {
            Bundle bundle2 = (Bundle) e.a(parcel, Bundle.CREATOR);
            e.d(parcel);
            c(bundle2);
        } else {
            if (i2 != 3) {
                return false;
            }
            e.d(parcel);
        }
        return true;
    }
}
