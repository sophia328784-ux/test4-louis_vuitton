package com.google.android.gms.tagmanager;

import android.os.IBinder;
import android.os.Parcel;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public final class zzf extends com.google.android.gms.internal.gtm.zzc implements zzh {
    public zzf(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.tagmanager.ICustomEvaluatorProxy");
    }

    @Override // com.google.android.gms.tagmanager.zzh
    public final void N(String str, HashMap map) {
        Parcel parcelE2 = E2();
        parcelE2.writeString(str);
        parcelE2.writeMap(map);
        G2(1, parcelE2);
    }

    @Override // com.google.android.gms.tagmanager.zzh
    public final String f2(String str, HashMap map) {
        Parcel parcelE2 = E2();
        parcelE2.writeString(str);
        parcelE2.writeMap(map);
        Parcel parcelF2 = F2(2, parcelE2);
        String string = parcelF2.readString();
        parcelF2.recycle();
        return string;
    }
}
