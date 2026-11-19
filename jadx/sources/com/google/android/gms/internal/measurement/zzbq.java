package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;

/* JADX INFO: loaded from: classes2.dex */
public final class zzbq extends zzbl implements zzbs {
    @Override // com.google.android.gms.internal.measurement.zzbs
    public final Bundle r1(Bundle bundle) {
        Parcel parcelF2 = F2();
        zzbn.b(parcelF2, bundle);
        Parcel parcelE2 = E2(1, parcelF2);
        Bundle bundle2 = (Bundle) zzbn.a(parcelE2, Bundle.CREATOR);
        parcelE2.recycle();
        return bundle2;
    }
}
