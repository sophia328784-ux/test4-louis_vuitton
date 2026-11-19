package com.google.android.gms.tagmanager;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.gtm.zzbc;
import com.google.android.gms.internal.gtm.zzbd;
import com.google.android.gms.internal.gtm.zzbe;

/* JADX INFO: loaded from: classes2.dex */
public final class zzu extends com.google.android.gms.internal.gtm.zzc implements zzw {
    @Override // com.google.android.gms.tagmanager.zzw
    public final zzbe getService(IObjectWrapper iObjectWrapper, zzq zzqVar, zzh zzhVar) {
        zzbe zzbcVar;
        Parcel parcelE2 = E2();
        com.google.android.gms.internal.gtm.zze.d(parcelE2, iObjectWrapper);
        com.google.android.gms.internal.gtm.zze.d(parcelE2, zzqVar);
        com.google.android.gms.internal.gtm.zze.d(parcelE2, zzhVar);
        Parcel parcelF2 = F2(1, parcelE2);
        IBinder strongBinder = parcelF2.readStrongBinder();
        int i2 = zzbd.f29971a;
        if (strongBinder == null) {
            zzbcVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.tagmanager.internal.ITagManagerService");
            zzbcVar = iInterfaceQueryLocalInterface instanceof zzbe ? (zzbe) iInterfaceQueryLocalInterface : new zzbc(strongBinder);
        }
        parcelF2.recycle();
        return zzbcVar;
    }
}
