package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public final class zzom extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzom> CREATOR = new zzon();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f31949b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public byte[] f31950c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Bundle f31951e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f31952f;
    public final long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f31953h;

    public zzom(long j2, byte[] bArr, String str, Bundle bundle, int i2, long j3, String str2) {
        this.f31949b = j2;
        this.f31950c = bArr;
        this.d = str;
        this.f31951e = bundle;
        this.f31952f = i2;
        this.g = j3;
        this.f31953h = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 8);
        parcel.writeLong(this.f31949b);
        SafeParcelWriter.b(parcel, 2, this.f31950c, false);
        SafeParcelWriter.k(parcel, 3, this.d, false);
        SafeParcelWriter.a(parcel, 4, this.f31951e);
        SafeParcelWriter.p(parcel, 5, 4);
        parcel.writeInt(this.f31952f);
        SafeParcelWriter.p(parcel, 6, 8);
        parcel.writeLong(this.g);
        SafeParcelWriter.k(parcel, 7, this.f31953h, false);
        SafeParcelWriter.r(iQ, parcel);
    }
}
