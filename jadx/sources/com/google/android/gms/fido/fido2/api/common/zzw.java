package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.lc0;

/* JADX INFO: loaded from: classes.dex */
final class zzw implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        try {
            return ErrorCode.b(parcel.readInt());
        } catch (ErrorCode.UnsupportedErrorCodeException e2) {
            lc0.u(e2);
            return null;
        }
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new ErrorCode[i2];
    }
}
