package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Pair;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public final class StrokeStyle extends AbstractSafeParcelable {
    public static final Parcelable.Creator<StrokeStyle> CREATOR = new zzad();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f31503b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f31504c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f31505e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final StampStyle f31506f;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public float f31507a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f31508b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f31509c;
        public boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final StampStyle f31510e;

        public Builder(StrokeStyle strokeStyle) {
            this.f31507a = strokeStyle.f31503b;
            Pair pair = new Pair(Integer.valueOf(strokeStyle.f31504c), Integer.valueOf(strokeStyle.d));
            this.f31508b = ((Integer) pair.first).intValue();
            this.f31509c = ((Integer) pair.second).intValue();
            this.d = strokeStyle.f31505e;
            this.f31510e = strokeStyle.f31506f;
        }
    }

    public StrokeStyle(float f2, int i2, int i3, boolean z, StampStyle stampStyle) {
        this.f31503b = f2;
        this.f31504c = i2;
        this.d = i3;
        this.f31505e = z;
        this.f31506f = stampStyle;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 2, 4);
        parcel.writeFloat(this.f31503b);
        SafeParcelWriter.p(parcel, 3, 4);
        parcel.writeInt(this.f31504c);
        SafeParcelWriter.p(parcel, 4, 4);
        parcel.writeInt(this.d);
        SafeParcelWriter.p(parcel, 5, 4);
        parcel.writeInt(this.f31505e ? 1 : 0);
        SafeParcelWriter.j(parcel, 6, this.f31506f, i2, false);
        SafeParcelWriter.r(iQ, parcel);
    }
}
