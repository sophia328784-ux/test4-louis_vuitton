package com.google.android.gms.internal.gtm;

import android.os.Parcel;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzba extends zzd implements zzbb {
    public zzba() {
        super("com.google.android.gms.tagmanager.internal.ITagManagerLoadContainerCallback");
    }

    @Override // com.google.android.gms.internal.gtm.zzd
    public final boolean E2(int i2, Parcel parcel, Parcel parcel2) {
        if (i2 != 1) {
            return false;
        }
        ClassLoader classLoader = zze.f30061a;
        boolean z = parcel.readInt() != 0;
        String string = parcel.readString();
        zze.b(parcel);
        ((zzct) this).I1(string, z);
        return true;
    }
}
