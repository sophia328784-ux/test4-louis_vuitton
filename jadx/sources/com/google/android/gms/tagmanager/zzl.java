package com.google.android.gms.tagmanager;

import android.os.Bundle;
import android.os.Parcel;

/* JADX INFO: loaded from: classes2.dex */
public final class zzl extends com.google.android.gms.internal.gtm.zzc implements zzn {
    @Override // com.google.android.gms.tagmanager.zzn
    public final void a(String str, String str2, Bundle bundle, long j2) {
        Parcel parcelE2 = E2();
        parcelE2.writeString(str);
        parcelE2.writeString(str2);
        com.google.android.gms.internal.gtm.zze.c(parcelE2, bundle);
        parcelE2.writeLong(j2);
        G2(2, parcelE2);
    }
}
