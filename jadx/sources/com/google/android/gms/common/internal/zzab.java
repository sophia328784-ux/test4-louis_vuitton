package com.google.android.gms.common.internal;

import android.os.Parcel;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: loaded from: classes2.dex */
public final class zzab extends com.google.android.gms.internal.common.zza implements zzad {
    @Override // com.google.android.gms.common.internal.zzad
    public final com.google.android.gms.common.zzr Z1(com.google.android.gms.common.zzp zzpVar) {
        Parcel parcelF2 = F2();
        int i2 = com.google.android.gms.internal.common.zzc.f29818a;
        parcelF2.writeInt(1);
        zzpVar.writeToParcel(parcelF2, 0);
        Parcel parcelE2 = E2(6, parcelF2);
        com.google.android.gms.common.zzr zzrVar = (com.google.android.gms.common.zzr) com.google.android.gms.internal.common.zzc.a(parcelE2, com.google.android.gms.common.zzr.CREATOR);
        parcelE2.recycle();
        return zzrVar;
    }

    @Override // com.google.android.gms.common.internal.zzad
    public final boolean b() {
        Parcel parcelE2 = E2(7, F2());
        int i2 = com.google.android.gms.internal.common.zzc.f29818a;
        boolean z = parcelE2.readInt() != 0;
        parcelE2.recycle();
        return z;
    }

    @Override // com.google.android.gms.common.internal.zzad
    public final boolean u(com.google.android.gms.common.zzt zztVar, ObjectWrapper objectWrapper) {
        Parcel parcelF2 = F2();
        int i2 = com.google.android.gms.internal.common.zzc.f29818a;
        parcelF2.writeInt(1);
        zztVar.writeToParcel(parcelF2, 0);
        com.google.android.gms.internal.common.zzc.b(parcelF2, objectWrapper);
        Parcel parcelE2 = E2(5, parcelF2);
        boolean z = parcelE2.readInt() != 0;
        parcelE2.recycle();
        return z;
    }
}
