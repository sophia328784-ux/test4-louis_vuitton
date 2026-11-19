package com.google.android.gms.internal.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public final class zzax extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzax> CREATOR = new zzay();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f29601b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f29602c;

    public zzax(String str, int i2) {
        this.f29601b = 1;
        Preconditions.h(str);
        this.f29602c = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f29601b);
        SafeParcelWriter.k(parcel, 2, this.f29602c, false);
        SafeParcelWriter.r(iQ, parcel);
    }

    public zzax(String str) {
        this(str, 0);
    }
}
