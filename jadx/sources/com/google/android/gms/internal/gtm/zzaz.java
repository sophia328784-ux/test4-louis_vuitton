package com.google.android.gms.internal.gtm;

import android.os.Parcel;

/* JADX INFO: loaded from: classes2.dex */
public final class zzaz extends zzc implements zzbb {
    @Override // com.google.android.gms.internal.gtm.zzbb
    public final void I1(String str, boolean z) {
        Parcel parcelE2 = E2();
        ClassLoader classLoader = zze.f30061a;
        parcelE2.writeInt(z ? 1 : 0);
        parcelE2.writeString(str);
        try {
            this.f30012a.transact(1, parcelE2, null, 1);
        } finally {
            parcelE2.recycle();
        }
    }
}
