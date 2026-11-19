package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public final class zzaf extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaf> CREATOR = new zzag();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f31541b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f31542c;
    public final long d;

    public zzaf(long j2, int i2, long j3) {
        this.f31541b = j2;
        this.f31542c = i2;
        this.d = j3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 8);
        parcel.writeLong(this.f31541b);
        SafeParcelWriter.p(parcel, 2, 4);
        parcel.writeInt(this.f31542c);
        SafeParcelWriter.p(parcel, 3, 8);
        parcel.writeLong(this.d);
        SafeParcelWriter.r(iQ, parcel);
    }
}
