package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class StreetViewPanoramaLink extends AbstractSafeParcelable {
    public static final Parcelable.Creator<StreetViewPanoramaLink> CREATOR = new zzy();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f31493b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f31494c;

    public StreetViewPanoramaLink(String str, float f2) {
        this.f31493b = str;
        this.f31494c = (((double) f2) <= 0.0d ? (f2 % 360.0f) + 360.0f : f2) % 360.0f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StreetViewPanoramaLink)) {
            return false;
        }
        StreetViewPanoramaLink streetViewPanoramaLink = (StreetViewPanoramaLink) obj;
        return this.f31493b.equals(streetViewPanoramaLink.f31493b) && Float.floatToIntBits(this.f31494c) == Float.floatToIntBits(streetViewPanoramaLink.f31494c);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31493b, Float.valueOf(this.f31494c)});
    }

    public final String toString() {
        Objects.ToStringHelper toStringHelper = new Objects.ToStringHelper(this);
        toStringHelper.a(this.f31493b, "panoId");
        toStringHelper.a(Float.valueOf(this.f31494c), "bearing");
        return toStringHelper.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.k(parcel, 2, this.f31493b, false);
        SafeParcelWriter.p(parcel, 3, 4);
        parcel.writeFloat(this.f31494c);
        SafeParcelWriter.r(iQ, parcel);
    }
}
