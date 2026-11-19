package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public final class zzdb extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzdb> CREATOR = new zzdc();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f30604b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f30605c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Bundle f30606e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f30607f;

    public zzdb(long j2, long j3, boolean z, Bundle bundle, String str) {
        this.f30604b = j2;
        this.f30605c = j3;
        this.d = z;
        this.f30606e = bundle;
        this.f30607f = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 8);
        parcel.writeLong(this.f30604b);
        SafeParcelWriter.p(parcel, 2, 8);
        parcel.writeLong(this.f30605c);
        SafeParcelWriter.p(parcel, 3, 4);
        parcel.writeInt(this.d ? 1 : 0);
        SafeParcelWriter.a(parcel, 7, this.f30606e);
        SafeParcelWriter.k(parcel, 8, this.f30607f, false);
        SafeParcelWriter.r(iQ, parcel);
    }
}
