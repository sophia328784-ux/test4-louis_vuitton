package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Arrays;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class StreetViewPanoramaCamera extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<StreetViewPanoramaCamera> CREATOR = new zzx();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f31491b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f31492c;
    public final float d;

    public StreetViewPanoramaCamera(float f2, float f3, float f4) {
        boolean z = false;
        if (f3 >= -90.0f && f3 <= 90.0f) {
            z = true;
        }
        Preconditions.b(z, "Tilt needs to be between -90 and 90 inclusive: " + f3);
        this.f31491b = ((double) f2) <= 0.0d ? 0.0f : f2;
        this.f31492c = Call.Parameters.DEFAULT_CAMERA_ZOOM + f3;
        this.d = (((double) f4) <= 0.0d ? (f4 % 360.0f) + 360.0f : f4) % 360.0f;
        StreetViewPanoramaOrientation.Builder builder = new StreetViewPanoramaOrientation.Builder();
        builder.f31500b = f3;
        builder.f31499a = f4;
        new StreetViewPanoramaOrientation(builder.f31500b, builder.f31499a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StreetViewPanoramaCamera)) {
            return false;
        }
        StreetViewPanoramaCamera streetViewPanoramaCamera = (StreetViewPanoramaCamera) obj;
        return Float.floatToIntBits(this.f31491b) == Float.floatToIntBits(streetViewPanoramaCamera.f31491b) && Float.floatToIntBits(this.f31492c) == Float.floatToIntBits(streetViewPanoramaCamera.f31492c) && Float.floatToIntBits(this.d) == Float.floatToIntBits(streetViewPanoramaCamera.d);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f31491b), Float.valueOf(this.f31492c), Float.valueOf(this.d)});
    }

    public final String toString() {
        Objects.ToStringHelper toStringHelper = new Objects.ToStringHelper(this);
        toStringHelper.a(Float.valueOf(this.f31491b), "zoom");
        toStringHelper.a(Float.valueOf(this.f31492c), "tilt");
        toStringHelper.a(Float.valueOf(this.d), "bearing");
        return toStringHelper.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 2, 4);
        parcel.writeFloat(this.f31491b);
        SafeParcelWriter.p(parcel, 3, 4);
        parcel.writeFloat(this.f31492c);
        SafeParcelWriter.p(parcel, 4, 4);
        parcel.writeFloat(this.d);
        SafeParcelWriter.r(iQ, parcel);
    }
}
