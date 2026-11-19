package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public final class zzj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzj> CREATOR = new zzk();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Bundle f29262b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Feature[] f29263c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ConnectionTelemetryConfiguration f29264e;

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.a(parcel, 1, this.f29262b);
        SafeParcelWriter.n(parcel, 2, this.f29263c, i2);
        int i3 = this.d;
        SafeParcelWriter.p(parcel, 3, 4);
        parcel.writeInt(i3);
        SafeParcelWriter.j(parcel, 4, this.f29264e, i2, false);
        SafeParcelWriter.r(iQ, parcel);
    }
}
