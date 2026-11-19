package com.google.android.gms.internal.vision;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public final class zzao extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzao> CREATOR = new zzar();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzal[] f31153b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final zzab f31154c;
    public final zzab d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f31155e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float f31156f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f31157h;

    public zzao(zzal[] zzalVarArr, zzab zzabVar, zzab zzabVar2, String str, float f2, String str2, boolean z) {
        this.f31153b = zzalVarArr;
        this.f31154c = zzabVar;
        this.d = zzabVar2;
        this.f31155e = str;
        this.f31156f = f2;
        this.g = str2;
        this.f31157h = z;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.n(parcel, 2, this.f31153b, i2);
        SafeParcelWriter.j(parcel, 3, this.f31154c, i2, false);
        SafeParcelWriter.j(parcel, 4, this.d, i2, false);
        SafeParcelWriter.k(parcel, 5, this.f31155e, false);
        SafeParcelWriter.p(parcel, 6, 4);
        parcel.writeFloat(this.f31156f);
        SafeParcelWriter.k(parcel, 7, this.g, false);
        SafeParcelWriter.p(parcel, 8, 4);
        parcel.writeInt(this.f31157h ? 1 : 0);
        SafeParcelWriter.r(iQ, parcel);
    }
}
