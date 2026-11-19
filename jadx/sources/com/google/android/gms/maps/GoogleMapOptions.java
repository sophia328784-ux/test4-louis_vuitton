package com.google.android.gms.maps;

import android.graphics.Color;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.maps.internal.zza;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLngBounds;

/* JADX INFO: loaded from: classes2.dex */
public final class GoogleMapOptions extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<GoogleMapOptions> CREATOR = new zzac();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Boolean f31408b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Boolean f31409c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public CameraPosition f31410e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Boolean f31411f;
    public Boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Boolean f31412h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Boolean f31413i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Boolean f31414j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Boolean f31415k;
    public Boolean l;
    public Boolean m;
    public Boolean n;
    public Boolean r;
    public int u;
    public int d = -1;
    public Float o = null;
    public Float p = null;
    public LatLngBounds q = null;
    public Integer s = null;
    public String t = null;

    static {
        Color.argb(255, 236, 233, 225);
    }

    public final String toString() {
        Objects.ToStringHelper toStringHelper = new Objects.ToStringHelper(this);
        toStringHelper.a(Integer.valueOf(this.d), "MapType");
        toStringHelper.a(this.l, "LiteMode");
        toStringHelper.a(this.f31410e, "Camera");
        toStringHelper.a(this.g, "CompassEnabled");
        toStringHelper.a(this.f31411f, "ZoomControlsEnabled");
        toStringHelper.a(this.f31412h, "ScrollGesturesEnabled");
        toStringHelper.a(this.f31413i, "ZoomGesturesEnabled");
        toStringHelper.a(this.f31414j, "TiltGesturesEnabled");
        toStringHelper.a(this.f31415k, "RotateGesturesEnabled");
        toStringHelper.a(this.r, "ScrollGesturesEnabledDuringRotateOrZoom");
        toStringHelper.a(this.m, "MapToolbarEnabled");
        toStringHelper.a(this.n, "AmbientEnabled");
        toStringHelper.a(this.o, "MinZoomPreference");
        toStringHelper.a(this.p, "MaxZoomPreference");
        toStringHelper.a(this.s, "BackgroundColor");
        toStringHelper.a(this.q, "LatLngBoundsForCameraTarget");
        toStringHelper.a(this.f31408b, "ZOrderOnTop");
        toStringHelper.a(this.f31409c, "UseViewLifecycleInFragment");
        toStringHelper.a(Integer.valueOf(this.u), "mapColorScheme");
        return toStringHelper.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        byte bA = zza.a(this.f31408b);
        SafeParcelWriter.p(parcel, 2, 4);
        parcel.writeInt(bA);
        byte bA2 = zza.a(this.f31409c);
        SafeParcelWriter.p(parcel, 3, 4);
        parcel.writeInt(bA2);
        int i3 = this.d;
        SafeParcelWriter.p(parcel, 4, 4);
        parcel.writeInt(i3);
        SafeParcelWriter.j(parcel, 5, this.f31410e, i2, false);
        byte bA3 = zza.a(this.f31411f);
        SafeParcelWriter.p(parcel, 6, 4);
        parcel.writeInt(bA3);
        byte bA4 = zza.a(this.g);
        SafeParcelWriter.p(parcel, 7, 4);
        parcel.writeInt(bA4);
        byte bA5 = zza.a(this.f31412h);
        SafeParcelWriter.p(parcel, 8, 4);
        parcel.writeInt(bA5);
        byte bA6 = zza.a(this.f31413i);
        SafeParcelWriter.p(parcel, 9, 4);
        parcel.writeInt(bA6);
        byte bA7 = zza.a(this.f31414j);
        SafeParcelWriter.p(parcel, 10, 4);
        parcel.writeInt(bA7);
        byte bA8 = zza.a(this.f31415k);
        SafeParcelWriter.p(parcel, 11, 4);
        parcel.writeInt(bA8);
        byte bA9 = zza.a(this.l);
        SafeParcelWriter.p(parcel, 12, 4);
        parcel.writeInt(bA9);
        byte bA10 = zza.a(this.m);
        SafeParcelWriter.p(parcel, 14, 4);
        parcel.writeInt(bA10);
        byte bA11 = zza.a(this.n);
        SafeParcelWriter.p(parcel, 15, 4);
        parcel.writeInt(bA11);
        SafeParcelWriter.e(parcel, 16, this.o);
        SafeParcelWriter.e(parcel, 17, this.p);
        SafeParcelWriter.j(parcel, 18, this.q, i2, false);
        byte bA12 = zza.a(this.r);
        SafeParcelWriter.p(parcel, 19, 4);
        parcel.writeInt(bA12);
        SafeParcelWriter.h(parcel, 20, this.s);
        SafeParcelWriter.k(parcel, 21, this.t, false);
        int i4 = this.u;
        SafeParcelWriter.p(parcel, 23, 4);
        parcel.writeInt(i4);
        SafeParcelWriter.r(iQ, parcel);
    }
}
