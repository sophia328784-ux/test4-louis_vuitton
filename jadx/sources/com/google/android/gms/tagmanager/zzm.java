package com.google.android.gms.tagmanager;

import android.os.Bundle;
import android.os.Parcel;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzm extends com.google.android.gms.internal.gtm.zzd implements zzn {
    public zzm() {
        super("com.google.android.gms.tagmanager.IMeasurementInterceptor");
    }

    @Override // com.google.android.gms.internal.gtm.zzd
    public final boolean E2(int i2, Parcel parcel, Parcel parcel2) {
        if (i2 != 2) {
            return false;
        }
        String string = parcel.readString();
        String string2 = parcel.readString();
        Bundle bundle = (Bundle) com.google.android.gms.internal.gtm.zze.a(parcel, Bundle.CREATOR);
        long j2 = parcel.readLong();
        com.google.android.gms.internal.gtm.zze.b(parcel);
        a(string, string2, bundle, j2);
        parcel2.writeNoException();
        return true;
    }
}
