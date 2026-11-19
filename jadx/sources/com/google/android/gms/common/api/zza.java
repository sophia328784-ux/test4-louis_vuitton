package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
final class zza implements Parcelable.Creator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final zza f29137a;

    static {
        new zzb();
        f29137a = new zza();
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iDataPosition = parcel.dataPosition();
        if (parcel.readInt() == -204102970) {
            return zzb.a(parcel);
        }
        parcel.setDataPosition(iDataPosition - 4);
        return ApiMetadata.f28975e;
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object[] newArray(int i2) {
        return new ApiMetadata[i2];
    }
}
