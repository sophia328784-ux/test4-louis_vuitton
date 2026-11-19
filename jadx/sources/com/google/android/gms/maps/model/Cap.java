package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import defpackage.a;
import java.util.Arrays;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class Cap extends AbstractSafeParcelable {
    public static final Parcelable.Creator<Cap> CREATOR = new zzb();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f31428b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BitmapDescriptor f31429c;
    public final Float d;

    public Cap(int i2, BitmapDescriptor bitmapDescriptor, Float f2) {
        boolean z = true;
        boolean z2 = f2 != null && f2.floatValue() > Call.Parameters.DEFAULT_CAMERA_ZOOM;
        if (i2 == 3) {
            z = bitmapDescriptor != null && z2;
            i2 = 3;
        }
        Preconditions.b(z, "Invalid Cap: type=" + i2 + " bitmapDescriptor=" + bitmapDescriptor + " bitmapRefWidth=" + f2);
        this.f31428b = i2;
        this.f31429c = bitmapDescriptor;
        this.d = f2;
    }

    public final Cap W1() {
        int i2 = this.f31428b;
        if (i2 == 0) {
            return new ButtCap();
        }
        if (i2 == 1) {
            return new SquareCap();
        }
        if (i2 == 2) {
            return new RoundCap();
        }
        if (i2 != 3) {
            return this;
        }
        BitmapDescriptor bitmapDescriptor = this.f31429c;
        Preconditions.j("bitmapDescriptor must not be null", bitmapDescriptor != null);
        Float f2 = this.d;
        Preconditions.j("bitmapRefWidth must not be null", f2 != null);
        return new CustomCap(bitmapDescriptor, f2.floatValue());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Cap)) {
            return false;
        }
        Cap cap = (Cap) obj;
        return this.f31428b == cap.f31428b && Objects.a(this.f31429c, cap.f31429c) && Objects.a(this.d, cap.d);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f31428b), this.f31429c, this.d});
    }

    public String toString() {
        return a.i(this.f31428b, "]", new StringBuilder("[Cap: type="));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 2, 4);
        parcel.writeInt(this.f31428b);
        BitmapDescriptor bitmapDescriptor = this.f31429c;
        SafeParcelWriter.f(parcel, 3, bitmapDescriptor == null ? null : bitmapDescriptor.f31424a.asBinder());
        SafeParcelWriter.e(parcel, 4, this.d);
        SafeParcelWriter.r(iQ, parcel);
    }
}
