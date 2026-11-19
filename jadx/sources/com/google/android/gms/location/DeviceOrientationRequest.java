package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.internal.location.zzep;
import defpackage.md;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class DeviceOrientationRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<DeviceOrientationRequest> CREATOR = new zzm();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f31332b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f31333c;

    public DeviceOrientationRequest(long j2, boolean z) {
        this.f31332b = j2;
        this.f31333c = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DeviceOrientationRequest)) {
            return false;
        }
        DeviceOrientationRequest deviceOrientationRequest = (DeviceOrientationRequest) obj;
        return this.f31332b == deviceOrientationRequest.f31332b && this.f31333c == deviceOrientationRequest.f31333c;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.f31332b), Boolean.valueOf(this.f31333c)});
    }

    public final String toString() {
        long j2 = this.f31332b;
        int length = String.valueOf(j2).length();
        String str = true != this.f31333c ? "" : ", withVelocity";
        StringBuilder sb = new StringBuilder(str.length() + length + 46 + 1);
        sb.append("DeviceOrientationRequest[samplingPeriodMicros=");
        sb.append(j2);
        sb.append(str);
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 2, 8);
        parcel.writeLong(this.f31332b);
        SafeParcelWriter.p(parcel, 6, 4);
        parcel.writeInt(this.f31333c ? 1 : 0);
        SafeParcelWriter.r(iQ, parcel);
    }

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f31334a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f31335b;

        public Builder(long j2) {
            this.f31335b = false;
            if (j2 < 0 || j2 >= Long.MAX_VALUE) {
                md.n(zzep.a("Invalid interval: %s should be greater than or equal to 0. Note: Long.MAX_VALUE is not a valid interval.", Long.valueOf(j2)));
                throw null;
            }
            this.f31334a = j2;
        }

        public Builder(DeviceOrientationRequest deviceOrientationRequest) {
            this.f31334a = deviceOrientationRequest.f31332b;
            this.f31335b = deviceOrientationRequest.f31333c;
        }
    }
}
