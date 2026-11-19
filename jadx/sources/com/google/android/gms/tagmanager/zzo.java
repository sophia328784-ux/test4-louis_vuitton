package com.google.android.gms.tagmanager;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class zzo extends com.google.android.gms.internal.gtm.zzc implements zzq {
    public zzo(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.tagmanager.IMeasurementProxy");
    }

    @Override // com.google.android.gms.tagmanager.zzq
    public final void J(String str, String str2, Bundle bundle, long j2) {
        Parcel parcelE2 = E2();
        parcelE2.writeString(str);
        parcelE2.writeString(str2);
        com.google.android.gms.internal.gtm.zze.c(parcelE2, bundle);
        parcelE2.writeLong(j2);
        G2(2, parcelE2);
    }

    @Override // com.google.android.gms.tagmanager.zzq
    public final void K1(zzn zznVar) {
        Parcel parcelE2 = E2();
        com.google.android.gms.internal.gtm.zze.d(parcelE2, zznVar);
        G2(21, parcelE2);
    }

    @Override // com.google.android.gms.tagmanager.zzq
    public final Map e0() {
        Parcel parcelF2 = F2(11, E2());
        HashMap hashMap = parcelF2.readHashMap(com.google.android.gms.internal.gtm.zze.f30061a);
        parcelF2.recycle();
        return hashMap;
    }

    @Override // com.google.android.gms.tagmanager.zzq
    public final void k2(zzk zzkVar) {
        Parcel parcelE2 = E2();
        com.google.android.gms.internal.gtm.zze.d(parcelE2, zzkVar);
        G2(22, parcelE2);
    }
}
