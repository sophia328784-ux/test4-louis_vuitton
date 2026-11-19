package com.google.android.gms.internal.location;

import android.location.Location;
import android.os.Parcel;
import com.google.android.gms.common.api.internal.IStatusCallback;
import com.google.android.gms.internal.base.zab;
import com.google.android.gms.location.LastLocationRequest;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationSettingsRequest;

/* JADX INFO: loaded from: classes2.dex */
public final class zzt extends zza implements zzu {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.location.zzu
    public final void C(zzed zzedVar, LocationRequest locationRequest, IStatusCallback iStatusCallback) {
        Parcel parcelE2 = E2();
        zzc.b(parcelE2, zzedVar);
        zzc.b(parcelE2, locationRequest);
        parcelE2.writeStrongBinder((zab) iStatusCallback);
        F2(88, parcelE2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.location.zzu
    public final void G1(zzed zzedVar, IStatusCallback iStatusCallback) {
        Parcel parcelE2 = E2();
        zzc.b(parcelE2, zzedVar);
        parcelE2.writeStrongBinder((zab) iStatusCallback);
        F2(89, parcelE2);
    }

    @Override // com.google.android.gms.internal.location.zzu
    public final void I0(LastLocationRequest lastLocationRequest, zzed zzedVar) {
        Parcel parcelE2 = E2();
        zzc.b(parcelE2, lastLocationRequest);
        zzc.b(parcelE2, zzedVar);
        F2(90, parcelE2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.location.zzu
    public final void V0(LastLocationRequest lastLocationRequest, zzy zzyVar) {
        Parcel parcelE2 = E2();
        zzc.b(parcelE2, lastLocationRequest);
        parcelE2.writeStrongBinder((zzb) zzyVar);
        F2(82, parcelE2);
    }

    @Override // com.google.android.gms.internal.location.zzu
    public final void Y1(zzeh zzehVar) {
        Parcel parcelE2 = E2();
        zzc.b(parcelE2, zzehVar);
        F2(59, parcelE2);
    }

    @Override // com.google.android.gms.internal.location.zzu
    public final Location j() {
        Parcel parcelE2 = E2();
        Parcel parcelObtain = Parcel.obtain();
        try {
            try {
                this.f30211a.transact(7, parcelE2, parcelObtain, 0);
                parcelObtain.readException();
                parcelE2.recycle();
                Location location = (Location) zzc.a(parcelObtain, Location.CREATOR);
                parcelObtain.recycle();
                return location;
            } catch (RuntimeException e2) {
                parcelObtain.recycle();
                throw e2;
            }
        } catch (Throwable th) {
            parcelE2.recycle();
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.location.zzu
    public final void n2(LocationSettingsRequest locationSettingsRequest, zzaa zzaaVar) {
        Parcel parcelE2 = E2();
        zzc.b(parcelE2, locationSettingsRequest);
        parcelE2.writeStrongBinder((zzb) zzaaVar);
        parcelE2.writeString(null);
        F2(63, parcelE2);
    }
}
