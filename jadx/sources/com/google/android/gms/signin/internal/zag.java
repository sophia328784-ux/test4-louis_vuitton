package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class zag extends AbstractSafeParcelable implements Result {
    public static final Parcelable.Creator<zag> CREATOR = new zah();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f32059b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f32060c;

    public zag(List list, String str) {
        this.f32059b = list;
        this.f32060c = str;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.f32060c != null ? Status.f29004f : Status.f29007j;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.m(parcel, 1, this.f32059b);
        SafeParcelWriter.k(parcel, 2, this.f32060c, false);
        SafeParcelWriter.r(iQ, parcel);
    }
}
