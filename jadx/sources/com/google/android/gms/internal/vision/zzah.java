package com.google.android.gms.internal.vision;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public final class zzah extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzah> CREATOR = new zzag();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzao[] f31143b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final zzab f31144c;
    public final zzab d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final zzab f31145e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f31146f;
    public final float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f31147h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f31148i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f31149j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f31150k;
    public final int l;

    public zzah(zzao[] zzaoVarArr, zzab zzabVar, zzab zzabVar2, zzab zzabVar3, String str, float f2, String str2, int i2, boolean z, int i3, int i4) {
        this.f31143b = zzaoVarArr;
        this.f31144c = zzabVar;
        this.d = zzabVar2;
        this.f31145e = zzabVar3;
        this.f31146f = str;
        this.g = f2;
        this.f31147h = str2;
        this.f31148i = i2;
        this.f31149j = z;
        this.f31150k = i3;
        this.l = i4;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.n(parcel, 2, this.f31143b, i2);
        SafeParcelWriter.j(parcel, 3, this.f31144c, i2, false);
        SafeParcelWriter.j(parcel, 4, this.d, i2, false);
        SafeParcelWriter.j(parcel, 5, this.f31145e, i2, false);
        SafeParcelWriter.k(parcel, 6, this.f31146f, false);
        SafeParcelWriter.p(parcel, 7, 4);
        parcel.writeFloat(this.g);
        SafeParcelWriter.k(parcel, 8, this.f31147h, false);
        SafeParcelWriter.p(parcel, 9, 4);
        parcel.writeInt(this.f31148i);
        SafeParcelWriter.p(parcel, 10, 4);
        parcel.writeInt(this.f31149j ? 1 : 0);
        SafeParcelWriter.p(parcel, 11, 4);
        parcel.writeInt(this.f31150k);
        SafeParcelWriter.p(parcel, 12, 4);
        parcel.writeInt(this.l);
        SafeParcelWriter.r(iQ, parcel);
    }
}
