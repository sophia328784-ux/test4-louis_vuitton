package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.dynamic.ObjectWrapper;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class MarkerOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<MarkerOptions> CREATOR = new zzp();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public LatLng f31457b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f31458c;
    public String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public BitmapDescriptor f31459e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f31461h;
    public float o;
    public View q;
    public int r;
    public String s;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f31460f = 0.5f;
    public float g = 1.0f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f31462i = true;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f31463j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f31464k = Call.Parameters.DEFAULT_CAMERA_ZOOM;
    public float l = 0.5f;
    public float m = Call.Parameters.DEFAULT_CAMERA_ZOOM;
    public float n = 1.0f;
    public int p = 0;

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.j(parcel, 2, this.f31457b, i2, false);
        SafeParcelWriter.k(parcel, 3, this.f31458c, false);
        SafeParcelWriter.k(parcel, 4, this.d, false);
        BitmapDescriptor bitmapDescriptor = this.f31459e;
        SafeParcelWriter.f(parcel, 5, bitmapDescriptor == null ? null : bitmapDescriptor.f31424a.asBinder());
        float f2 = this.f31460f;
        SafeParcelWriter.p(parcel, 6, 4);
        parcel.writeFloat(f2);
        float f3 = this.g;
        SafeParcelWriter.p(parcel, 7, 4);
        parcel.writeFloat(f3);
        boolean z = this.f31461h;
        SafeParcelWriter.p(parcel, 8, 4);
        parcel.writeInt(z ? 1 : 0);
        boolean z2 = this.f31462i;
        SafeParcelWriter.p(parcel, 9, 4);
        parcel.writeInt(z2 ? 1 : 0);
        boolean z3 = this.f31463j;
        SafeParcelWriter.p(parcel, 10, 4);
        parcel.writeInt(z3 ? 1 : 0);
        float f4 = this.f31464k;
        SafeParcelWriter.p(parcel, 11, 4);
        parcel.writeFloat(f4);
        float f5 = this.l;
        SafeParcelWriter.p(parcel, 12, 4);
        parcel.writeFloat(f5);
        float f6 = this.m;
        SafeParcelWriter.p(parcel, 13, 4);
        parcel.writeFloat(f6);
        float f7 = this.n;
        SafeParcelWriter.p(parcel, 14, 4);
        parcel.writeFloat(f7);
        float f8 = this.o;
        SafeParcelWriter.p(parcel, 15, 4);
        parcel.writeFloat(f8);
        int i3 = this.p;
        SafeParcelWriter.p(parcel, 17, 4);
        parcel.writeInt(i3);
        SafeParcelWriter.f(parcel, 18, new ObjectWrapper(this.q));
        int i4 = this.r;
        SafeParcelWriter.p(parcel, 19, 4);
        parcel.writeInt(i4);
        SafeParcelWriter.k(parcel, 20, this.s, false);
        SafeParcelWriter.r(iQ, parcel);
    }
}
