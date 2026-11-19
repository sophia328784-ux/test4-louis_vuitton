package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class LatLngBounds extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<LatLngBounds> CREATOR = new zzm();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LatLng f31454b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LatLng f31455c;

    public LatLngBounds(LatLng latLng, LatLng latLng2) {
        Preconditions.i(latLng, "southwest must not be null.");
        Preconditions.i(latLng2, "northeast must not be null.");
        double d = latLng2.f31452b;
        double d2 = latLng.f31452b;
        Preconditions.c(d >= d2, "southern latitude exceeds northern latitude (%s > %s)", Double.valueOf(d2), Double.valueOf(d));
        this.f31454b = latLng;
        this.f31455c = latLng2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LatLngBounds)) {
            return false;
        }
        LatLngBounds latLngBounds = (LatLngBounds) obj;
        return this.f31454b.equals(latLngBounds.f31454b) && this.f31455c.equals(latLngBounds.f31455c);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31454b, this.f31455c});
    }

    public final String toString() {
        Objects.ToStringHelper toStringHelper = new Objects.ToStringHelper(this);
        toStringHelper.a(this.f31454b, "southwest");
        toStringHelper.a(this.f31455c, "northeast");
        return toStringHelper.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.j(parcel, 2, this.f31454b, i2, false);
        SafeParcelWriter.j(parcel, 3, this.f31455c, i2, false);
        SafeParcelWriter.r(iQ, parcel);
    }
}
