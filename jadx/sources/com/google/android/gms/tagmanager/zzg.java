package com.google.android.gms.tagmanager;

import android.os.Parcel;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzg extends com.google.android.gms.internal.gtm.zzd implements zzh {
    public zzg() {
        super("com.google.android.gms.tagmanager.ICustomEvaluatorProxy");
    }

    @Override // com.google.android.gms.internal.gtm.zzd
    public final boolean E2(int i2, Parcel parcel, Parcel parcel2) {
        if (i2 == 1) {
            String string = parcel.readString();
            HashMap hashMap = parcel.readHashMap(com.google.android.gms.internal.gtm.zze.f30061a);
            com.google.android.gms.internal.gtm.zze.b(parcel);
            ((zzd) this).N(string, hashMap);
            parcel2.writeNoException();
            return true;
        }
        if (i2 != 2) {
            return false;
        }
        String string2 = parcel.readString();
        HashMap hashMap2 = parcel.readHashMap(com.google.android.gms.internal.gtm.zze.f30061a);
        com.google.android.gms.internal.gtm.zze.b(parcel);
        String strF2 = ((zzd) this).f2(string2, hashMap2);
        parcel2.writeNoException();
        parcel2.writeString(strF2);
        return true;
    }
}
