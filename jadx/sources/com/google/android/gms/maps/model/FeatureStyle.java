package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public final class FeatureStyle extends AbstractSafeParcelable {
    public static final Parcelable.Creator<FeatureStyle> CREATOR = new zzi();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Integer f31441b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Integer f31442c;
    public final Float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Float f31443e;

    public FeatureStyle(Integer num, Integer num2, Float f2, Float f3) {
        this.f31441b = num;
        this.f31442c = num2;
        this.d = f2;
        this.f31443e = f3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.h(parcel, 1, this.f31441b);
        SafeParcelWriter.h(parcel, 2, this.f31442c);
        SafeParcelWriter.e(parcel, 3, this.d);
        SafeParcelWriter.e(parcel, 4, this.f31443e);
        SafeParcelWriter.r(iQ, parcel);
    }
}
