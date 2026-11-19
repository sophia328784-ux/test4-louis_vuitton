package com.google.android.gms.internal.vision;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public final class zzs extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzs> CREATOR = new zzv();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f31296b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f31297c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f31298e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f31299f;

    public zzs(int i2, int i3, int i4, long j2, int i5) {
        this.f31296b = i2;
        this.f31297c = i3;
        this.d = i4;
        this.f31298e = j2;
        this.f31299f = i5;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        int i3 = this.f31296b;
        SafeParcelWriter.p(parcel, 2, 4);
        parcel.writeInt(i3);
        int i4 = this.f31297c;
        SafeParcelWriter.p(parcel, 3, 4);
        parcel.writeInt(i4);
        int i5 = this.d;
        SafeParcelWriter.p(parcel, 4, 4);
        parcel.writeInt(i5);
        long j2 = this.f31298e;
        SafeParcelWriter.p(parcel, 5, 8);
        parcel.writeLong(j2);
        int i6 = this.f31299f;
        SafeParcelWriter.p(parcel, 6, 4);
        parcel.writeInt(i6);
        SafeParcelWriter.r(iQ, parcel);
    }

    public zzs() {
    }
}
