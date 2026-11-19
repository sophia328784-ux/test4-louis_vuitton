package com.google.android.gms.internal.location;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.location.zzr;

/* JADX INFO: loaded from: classes2.dex */
public final class zzi extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzi> CREATOR = new zzj();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f30269b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final zzg f30270c;
    public final com.google.android.gms.location.zzs d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final zzq f30271e;

    public zzi(int i2, zzg zzgVar, IBinder iBinder, IBinder iBinder2) {
        com.google.android.gms.location.zzs zzqVar;
        this.f30269b = i2;
        this.f30270c = zzgVar;
        zzq zzoVar = null;
        if (iBinder == null) {
            zzqVar = null;
        } else {
            int i3 = zzr.f31405a;
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.IDeviceOrientationListener");
            zzqVar = iInterfaceQueryLocalInterface instanceof com.google.android.gms.location.zzs ? (com.google.android.gms.location.zzs) iInterfaceQueryLocalInterface : new com.google.android.gms.location.zzq(iBinder, "com.google.android.gms.location.IDeviceOrientationListener");
        }
        this.d = zzqVar;
        if (iBinder2 != null) {
            IInterface iInterfaceQueryLocalInterface2 = iBinder2.queryLocalInterface("com.google.android.gms.location.internal.IFusedLocationProviderCallback");
            zzoVar = iInterfaceQueryLocalInterface2 instanceof zzq ? (zzq) iInterfaceQueryLocalInterface2 : new zzo(iBinder2);
        }
        this.f30271e = zzoVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f30269b);
        SafeParcelWriter.j(parcel, 2, this.f30270c, i2, false);
        com.google.android.gms.location.zzs zzsVar = this.d;
        SafeParcelWriter.f(parcel, 3, zzsVar == null ? null : zzsVar.asBinder());
        zzq zzqVar = this.f30271e;
        SafeParcelWriter.f(parcel, 4, zzqVar != null ? zzqVar.asBinder() : null);
        SafeParcelWriter.r(iQ, parcel);
    }
}
