package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import defpackage.n00;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class StreetViewSource extends AbstractSafeParcelable {
    public static final Parcelable.Creator<StreetViewSource> CREATOR = new zzab();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final StreetViewSource f31501c = new StreetViewSource(0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f31502b;

    static {
        new StreetViewSource(1);
    }

    public StreetViewSource(int i2) {
        this.f31502b = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof StreetViewSource) && this.f31502b == ((StreetViewSource) obj).f31502b;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f31502b)});
    }

    public final String toString() {
        String strM;
        int i2 = this.f31502b;
        if (i2 != 0) {
            strM = i2 != 1 ? n00.m(i2, "UNKNOWN(", ")") : "OUTDOOR";
        } else {
            strM = "DEFAULT";
        }
        return "StreetViewSource:".concat(strM);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 2, 4);
        parcel.writeInt(this.f31502b);
        SafeParcelWriter.r(iQ, parcel);
    }
}
