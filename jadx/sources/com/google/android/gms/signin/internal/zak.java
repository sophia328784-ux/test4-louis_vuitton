package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.zay;

/* JADX INFO: loaded from: classes2.dex */
public final class zak extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zak> CREATOR = new zal();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f32063b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ConnectionResult f32064c;
    public final zay d;

    public zak(int i2, ConnectionResult connectionResult, zay zayVar) {
        this.f32063b = i2;
        this.f32064c = connectionResult;
        this.d = zayVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f32063b);
        SafeParcelWriter.j(parcel, 2, this.f32064c, i2, false);
        SafeParcelWriter.j(parcel, 3, this.d, i2, false);
        SafeParcelWriter.r(iQ, parcel);
    }
}
