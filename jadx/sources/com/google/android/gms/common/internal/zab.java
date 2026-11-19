package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public final class zab extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zab> CREATOR = new zac();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f29219b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f29220c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f29221e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f29222f;

    public zab(int i2, String str, long j2, int i3, boolean z) {
        this.f29219b = i2;
        this.f29220c = str;
        this.d = j2;
        this.f29221e = i3;
        this.f29222f = z;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f29219b);
        SafeParcelWriter.k(parcel, 2, this.f29220c, false);
        SafeParcelWriter.p(parcel, 3, 8);
        parcel.writeLong(this.d);
        SafeParcelWriter.p(parcel, 4, 4);
        parcel.writeInt(this.f29221e);
        SafeParcelWriter.p(parcel, 5, 4);
        parcel.writeInt(this.f29222f ? 1 : 0);
        SafeParcelWriter.r(iQ, parcel);
    }
}
