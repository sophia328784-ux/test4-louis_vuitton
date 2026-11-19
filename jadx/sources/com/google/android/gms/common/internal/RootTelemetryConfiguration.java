package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public class RootTelemetryConfiguration extends AbstractSafeParcelable {
    public static final Parcelable.Creator<RootTelemetryConfiguration> CREATOR = new zzag();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f29203b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f29204c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f29205e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f29206f;

    public RootTelemetryConfiguration(int i2, boolean z, boolean z2, int i3, int i4) {
        this.f29203b = i2;
        this.f29204c = z;
        this.d = z2;
        this.f29205e = i3;
        this.f29206f = i4;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f29203b);
        SafeParcelWriter.p(parcel, 2, 4);
        parcel.writeInt(this.f29204c ? 1 : 0);
        SafeParcelWriter.p(parcel, 3, 4);
        parcel.writeInt(this.d ? 1 : 0);
        SafeParcelWriter.p(parcel, 4, 4);
        parcel.writeInt(this.f29205e);
        SafeParcelWriter.p(parcel, 5, 4);
        parcel.writeInt(this.f29206f);
        SafeParcelWriter.r(iQ, parcel);
    }
}
