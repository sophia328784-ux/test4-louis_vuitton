package com.google.android.gms.signin.internal;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public final class zaa extends AbstractSafeParcelable implements Result {
    public static final Parcelable.Creator<zaa> CREATOR = new zab();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f32057b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f32058c;
    public final Intent d;

    public zaa(int i2, int i3, Intent intent) {
        this.f32057b = i2;
        this.f32058c = i3;
        this.d = intent;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.f32058c == 0 ? Status.f29004f : Status.f29007j;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f32057b);
        SafeParcelWriter.p(parcel, 2, 4);
        parcel.writeInt(this.f32058c);
        SafeParcelWriter.j(parcel, 3, this.d, i2, false);
        SafeParcelWriter.r(iQ, parcel);
    }

    public zaa() {
        this(2, 0, null);
    }
}
