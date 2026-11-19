package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.zaw;

/* JADX INFO: loaded from: classes2.dex */
public final class zai extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zai> CREATOR = new zaj();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f32061b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final zaw f32062c;

    public zai(int i2, zaw zawVar) {
        this.f32061b = i2;
        this.f32062c = zawVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f32061b);
        SafeParcelWriter.j(parcel, 2, this.f32062c, i2, false);
        SafeParcelWriter.r(iQ, parcel);
    }
}
