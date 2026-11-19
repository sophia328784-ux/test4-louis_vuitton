package com.google.android.gms.internal.vision;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: loaded from: classes2.dex */
public final class zzp extends zzb implements zzn {
    @Override // com.google.android.gms.internal.vision.zzn
    public final zzl k(ObjectWrapper objectWrapper, zzk zzkVar) {
        zzl zzoVar;
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(this.f31159b);
        int i2 = zzd.f31160a;
        parcelObtain.writeStrongBinder(objectWrapper);
        if (zzkVar == null) {
            parcelObtain.writeInt(0);
        } else {
            parcelObtain.writeInt(1);
            zzkVar.writeToParcel(parcelObtain, 0);
        }
        Parcel parcelE2 = E2(1, parcelObtain);
        IBinder strongBinder = parcelE2.readStrongBinder();
        if (strongBinder == null) {
            zzoVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.vision.barcode.internal.client.INativeBarcodeDetector");
            zzoVar = iInterfaceQueryLocalInterface instanceof zzl ? (zzl) iInterfaceQueryLocalInterface : new zzo(strongBinder, "com.google.android.gms.vision.barcode.internal.client.INativeBarcodeDetector");
        }
        parcelE2.recycle();
        return zzoVar;
    }
}
