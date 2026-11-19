package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: loaded from: classes2.dex */
public final class zzcw extends zzbl implements zzcy {
    public zzcw(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
    }

    @Override // com.google.android.gms.internal.measurement.zzcy
    public final int I() {
        Parcel parcelE2 = E2(2, F2());
        int i2 = parcelE2.readInt();
        parcelE2.recycle();
        return i2;
    }

    @Override // com.google.android.gms.internal.measurement.zzcy
    public final void a(String str, String str2, Bundle bundle, long j2) {
        Parcel parcelF2 = F2();
        parcelF2.writeString(str);
        parcelF2.writeString(str2);
        zzbn.b(parcelF2, bundle);
        parcelF2.writeLong(j2);
        G2(1, parcelF2);
    }
}
