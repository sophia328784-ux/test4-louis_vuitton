package com.google.android.gms.common;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: loaded from: classes2.dex */
public final class zzt extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzt> CREATOR = new zzu();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f29379b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final zzj f29380c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f29381e;

    public zzt(String str, IBinder iBinder, boolean z, boolean z2) {
        this.f29379b = str;
        zzk zzkVar = null;
        if (iBinder != null) {
            try {
                int i2 = zzw.f29281a;
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ICertData");
                IObjectWrapper iObjectWrapperG0 = (iInterfaceQueryLocalInterface instanceof com.google.android.gms.common.internal.zzx ? (com.google.android.gms.common.internal.zzx) iInterfaceQueryLocalInterface : new com.google.android.gms.common.internal.zzv(iBinder, "com.google.android.gms.common.internal.ICertData")).g0();
                byte[] bArr = iObjectWrapperG0 == null ? null : (byte[]) ObjectWrapper.G2(iObjectWrapperG0);
                if (bArr != null) {
                    zzkVar = new zzk(bArr);
                }
            } catch (RemoteException unused) {
            }
        }
        this.f29380c = zzkVar;
        this.d = z;
        this.f29381e = z2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.k(parcel, 1, this.f29379b, false);
        zzj zzjVar = this.f29380c;
        if (zzjVar == null) {
            zzjVar = null;
        }
        SafeParcelWriter.f(parcel, 2, zzjVar);
        SafeParcelWriter.p(parcel, 3, 4);
        parcel.writeInt(this.d ? 1 : 0);
        SafeParcelWriter.p(parcel, 4, 4);
        parcel.writeInt(this.f29381e ? 1 : 0);
        SafeParcelWriter.r(iQ, parcel);
    }

    public zzt(String str, zzj zzjVar, boolean z, boolean z2) {
        this.f29379b = str;
        this.f29380c = zzjVar;
        this.d = z;
        this.f29381e = z2;
    }
}
