package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Arrays;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class StreetViewPanoramaOrientation extends AbstractSafeParcelable {
    public static final Parcelable.Creator<StreetViewPanoramaOrientation> CREATOR = new zzaa();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f31497b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f31498c;

    public StreetViewPanoramaOrientation(float f2, float f3) {
        boolean z = false;
        if (f2 >= -90.0f && f2 <= 90.0f) {
            z = true;
        }
        Preconditions.b(z, "Tilt needs to be between -90 and 90 inclusive: " + f2);
        this.f31497b = f2 + Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.f31498c = (((double) f3) <= 0.0d ? (f3 % 360.0f) + 360.0f : f3) % 360.0f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StreetViewPanoramaOrientation)) {
            return false;
        }
        StreetViewPanoramaOrientation streetViewPanoramaOrientation = (StreetViewPanoramaOrientation) obj;
        return Float.floatToIntBits(this.f31497b) == Float.floatToIntBits(streetViewPanoramaOrientation.f31497b) && Float.floatToIntBits(this.f31498c) == Float.floatToIntBits(streetViewPanoramaOrientation.f31498c);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f31497b), Float.valueOf(this.f31498c)});
    }

    public final String toString() {
        Objects.ToStringHelper toStringHelper = new Objects.ToStringHelper(this);
        toStringHelper.a(Float.valueOf(this.f31497b), "tilt");
        toStringHelper.a(Float.valueOf(this.f31498c), "bearing");
        return toStringHelper.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 2, 4);
        parcel.writeFloat(this.f31497b);
        SafeParcelWriter.p(parcel, 3, 4);
        parcel.writeFloat(this.f31498c);
        SafeParcelWriter.r(iQ, parcel);
    }

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public float f31499a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f31500b;

        public Builder(StreetViewPanoramaOrientation streetViewPanoramaOrientation) {
            Preconditions.i(streetViewPanoramaOrientation, "StreetViewPanoramaOrientation must not be null.");
            this.f31499a = streetViewPanoramaOrientation.f31498c;
            this.f31500b = streetViewPanoramaOrientation.f31497b;
        }

        public Builder() {
        }
    }
}
