package com.google.android.gms.maps;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.maps.internal.zza;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;
import com.google.android.gms.maps.model.StreetViewSource;

/* JADX INFO: loaded from: classes2.dex */
public final class StreetViewPanoramaOptions extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<StreetViewPanoramaOptions> CREATOR = new zzar();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public StreetViewPanoramaCamera f31416b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f31417c;
    public LatLng d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Integer f31418e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Boolean f31419f;
    public Boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Boolean f31420h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Boolean f31421i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Boolean f31422j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public StreetViewSource f31423k;

    public StreetViewPanoramaOptions() {
        Boolean bool = Boolean.TRUE;
        this.f31419f = bool;
        this.g = bool;
        this.f31420h = bool;
        this.f31421i = bool;
        this.f31423k = StreetViewSource.f31501c;
    }

    public final String toString() {
        Objects.ToStringHelper toStringHelper = new Objects.ToStringHelper(this);
        toStringHelper.a(this.f31417c, "PanoramaId");
        toStringHelper.a(this.d, "Position");
        toStringHelper.a(this.f31418e, "Radius");
        toStringHelper.a(this.f31423k, "Source");
        toStringHelper.a(this.f31416b, "StreetViewPanoramaCamera");
        toStringHelper.a(this.f31419f, "UserNavigationEnabled");
        toStringHelper.a(this.g, "ZoomGesturesEnabled");
        toStringHelper.a(this.f31420h, "PanningGesturesEnabled");
        toStringHelper.a(this.f31421i, "StreetNamesEnabled");
        toStringHelper.a(this.f31422j, "UseViewLifecycleInFragment");
        return toStringHelper.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.j(parcel, 2, this.f31416b, i2, false);
        SafeParcelWriter.k(parcel, 3, this.f31417c, false);
        SafeParcelWriter.j(parcel, 4, this.d, i2, false);
        SafeParcelWriter.h(parcel, 5, this.f31418e);
        byte bA = zza.a(this.f31419f);
        SafeParcelWriter.p(parcel, 6, 4);
        parcel.writeInt(bA);
        byte bA2 = zza.a(this.g);
        SafeParcelWriter.p(parcel, 7, 4);
        parcel.writeInt(bA2);
        byte bA3 = zza.a(this.f31420h);
        SafeParcelWriter.p(parcel, 8, 4);
        parcel.writeInt(bA3);
        byte bA4 = zza.a(this.f31421i);
        SafeParcelWriter.p(parcel, 9, 4);
        parcel.writeInt(bA4);
        byte bA5 = zza.a(this.f31422j);
        SafeParcelWriter.p(parcel, 10, 4);
        parcel.writeInt(bA5);
        SafeParcelWriter.j(parcel, 11, this.f31423k, i2, false);
        SafeParcelWriter.r(iQ, parcel);
    }
}
