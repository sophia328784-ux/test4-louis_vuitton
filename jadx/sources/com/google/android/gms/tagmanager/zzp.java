package com.google.android.gms.tagmanager;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzp extends com.google.android.gms.internal.gtm.zzd implements zzq {
    public zzp() {
        super("com.google.android.gms.tagmanager.IMeasurementProxy");
    }

    @Override // com.google.android.gms.internal.gtm.zzd
    public final boolean E2(int i2, Parcel parcel, Parcel parcel2) {
        if (i2 == 2) {
            String string = parcel.readString();
            String string2 = parcel.readString();
            Bundle bundle = (Bundle) com.google.android.gms.internal.gtm.zze.a(parcel, Bundle.CREATOR);
            long j2 = parcel.readLong();
            com.google.android.gms.internal.gtm.zze.b(parcel);
            ((zzc) this).J(string, string2, bundle, j2);
            parcel2.writeNoException();
            return true;
        }
        if (i2 == 11) {
            Map mapA = ((zzc) this).f32080a.a();
            parcel2.writeNoException();
            parcel2.writeMap(mapA);
            return true;
        }
        zzn zzlVar = null;
        zzk zziVar = null;
        if (i2 == 21) {
            IBinder strongBinder = parcel.readStrongBinder();
            if (strongBinder != null) {
                IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.tagmanager.IMeasurementInterceptor");
                zzlVar = iInterfaceQueryLocalInterface instanceof zzn ? (zzn) iInterfaceQueryLocalInterface : new zzl(strongBinder, "com.google.android.gms.tagmanager.IMeasurementInterceptor");
            }
            com.google.android.gms.internal.gtm.zze.b(parcel);
            ((zzc) this).K1(zzlVar);
            parcel2.writeNoException();
            return true;
        }
        if (i2 != 22) {
            return false;
        }
        IBinder strongBinder2 = parcel.readStrongBinder();
        if (strongBinder2 != null) {
            IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.tagmanager.IMeasurementEventListener");
            zziVar = iInterfaceQueryLocalInterface2 instanceof zzk ? (zzk) iInterfaceQueryLocalInterface2 : new zzi(strongBinder2, "com.google.android.gms.tagmanager.IMeasurementEventListener");
        }
        com.google.android.gms.internal.gtm.zze.b(parcel);
        ((zzc) this).k2(zziVar);
        parcel2.writeNoException();
        return true;
    }
}
