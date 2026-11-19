package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public final class LocationSettingsResult extends AbstractSafeParcelable implements Result {
    public static final Parcelable.Creator<LocationSettingsResult> CREATOR = new zzah();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Status f31369b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LocationSettingsStates f31370c;

    public LocationSettingsResult(Status status, LocationSettingsStates locationSettingsStates) {
        this.f31369b = status;
        this.f31370c = locationSettingsStates;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.f31369b;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.j(parcel, 1, this.f31369b, i2, false);
        SafeParcelWriter.j(parcel, 2, this.f31370c, i2, false);
        SafeParcelWriter.r(iQ, parcel);
    }
}
