package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public final class GroundOverlayOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GroundOverlayOptions> CREATOR = new zzk();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public BitmapDescriptor f31444b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public LatLng f31445c;
    public float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f31446e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public LatLngBounds f31447f;
    public float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f31448h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f31449i = true;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f31450j = Call.Parameters.DEFAULT_CAMERA_ZOOM;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f31451k = 0.5f;
    public float l = 0.5f;
    public boolean m = false;

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.f(parcel, 2, this.f31444b.f31424a.asBinder());
        SafeParcelWriter.j(parcel, 3, this.f31445c, i2, false);
        float f2 = this.d;
        SafeParcelWriter.p(parcel, 4, 4);
        parcel.writeFloat(f2);
        float f3 = this.f31446e;
        SafeParcelWriter.p(parcel, 5, 4);
        parcel.writeFloat(f3);
        SafeParcelWriter.j(parcel, 6, this.f31447f, i2, false);
        float f4 = this.g;
        SafeParcelWriter.p(parcel, 7, 4);
        parcel.writeFloat(f4);
        float f5 = this.f31448h;
        SafeParcelWriter.p(parcel, 8, 4);
        parcel.writeFloat(f5);
        boolean z = this.f31449i;
        SafeParcelWriter.p(parcel, 9, 4);
        parcel.writeInt(z ? 1 : 0);
        float f6 = this.f31450j;
        SafeParcelWriter.p(parcel, 10, 4);
        parcel.writeFloat(f6);
        float f7 = this.f31451k;
        SafeParcelWriter.p(parcel, 11, 4);
        parcel.writeFloat(f7);
        float f8 = this.l;
        SafeParcelWriter.p(parcel, 12, 4);
        parcel.writeFloat(f8);
        boolean z2 = this.m;
        SafeParcelWriter.p(parcel, 13, 4);
        parcel.writeInt(z2 ? 1 : 0);
        SafeParcelWriter.r(iQ, parcel);
    }
}
