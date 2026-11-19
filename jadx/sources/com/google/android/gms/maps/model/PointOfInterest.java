package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public final class PointOfInterest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<PointOfInterest> CREATOR = new zzs();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LatLng f31472b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f31473c;
    public final String d;

    public PointOfInterest(LatLng latLng, String str, String str2) {
        this.f31472b = latLng;
        this.f31473c = str;
        this.d = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.j(parcel, 2, this.f31472b, i2, false);
        SafeParcelWriter.k(parcel, 3, this.f31473c, false);
        SafeParcelWriter.k(parcel, 4, this.d, false);
        SafeParcelWriter.r(iQ, parcel);
    }
}
