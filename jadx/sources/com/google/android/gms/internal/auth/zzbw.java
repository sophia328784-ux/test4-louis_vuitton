package com.google.android.gms.internal.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public final class zzbw extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbw> CREATOR = new zzbx();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f29607b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f29608c;

    public zzbw(int i2, String str) {
        this.f29607b = i2;
        this.f29608c = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f29607b);
        SafeParcelWriter.k(parcel, 2, this.f29608c, false);
        SafeParcelWriter.r(iQ, parcel);
    }

    public zzbw() {
        this.f29607b = 1;
    }
}
