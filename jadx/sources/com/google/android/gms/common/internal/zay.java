package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public final class zay extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zay> CREATOR = new zaz();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f29240b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final IBinder f29241c;
    public final ConnectionResult d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f29242e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f29243f;

    public zay(int i2, IBinder iBinder, ConnectionResult connectionResult, boolean z, boolean z2) {
        this.f29240b = i2;
        this.f29241c = iBinder;
        this.d = connectionResult;
        this.f29242e = z;
        this.f29243f = z2;
    }

    public final boolean equals(Object obj) {
        Object zztVar;
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zay)) {
            return false;
        }
        zay zayVar = (zay) obj;
        if (!this.d.equals(zayVar.d)) {
            return false;
        }
        Object zztVar2 = null;
        IBinder iBinder = this.f29241c;
        if (iBinder == null) {
            zztVar = null;
        } else {
            int i2 = IAccountAccessor.Stub.f29189a;
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
            zztVar = iInterfaceQueryLocalInterface instanceof IAccountAccessor ? (IAccountAccessor) iInterfaceQueryLocalInterface : new zzt(iBinder, "com.google.android.gms.common.internal.IAccountAccessor");
        }
        IBinder iBinder2 = zayVar.f29241c;
        if (iBinder2 != null) {
            int i3 = IAccountAccessor.Stub.f29189a;
            IInterface iInterfaceQueryLocalInterface2 = iBinder2.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
            zztVar2 = iInterfaceQueryLocalInterface2 instanceof IAccountAccessor ? (IAccountAccessor) iInterfaceQueryLocalInterface2 : new zzt(iBinder2, "com.google.android.gms.common.internal.IAccountAccessor");
        }
        return Objects.a(zztVar, zztVar2);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f29240b);
        SafeParcelWriter.f(parcel, 2, this.f29241c);
        SafeParcelWriter.j(parcel, 3, this.d, i2, false);
        SafeParcelWriter.p(parcel, 4, 4);
        parcel.writeInt(this.f29242e ? 1 : 0);
        SafeParcelWriter.p(parcel, 5, 4);
        parcel.writeInt(this.f29243f ? 1 : 0);
        SafeParcelWriter.r(iQ, parcel);
    }
}
