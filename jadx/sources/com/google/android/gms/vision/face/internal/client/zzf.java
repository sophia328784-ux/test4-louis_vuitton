package com.google.android.gms.vision.face.internal.client;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public final class zzf extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzf> CREATOR = new zze();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f32197b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f32198c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f32199e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f32200f;
    public final float g;

    public zzf(int i2, int i3, int i4, boolean z, boolean z2, float f2) {
        this.f32197b = i2;
        this.f32198c = i3;
        this.d = i4;
        this.f32199e = z;
        this.f32200f = z2;
        this.g = f2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 2, 4);
        parcel.writeInt(this.f32197b);
        SafeParcelWriter.p(parcel, 3, 4);
        parcel.writeInt(this.f32198c);
        SafeParcelWriter.p(parcel, 4, 4);
        parcel.writeInt(this.d);
        SafeParcelWriter.p(parcel, 5, 4);
        parcel.writeInt(this.f32199e ? 1 : 0);
        SafeParcelWriter.p(parcel, 6, 4);
        parcel.writeInt(this.f32200f ? 1 : 0);
        SafeParcelWriter.p(parcel, 7, 4);
        parcel.writeFloat(this.g);
        SafeParcelWriter.r(iQ, parcel);
    }

    public zzf() {
    }
}
