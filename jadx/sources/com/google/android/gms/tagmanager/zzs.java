package com.google.android.gms.tagmanager;

import android.content.Intent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzs extends com.google.android.gms.internal.gtm.zzd implements zzt {
    public zzs() {
        super("com.google.android.gms.tagmanager.ITagManagerApi");
    }

    public static zzt asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.tagmanager.ITagManagerApi");
        return iInterfaceQueryLocalInterface instanceof zzt ? (zzt) iInterfaceQueryLocalInterface : new zzr(iBinder, "com.google.android.gms.tagmanager.ITagManagerApi");
    }

    @Override // com.google.android.gms.internal.gtm.zzd
    public final boolean E2(int i2, Parcel parcel, Parcel parcel2) {
        zzq zzoVar;
        zzq zzoVar2;
        zzh zzfVar = null;
        if (i2 == 1) {
            IObjectWrapper iObjectWrapperF2 = IObjectWrapper.Stub.F2(parcel.readStrongBinder());
            IBinder strongBinder = parcel.readStrongBinder();
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
            initialize(iObjectWrapperF2, zzoVar, zzfVar);
        } else if (i2 == 2) {
            Intent intent = (Intent) com.google.android.gms.internal.gtm.zze.a(parcel, Intent.CREATOR);
            IObjectWrapper iObjectWrapperF3 = IObjectWrapper.Stub.F2(parcel.readStrongBinder());
            com.google.android.gms.internal.gtm.zze.b(parcel);
            preview(intent, iObjectWrapperF3);
        } else {
            if (i2 != 3) {
                return false;
            }
            Intent intent2 = (Intent) com.google.android.gms.internal.gtm.zze.a(parcel, Intent.CREATOR);
            IObjectWrapper iObjectWrapperF4 = IObjectWrapper.Stub.F2(parcel.readStrongBinder());
            IObjectWrapper iObjectWrapperF5 = IObjectWrapper.Stub.F2(parcel.readStrongBinder());
            IBinder strongBinder3 = parcel.readStrongBinder();
            if (strongBinder3 == null) {
                zzoVar2 = null;
            } else {
                IInterface iInterfaceQueryLocalInterface3 = strongBinder3.queryLocalInterface("com.google.android.gms.tagmanager.IMeasurementProxy");
                zzoVar2 = iInterfaceQueryLocalInterface3 instanceof zzq ? (zzq) iInterfaceQueryLocalInterface3 : new zzo(strongBinder3);
            }
            IBinder strongBinder4 = parcel.readStrongBinder();
            if (strongBinder4 != null) {
                IInterface iInterfaceQueryLocalInterface4 = strongBinder4.queryLocalInterface("com.google.android.gms.tagmanager.ICustomEvaluatorProxy");
                zzfVar = iInterfaceQueryLocalInterface4 instanceof zzh ? (zzh) iInterfaceQueryLocalInterface4 : new zzf(strongBinder4);
            }
            zzh zzhVar = zzfVar;
            com.google.android.gms.internal.gtm.zze.b(parcel);
            previewIntent(intent2, iObjectWrapperF4, iObjectWrapperF5, zzoVar2, zzhVar);
        }
        parcel2.writeNoException();
        return true;
    }
}
