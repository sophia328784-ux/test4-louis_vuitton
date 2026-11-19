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
public final class CameraPosition extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<CameraPosition> CREATOR = new zza();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LatLng f31425b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f31426c;
    public final float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f31427e;

    public CameraPosition(LatLng latLng, float f2, float f3, float f4) {
        Preconditions.i(latLng, "camera target must not be null.");
        boolean z = false;
        if (f3 >= Call.Parameters.DEFAULT_CAMERA_ZOOM && f3 <= 90.0f) {
            z = true;
        }
        Preconditions.c(z, "Tilt needs to be between 0 and 90 inclusive: %s", Float.valueOf(f3));
        this.f31425b = latLng;
        this.f31426c = f2;
        this.d = f3 + Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.f31427e = (((double) f4) <= 0.0d ? (f4 % 360.0f) + 360.0f : f4) % 360.0f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CameraPosition)) {
            return false;
        }
        CameraPosition cameraPosition = (CameraPosition) obj;
        return this.f31425b.equals(cameraPosition.f31425b) && Float.floatToIntBits(this.f31426c) == Float.floatToIntBits(cameraPosition.f31426c) && Float.floatToIntBits(this.d) == Float.floatToIntBits(cameraPosition.d) && Float.floatToIntBits(this.f31427e) == Float.floatToIntBits(cameraPosition.f31427e);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31425b, Float.valueOf(this.f31426c), Float.valueOf(this.d), Float.valueOf(this.f31427e)});
    }

    public final String toString() {
        Objects.ToStringHelper toStringHelper = new Objects.ToStringHelper(this);
        toStringHelper.a(this.f31425b, "target");
        toStringHelper.a(Float.valueOf(this.f31426c), "zoom");
        toStringHelper.a(Float.valueOf(this.d), "tilt");
        toStringHelper.a(Float.valueOf(this.f31427e), "bearing");
        return toStringHelper.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.j(parcel, 2, this.f31425b, i2, false);
        SafeParcelWriter.p(parcel, 3, 4);
        parcel.writeFloat(this.f31426c);
        SafeParcelWriter.p(parcel, 4, 4);
        parcel.writeFloat(this.d);
        SafeParcelWriter.p(parcel, 5, 4);
        parcel.writeFloat(this.f31427e);
        SafeParcelWriter.r(iQ, parcel);
    }
}
