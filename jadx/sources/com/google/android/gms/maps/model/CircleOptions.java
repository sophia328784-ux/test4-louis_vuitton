package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.batch.android.q0.b;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.ArrayList;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public final class CircleOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<CircleOptions> CREATOR = new zzc();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public LatLng f31430b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public double f31431c = 0.0d;
    public float d = 10.0f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f31432e = b.v;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f31433f = 0;
    public float g = Call.Parameters.DEFAULT_CAMERA_ZOOM;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f31434h = true;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f31435i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ArrayList f31436j = null;

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.j(parcel, 2, this.f31430b, i2, false);
        double d = this.f31431c;
        SafeParcelWriter.p(parcel, 3, 8);
        parcel.writeDouble(d);
        float f2 = this.d;
        SafeParcelWriter.p(parcel, 4, 4);
        parcel.writeFloat(f2);
        int i3 = this.f31432e;
        SafeParcelWriter.p(parcel, 5, 4);
        parcel.writeInt(i3);
        int i4 = this.f31433f;
        SafeParcelWriter.p(parcel, 6, 4);
        parcel.writeInt(i4);
        float f3 = this.g;
        SafeParcelWriter.p(parcel, 7, 4);
        parcel.writeFloat(f3);
        boolean z = this.f31434h;
        SafeParcelWriter.p(parcel, 8, 4);
        parcel.writeInt(z ? 1 : 0);
        boolean z2 = this.f31435i;
        SafeParcelWriter.p(parcel, 9, 4);
        parcel.writeInt(z2 ? 1 : 0);
        SafeParcelWriter.o(parcel, 10, this.f31436j, false);
        SafeParcelWriter.r(iQ, parcel);
    }
}
