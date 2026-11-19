package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.x1;

/* JADX INFO: loaded from: classes2.dex */
final class zzbb implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        try {
            return UserVerificationRequirement.a(parcel.readString());
        } catch (zzbc e2) {
            x1.m(e2);
            return null;
        }
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new UserVerificationRequirement[i2];
    }
}
