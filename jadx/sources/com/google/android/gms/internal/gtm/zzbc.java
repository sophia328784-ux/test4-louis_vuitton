package com.google.android.gms.internal.gtm;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: loaded from: classes2.dex */
public final class zzbc extends zzc implements zzbe {
    public zzbc(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.tagmanager.internal.ITagManagerService");
    }

    @Override // com.google.android.gms.internal.gtm.zzbe
    public final void S(String str, Bundle bundle, String str2, long j2, boolean z) {
        Parcel parcelE2 = E2();
        parcelE2.writeString(str);
        zze.c(parcelE2, bundle);
        parcelE2.writeString(str2);
        parcelE2.writeLong(j2);
        parcelE2.writeInt(z ? 1 : 0);
        G2(101, parcelE2);
    }

    @Override // com.google.android.gms.internal.gtm.zzbe
    public final void c() {
        G2(3, E2());
    }

    @Override // com.google.android.gms.internal.gtm.zzbe
    public final void c0(String str, String str2, String str3, zzbb zzbbVar) {
        Parcel parcelE2 = E2();
        parcelE2.writeString(str);
        parcelE2.writeString(str2);
        parcelE2.writeString(null);
        zze.d(parcelE2, zzbbVar);
        G2(2, parcelE2);
    }

    @Override // com.google.android.gms.internal.gtm.zzbe
    public final void h0() {
        G2(102, E2());
    }
}
