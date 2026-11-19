package com.google.android.gms.internal.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public final class zzav extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzav> CREATOR = new zzaw();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f29599b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f29600c;
    public final int d;

    public zzav(String str, int i2, int i3) {
        this.f29599b = 1;
        Preconditions.h(str);
        this.f29600c = str;
        this.d = i2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f29599b);
        SafeParcelWriter.k(parcel, 2, this.f29600c, false);
        SafeParcelWriter.p(parcel, 3, 4);
        parcel.writeInt(this.d);
        SafeParcelWriter.r(iQ, parcel);
    }

    public zzav(String str, int i2) {
        this(str, i2, 0);
    }
}
