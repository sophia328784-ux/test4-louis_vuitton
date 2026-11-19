package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public final class zaa extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zaa> CREATOR = new zab();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f29301b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final StringToIntConverter f29302c;

    public zaa(StringToIntConverter stringToIntConverter) {
        this.f29301b = 1;
        this.f29302c = stringToIntConverter;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f29301b);
        SafeParcelWriter.j(parcel, 2, this.f29302c, i2, false);
        SafeParcelWriter.r(iQ, parcel);
    }

    public zaa(int i2, StringToIntConverter stringToIntConverter) {
        this.f29301b = i2;
        this.f29302c = stringToIntConverter;
    }
}
