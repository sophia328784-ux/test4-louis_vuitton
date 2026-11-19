package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
public final class StyleSpan extends AbstractSafeParcelable {
    public static final Parcelable.Creator<StyleSpan> CREATOR = new zzae();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final StrokeStyle f31511b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final double f31512c;

    public StyleSpan(int i2, double d) {
        if (d <= 0.0d) {
            md.n("A style must be applied to some segments on a polyline.");
            throw null;
        }
        Parcelable.Creator<StrokeStyle> creator = StrokeStyle.CREATOR;
        StrokeStyle.Builder builder = new StrokeStyle.Builder();
        builder.f31508b = i2;
        builder.f31509c = i2;
        this.f31511b = new StrokeStyle(builder.f31507a, builder.f31508b, builder.f31509c, builder.d, builder.f31510e);
        this.f31512c = d;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.j(parcel, 2, this.f31511b, i2, false);
        SafeParcelWriter.p(parcel, 3, 8);
        parcel.writeDouble(this.f31512c);
        SafeParcelWriter.r(iQ, parcel);
    }

    public StyleSpan(int i2) {
        Parcelable.Creator<StrokeStyle> creator = StrokeStyle.CREATOR;
        StrokeStyle.Builder builder = new StrokeStyle.Builder();
        builder.f31508b = i2;
        builder.f31509c = i2;
        this.f31511b = new StrokeStyle(builder.f31507a, builder.f31508b, builder.f31509c, builder.d, builder.f31510e);
        this.f31512c = 1.0d;
    }

    public StyleSpan(StrokeStyle strokeStyle) {
        this.f31511b = strokeStyle;
        this.f31512c = 1.0d;
    }

    public StyleSpan(StrokeStyle strokeStyle, double d) {
        if (d > 0.0d) {
            this.f31511b = strokeStyle;
            this.f31512c = d;
        } else {
            md.n("A style must be applied to some segments on a polyline.");
            throw null;
        }
    }
}
