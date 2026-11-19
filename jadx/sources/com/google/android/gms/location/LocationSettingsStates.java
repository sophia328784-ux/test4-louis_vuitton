package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public final class LocationSettingsStates extends AbstractSafeParcelable {
    public static final Parcelable.Creator<LocationSettingsStates> CREATOR = new zzai();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f31371b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f31372c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f31373e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f31374f;
    public final boolean g;

    public LocationSettingsStates(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        this.f31371b = z;
        this.f31372c = z2;
        this.d = z3;
        this.f31373e = z4;
        this.f31374f = z5;
        this.g = z6;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f31371b ? 1 : 0);
        SafeParcelWriter.p(parcel, 2, 4);
        parcel.writeInt(this.f31372c ? 1 : 0);
        SafeParcelWriter.p(parcel, 3, 4);
        parcel.writeInt(this.d ? 1 : 0);
        SafeParcelWriter.p(parcel, 4, 4);
        parcel.writeInt(this.f31373e ? 1 : 0);
        SafeParcelWriter.p(parcel, 5, 4);
        parcel.writeInt(this.f31374f ? 1 : 0);
        SafeParcelWriter.p(parcel, 6, 4);
        parcel.writeInt(this.g ? 1 : 0);
        SafeParcelWriter.r(iQ, parcel);
    }
}
