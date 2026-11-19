package com.google.android.gms.internal.location;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.location.zzv;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class zzeh extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzeh> CREATOR = new zzei();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f30243b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final zzef f30244c;
    public final com.google.android.gms.location.zzy d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final zzv f30245e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final PendingIntent f30246f;
    public final zzq g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f30247h;

    public zzeh(int i2, zzef zzefVar, IBinder iBinder, IBinder iBinder2, PendingIntent pendingIntent, IBinder iBinder3, String str) {
        com.google.android.gms.location.zzy zzwVar;
        zzv zztVar;
        this.f30243b = i2;
        this.f30244c = zzefVar;
        zzq zzoVar = null;
        if (iBinder != null) {
            int i3 = com.google.android.gms.location.zzx.f31407a;
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.ILocationListener");
            zzwVar = iInterfaceQueryLocalInterface instanceof com.google.android.gms.location.zzy ? (com.google.android.gms.location.zzy) iInterfaceQueryLocalInterface : new com.google.android.gms.location.zzw(iBinder, "com.google.android.gms.location.ILocationListener");
        } else {
            zzwVar = null;
        }
        this.d = zzwVar;
        this.f30246f = pendingIntent;
        if (iBinder2 != null) {
            int i4 = com.google.android.gms.location.zzu.f31406a;
            IInterface iInterfaceQueryLocalInterface2 = iBinder2.queryLocalInterface("com.google.android.gms.location.ILocationCallback");
            zztVar = iInterfaceQueryLocalInterface2 instanceof zzv ? (zzv) iInterfaceQueryLocalInterface2 : new com.google.android.gms.location.zzt(iBinder2, "com.google.android.gms.location.ILocationCallback");
        } else {
            zztVar = null;
        }
        this.f30245e = zztVar;
        if (iBinder3 != null) {
            IInterface iInterfaceQueryLocalInterface3 = iBinder3.queryLocalInterface("com.google.android.gms.location.internal.IFusedLocationProviderCallback");
            zzoVar = iInterfaceQueryLocalInterface3 instanceof zzq ? (zzq) iInterfaceQueryLocalInterface3 : new zzo(iBinder3);
        }
        this.g = zzoVar;
        this.f30247h = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f30243b);
        SafeParcelWriter.j(parcel, 2, this.f30244c, i2, false);
        com.google.android.gms.location.zzy zzyVar = this.d;
        SafeParcelWriter.f(parcel, 3, zzyVar == null ? null : zzyVar.asBinder());
        SafeParcelWriter.j(parcel, 4, this.f30246f, i2, false);
        zzv zzvVar = this.f30245e;
        SafeParcelWriter.f(parcel, 5, zzvVar == null ? null : zzvVar.asBinder());
        zzq zzqVar = this.g;
        SafeParcelWriter.f(parcel, 6, zzqVar != null ? zzqVar.asBinder() : null);
        SafeParcelWriter.k(parcel, 8, this.f30247h, false);
        SafeParcelWriter.r(iQ, parcel);
    }
}
