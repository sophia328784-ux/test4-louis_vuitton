package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public final class zzoh extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzoh> CREATOR = new zzoi();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f31943b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f31944c;
    public final int d;

    public zzoh(int i2, String str, long j2) {
        this.f31943b = str;
        this.f31944c = j2;
        this.d = i2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.k(parcel, 1, this.f31943b, false);
        SafeParcelWriter.p(parcel, 2, 8);
        parcel.writeLong(this.f31944c);
        SafeParcelWriter.p(parcel, 3, 4);
        parcel.writeInt(this.d);
        SafeParcelWriter.r(iQ, parcel);
    }
}
