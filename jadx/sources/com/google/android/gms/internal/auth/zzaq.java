package com.google.android.gms.internal.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public final class zzaq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaq> CREATOR = new zzar();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f29597b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f29598c;

    public zzaq(String str, int i2) {
        this.f29597b = 1;
        Preconditions.h(str);
        this.f29598c = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f29597b);
        SafeParcelWriter.k(parcel, 2, this.f29598c, false);
        SafeParcelWriter.r(iQ, parcel);
    }

    public zzaq(String str) {
        this(str, 0);
    }
}
