package com.google.android.gms.internal.vision;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public final class zzab extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzab> CREATOR = new zzaa();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f31139b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f31140c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f31141e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float f31142f;

    public zzab(int i2, int i3, int i4, int i5, float f2) {
        this.f31139b = i2;
        this.f31140c = i3;
        this.d = i4;
        this.f31141e = i5;
        this.f31142f = f2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 2, 4);
        parcel.writeInt(this.f31139b);
        SafeParcelWriter.p(parcel, 3, 4);
        parcel.writeInt(this.f31140c);
        SafeParcelWriter.p(parcel, 4, 4);
        parcel.writeInt(this.d);
        SafeParcelWriter.p(parcel, 5, 4);
        parcel.writeInt(this.f31141e);
        SafeParcelWriter.p(parcel, 6, 4);
        parcel.writeFloat(this.f31142f);
        SafeParcelWriter.r(iQ, parcel);
    }
}
