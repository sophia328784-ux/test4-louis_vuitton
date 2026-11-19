package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public final class Tile extends AbstractSafeParcelable {
    public static final Parcelable.Creator<Tile> CREATOR = new zzag();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f31513b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f31514c;
    public final byte[] d;

    public Tile(int i2, int i3, byte[] bArr) {
        this.f31513b = i2;
        this.f31514c = i3;
        this.d = bArr;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 2, 4);
        parcel.writeInt(this.f31513b);
        SafeParcelWriter.p(parcel, 3, 4);
        parcel.writeInt(this.f31514c);
        SafeParcelWriter.b(parcel, 4, this.d, false);
        SafeParcelWriter.r(iQ, parcel);
    }
}
