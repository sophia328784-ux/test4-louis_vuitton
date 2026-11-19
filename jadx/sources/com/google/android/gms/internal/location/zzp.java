package com.google.android.gms.internal.location;

import android.os.Parcel;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzp extends zzb implements zzq {
    public zzp() {
        super("com.google.android.gms.location.internal.IFusedLocationProviderCallback");
    }

    @Override // com.google.android.gms.internal.location.zzb
    public final boolean E2(int i2, Parcel parcel) {
        if (i2 == 1) {
            zzk zzkVar = (zzk) zzc.a(parcel, zzk.CREATOR);
            zzc.c(parcel);
            M(zzkVar);
            return true;
        }
        if (i2 != 2) {
            return false;
        }
        zzc.c(parcel);
        h0();
        return true;
    }
}
