package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class zzgc extends com.google.android.gms.internal.measurement.zzbl implements zzge {
    @Override // com.google.android.gms.measurement.internal.zzge
    public final void u0(List list) {
        Parcel parcelF2 = F2();
        parcelF2.writeTypedList(list);
        H2(parcelF2);
    }
}
