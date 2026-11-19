package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public class ConnectionTelemetryConfiguration extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ConnectionTelemetryConfiguration> CREATOR = new zzl();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RootTelemetryConfiguration f29174b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f29175c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int[] f29176e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f29177f;
    public final int[] g;

    public ConnectionTelemetryConfiguration(RootTelemetryConfiguration rootTelemetryConfiguration, boolean z, boolean z2, int[] iArr, int i2, int[] iArr2) {
        this.f29174b = rootTelemetryConfiguration;
        this.f29175c = z;
        this.d = z2;
        this.f29176e = iArr;
        this.f29177f = i2;
        this.g = iArr2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.j(parcel, 1, this.f29174b, i2, false);
        SafeParcelWriter.p(parcel, 2, 4);
        parcel.writeInt(this.f29175c ? 1 : 0);
        SafeParcelWriter.p(parcel, 3, 4);
        parcel.writeInt(this.d ? 1 : 0);
        SafeParcelWriter.g(parcel, 4, this.f29176e);
        SafeParcelWriter.p(parcel, 5, 4);
        parcel.writeInt(this.f29177f);
        SafeParcelWriter.g(parcel, 6, this.g);
        SafeParcelWriter.r(iQ, parcel);
    }
}
