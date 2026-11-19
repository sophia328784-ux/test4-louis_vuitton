package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public final class LocationAvailability extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<LocationAvailability> CREATOR;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f31344b;

    static {
        new LocationAvailability(0);
        new LocationAvailability(1000);
        CREATOR = new zzaa();
    }

    public LocationAvailability(int i2) {
        this.f31344b = i2;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof LocationAvailability) && this.f31344b == ((LocationAvailability) obj).f31344b;
    }

    public final int hashCode() {
        return this.f31344b;
    }

    public final String toString() {
        boolean z = this.f31344b < 1000;
        StringBuilder sb = new StringBuilder(String.valueOf(z).length() + 22);
        sb.append("LocationAvailability[");
        sb.append(z);
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 4, 4);
        int i3 = this.f31344b;
        parcel.writeInt(i3);
        int i4 = i3 < 1000 ? 1 : 0;
        SafeParcelWriter.p(parcel, 6, 4);
        parcel.writeInt(i4);
        SafeParcelWriter.r(iQ, parcel);
    }
}
