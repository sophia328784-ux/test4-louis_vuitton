package com.google.android.gms.internal.vision;

import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public final class zzaj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaj> CREATOR = new zzai();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Rect f31151b;

    public zzaj() {
        this.f31151b = new Rect();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.j(parcel, 2, this.f31151b, i2, false);
        SafeParcelWriter.r(iQ, parcel);
    }

    public zzaj(Rect rect) {
        this.f31151b = rect;
    }
}
