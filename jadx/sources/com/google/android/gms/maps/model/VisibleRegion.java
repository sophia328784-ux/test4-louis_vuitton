package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class VisibleRegion extends AbstractSafeParcelable {
    public static final Parcelable.Creator<VisibleRegion> CREATOR = new zzak();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LatLng f31519b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LatLng f31520c;
    public final LatLng d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LatLng f31521e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final LatLngBounds f31522f;

    public VisibleRegion(LatLng latLng, LatLng latLng2, LatLng latLng3, LatLng latLng4, LatLngBounds latLngBounds) {
        this.f31519b = latLng;
        this.f31520c = latLng2;
        this.d = latLng3;
        this.f31521e = latLng4;
        this.f31522f = latLngBounds;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VisibleRegion)) {
            return false;
        }
        VisibleRegion visibleRegion = (VisibleRegion) obj;
        return this.f31519b.equals(visibleRegion.f31519b) && this.f31520c.equals(visibleRegion.f31520c) && this.d.equals(visibleRegion.d) && this.f31521e.equals(visibleRegion.f31521e) && this.f31522f.equals(visibleRegion.f31522f);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31519b, this.f31520c, this.d, this.f31521e, this.f31522f});
    }

    public final String toString() {
        Objects.ToStringHelper toStringHelper = new Objects.ToStringHelper(this);
        toStringHelper.a(this.f31519b, "nearLeft");
        toStringHelper.a(this.f31520c, "nearRight");
        toStringHelper.a(this.d, "farLeft");
        toStringHelper.a(this.f31521e, "farRight");
        toStringHelper.a(this.f31522f, "latLngBounds");
        return toStringHelper.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.j(parcel, 2, this.f31519b, i2, false);
        SafeParcelWriter.j(parcel, 3, this.f31520c, i2, false);
        SafeParcelWriter.j(parcel, 4, this.d, i2, false);
        SafeParcelWriter.j(parcel, 5, this.f31521e, i2, false);
        SafeParcelWriter.j(parcel, 6, this.f31522f, i2, false);
        SafeParcelWriter.r(iQ, parcel);
    }
}
