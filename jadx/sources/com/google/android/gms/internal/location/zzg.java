package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.location.DeviceOrientationRequest;
import com.networkbench.agent.impl.util.r;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class zzg extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzg> CREATOR = new zzh();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final DeviceOrientationRequest f30267c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DeviceOrientationRequest f30268b;

    static {
        DeviceOrientationRequest.Builder builder = new DeviceOrientationRequest.Builder(r.x);
        f30267c = new DeviceOrientationRequest(builder.f31334a, builder.f31335b);
    }

    public zzg(DeviceOrientationRequest deviceOrientationRequest) {
        this.f30268b = deviceOrientationRequest;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzg) {
            return Objects.a(this.f30268b, ((zzg) obj).f30268b);
        }
        return false;
    }

    public final int hashCode() {
        return this.f30268b.hashCode();
    }

    public final String toString() {
        return this.f30268b.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.j(parcel, 1, this.f30268b, i2, false);
        SafeParcelWriter.r(iQ, parcel);
    }
}
