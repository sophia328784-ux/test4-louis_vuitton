package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class StreetViewPanoramaLocation extends AbstractSafeParcelable {
    public static final Parcelable.Creator<StreetViewPanoramaLocation> CREATOR = new zzz();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final StreetViewPanoramaLink[] f31495b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LatLng f31496c;
    public final String d;

    public StreetViewPanoramaLocation(StreetViewPanoramaLink[] streetViewPanoramaLinkArr, LatLng latLng, String str) {
        this.f31495b = streetViewPanoramaLinkArr;
        this.f31496c = latLng;
        this.d = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StreetViewPanoramaLocation)) {
            return false;
        }
        StreetViewPanoramaLocation streetViewPanoramaLocation = (StreetViewPanoramaLocation) obj;
        return this.d.equals(streetViewPanoramaLocation.d) && this.f31496c.equals(streetViewPanoramaLocation.f31496c);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31496c, this.d});
    }

    public final String toString() {
        Objects.ToStringHelper toStringHelper = new Objects.ToStringHelper(this);
        toStringHelper.a(this.d, "panoId");
        toStringHelper.a(this.f31496c.toString(), "position");
        return toStringHelper.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.n(parcel, 2, this.f31495b, i2);
        SafeParcelWriter.j(parcel, 3, this.f31496c, i2, false);
        SafeParcelWriter.k(parcel, 4, this.d, false);
        SafeParcelWriter.r(iQ, parcel);
    }
}
