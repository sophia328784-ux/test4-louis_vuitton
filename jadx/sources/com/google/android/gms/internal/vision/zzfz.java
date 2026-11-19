package com.google.android.gms.internal.vision;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public final class zzfz extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfz> CREATOR = new zzfy();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f31174b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f31175c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f31176e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f31177f;

    public zzfz(int i2, int i3, int i4, int i5, long j2) {
        this.f31174b = i2;
        this.f31175c = i3;
        this.d = i4;
        this.f31176e = i5;
        this.f31177f = j2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f31174b);
        SafeParcelWriter.p(parcel, 2, 4);
        parcel.writeInt(this.f31175c);
        SafeParcelWriter.p(parcel, 3, 4);
        parcel.writeInt(this.d);
        SafeParcelWriter.p(parcel, 4, 4);
        parcel.writeInt(this.f31176e);
        SafeParcelWriter.p(parcel, 5, 8);
        parcel.writeLong(this.f31177f);
        SafeParcelWriter.r(iQ, parcel);
    }
}
