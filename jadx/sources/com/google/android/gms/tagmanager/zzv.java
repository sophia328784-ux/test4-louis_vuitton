package com.google.android.gms.tagmanager;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.gtm.zzbe;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzv extends com.google.android.gms.internal.gtm.zzd implements zzw {
    public zzv() {
        super("com.google.android.gms.tagmanager.ITagManagerServiceProvider");
    }

    public static zzw asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.tagmanager.ITagManagerServiceProvider");
        return iInterfaceQueryLocalInterface instanceof zzw ? (zzw) iInterfaceQueryLocalInterface : new zzu(iBinder, "com.google.android.gms.tagmanager.ITagManagerServiceProvider");
    }

    @Override // com.google.android.gms.internal.gtm.zzd
    public final boolean E2(int i2, Parcel parcel, Parcel parcel2) {
        zzq zzoVar;
        if (i2 != 1) {
            return false;
        }
        IObjectWrapper iObjectWrapperF2 = IObjectWrapper.Stub.F2(parcel.readStrongBinder());
        IBinder strongBinder = parcel.readStrongBinder();
        zzh zzfVar = null;
        if (strongBinder == null) {
            zzoVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.tagmanager.IMeasurementProxy");
            zzoVar = iInterfaceQueryLocalInterface instanceof zzq ? (zzq) iInterfaceQueryLocalInterface : new zzo(strongBinder);
        }
        IBinder strongBinder2 = parcel.readStrongBinder();
        if (strongBinder2 != null) {
            IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.tagmanager.ICustomEvaluatorProxy");
            zzfVar = iInterfaceQueryLocalInterface2 instanceof zzh ? (zzh) iInterfaceQueryLocalInterface2 : new zzf(strongBinder2);
        }
        com.google.android.gms.internal.gtm.zze.b(parcel);
        zzbe service = getService(iObjectWrapperF2, zzoVar, zzfVar);
        parcel2.writeNoException();
        com.google.android.gms.internal.gtm.zze.d(parcel2, service);
        return true;
    }
}
