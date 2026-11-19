package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.WorkSource;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public final class zzb extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzb> CREATOR = new zzc();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f31395b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f31396c;
    public final WorkSource d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f31397e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int[] f31398f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f31399h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f31400i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f31401j;

    public zzb(long j2, boolean z, WorkSource workSource, String str, int[] iArr, boolean z2, String str2, long j3, String str3) {
        this.f31395b = j2;
        this.f31396c = z;
        this.d = workSource;
        this.f31397e = str;
        this.f31398f = iArr;
        this.g = z2;
        this.f31399h = str2;
        this.f31400i = j3;
        this.f31401j = str3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        Preconditions.h(parcel);
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 8);
        parcel.writeLong(this.f31395b);
        SafeParcelWriter.p(parcel, 2, 4);
        parcel.writeInt(this.f31396c ? 1 : 0);
        SafeParcelWriter.j(parcel, 3, this.d, i2, false);
        SafeParcelWriter.k(parcel, 4, this.f31397e, false);
        SafeParcelWriter.g(parcel, 5, this.f31398f);
        SafeParcelWriter.p(parcel, 6, 4);
        parcel.writeInt(this.g ? 1 : 0);
        SafeParcelWriter.k(parcel, 7, this.f31399h, false);
        SafeParcelWriter.p(parcel, 8, 8);
        parcel.writeLong(this.f31400i);
        SafeParcelWriter.k(parcel, 9, this.f31401j, false);
        SafeParcelWriter.r(iQ, parcel);
    }
}
