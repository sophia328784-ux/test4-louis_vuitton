package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: loaded from: classes2.dex */
public final class zzcq extends zzbl implements zzcs {
    public zzcq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IBundleReceiver");
    }

    @Override // com.google.android.gms.internal.measurement.zzcs
    public final void V1(Bundle bundle) {
        Parcel parcelF2 = F2();
        zzbn.b(parcelF2, bundle);
        G2(1, parcelF2);
    }
}
