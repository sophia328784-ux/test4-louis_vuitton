package com.google.android.gms.common.internal;

import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes2.dex */
public final class zzv extends com.google.android.gms.internal.common.zza implements zzx {
    @Override // com.google.android.gms.common.internal.zzx
    public final IObjectWrapper g0() {
        Parcel parcelE2 = E2(1, F2());
        IObjectWrapper iObjectWrapperF2 = IObjectWrapper.Stub.F2(parcelE2.readStrongBinder());
        parcelE2.recycle();
        return iObjectWrapperF2;
    }

    @Override // com.google.android.gms.common.internal.zzx
    public final int h0() {
        Parcel parcelE2 = E2(2, F2());
        int i2 = parcelE2.readInt();
        parcelE2.recycle();
        return i2;
    }
}
