package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes2.dex */
public class StampStyle extends AbstractSafeParcelable {
    public static final Parcelable.Creator<StampStyle> CREATOR = new zzw();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BitmapDescriptor f31490b;

    public StampStyle(IBinder iBinder) {
        this.f31490b = new BitmapDescriptor(IObjectWrapper.Stub.F2(iBinder));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.f(parcel, 2, this.f31490b.f31424a.asBinder());
        SafeParcelWriter.r(iQ, parcel);
    }

    public StampStyle(BitmapDescriptor bitmapDescriptor) {
        this.f31490b = bitmapDescriptor;
    }
}
