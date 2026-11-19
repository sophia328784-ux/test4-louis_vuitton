package com.google.android.gms.tagmanager;

import android.content.Intent;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes2.dex */
public final class zzr extends com.google.android.gms.internal.gtm.zzc implements zzt {
    @Override // com.google.android.gms.tagmanager.zzt
    public final void initialize(IObjectWrapper iObjectWrapper, zzq zzqVar, zzh zzhVar) {
        Parcel parcelE2 = E2();
        com.google.android.gms.internal.gtm.zze.d(parcelE2, iObjectWrapper);
        com.google.android.gms.internal.gtm.zze.d(parcelE2, zzqVar);
        com.google.android.gms.internal.gtm.zze.d(parcelE2, zzhVar);
        G2(1, parcelE2);
    }

    @Override // com.google.android.gms.tagmanager.zzt
    public final void previewIntent(Intent intent, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, zzq zzqVar, zzh zzhVar) {
        Parcel parcelE2 = E2();
        com.google.android.gms.internal.gtm.zze.c(parcelE2, intent);
        com.google.android.gms.internal.gtm.zze.d(parcelE2, iObjectWrapper);
        com.google.android.gms.internal.gtm.zze.d(parcelE2, iObjectWrapper2);
        com.google.android.gms.internal.gtm.zze.d(parcelE2, zzqVar);
        com.google.android.gms.internal.gtm.zze.d(parcelE2, zzhVar);
        G2(3, parcelE2);
    }
}
