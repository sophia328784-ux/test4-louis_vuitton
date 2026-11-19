package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public final class zzr extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzr> CREATOR = new zzs();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f29375b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f29376c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f29377e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f29378f;

    public zzr(int i2, String str, long j2, int i3, boolean z) {
        this.f29375b = z;
        this.f29376c = str;
        this.d = zzz.a(i2) - 1;
        this.f29377e = zzc.a(i3) - 1;
        this.f29378f = j2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f29375b ? 1 : 0);
        SafeParcelWriter.k(parcel, 2, this.f29376c, false);
        SafeParcelWriter.p(parcel, 3, 4);
        parcel.writeInt(this.d);
        SafeParcelWriter.p(parcel, 4, 4);
        parcel.writeInt(this.f29377e);
        SafeParcelWriter.p(parcel, 5, 8);
        parcel.writeLong(this.f29378f);
        SafeParcelWriter.r(iQ, parcel);
    }
}
