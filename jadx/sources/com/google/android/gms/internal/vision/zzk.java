package com.google.android.gms.internal.vision;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public final class zzk extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzk> CREATOR = new zzj();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f31233b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f31234c;

    public zzk(int i2, boolean z) {
        this.f31233b = i2;
        this.f31234c = z;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        int i3 = this.f31233b;
        SafeParcelWriter.p(parcel, 2, 4);
        parcel.writeInt(i3);
        SafeParcelWriter.p(parcel, 3, 4);
        parcel.writeInt(this.f31234c ? 1 : 0);
        SafeParcelWriter.r(iQ, parcel);
    }

    public zzk() {
    }
}
