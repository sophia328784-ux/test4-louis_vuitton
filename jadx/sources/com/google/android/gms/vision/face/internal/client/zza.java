package com.google.android.gms.vision.face.internal.client;

import android.graphics.PointF;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public final class zza extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zza> CREATOR = new zzc();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PointF[] f32195b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f32196c;

    public zza(PointF[] pointFArr, int i2) {
        this.f32195b = pointFArr;
        this.f32196c = i2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.n(parcel, 2, this.f32195b, i2);
        SafeParcelWriter.p(parcel, 3, 4);
        parcel.writeInt(this.f32196c);
        SafeParcelWriter.r(iQ, parcel);
    }
}
