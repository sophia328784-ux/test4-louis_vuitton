package com.google.android.gms.vision.face.internal.client;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public final class LandmarkParcel extends AbstractSafeParcelable {
    public static final Parcelable.Creator<LandmarkParcel> CREATOR = new zzm();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f32192b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f32193c;
    public final float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f32194e;

    public LandmarkParcel(int i2, float f2, float f3, int i3) {
        this.f32192b = i2;
        this.f32193c = f2;
        this.d = f3;
        this.f32194e = i3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f32192b);
        SafeParcelWriter.p(parcel, 2, 4);
        parcel.writeFloat(this.f32193c);
        SafeParcelWriter.p(parcel, 3, 4);
        parcel.writeFloat(this.d);
        SafeParcelWriter.p(parcel, 4, 4);
        parcel.writeInt(this.f32194e);
        SafeParcelWriter.r(iQ, parcel);
    }
}
