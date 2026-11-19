package com.google.android.gms.internal.clearcut;

import android.os.Parcel;

/* JADX INFO: loaded from: classes2.dex */
public final class zzo extends zza implements zzn {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.clearcut.zzn
    public final void B(zzl zzlVar, com.google.android.gms.clearcut.zze zzeVar) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken("com.google.android.gms.clearcut.internal.IClearcutLoggerService");
        int i2 = zzc.f29670a;
        parcelObtain.writeStrongBinder((zzb) zzlVar);
        if (zzeVar == null) {
            parcelObtain.writeInt(0);
        } else {
            parcelObtain.writeInt(1);
            zzeVar.writeToParcel(parcelObtain, 0);
        }
        try {
            this.f29621a.transact(1, parcelObtain, null, 1);
        } finally {
            parcelObtain.recycle();
        }
    }
}
