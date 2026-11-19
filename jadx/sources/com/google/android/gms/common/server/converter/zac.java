package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public final class zac extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zac> CREATOR = new zae();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f29303b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f29304c;
    public final int d;

    public zac(String str, int i2) {
        this.f29303b = 1;
        this.f29304c = str;
        this.d = i2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f29303b);
        SafeParcelWriter.k(parcel, 2, this.f29304c, false);
        SafeParcelWriter.p(parcel, 3, 4);
        parcel.writeInt(this.d);
        SafeParcelWriter.r(iQ, parcel);
    }

    public zac(int i2, String str, int i3) {
        this.f29303b = i2;
        this.f29304c = str;
        this.d = i3;
    }
}
