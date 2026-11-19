package com.google.android.gms.internal.vision;

import android.os.Parcel;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.vision.barcode.Barcode;

/* JADX INFO: loaded from: classes2.dex */
public final class zzo extends zzb implements zzl {
    @Override // com.google.android.gms.internal.vision.zzl
    public final Barcode[] X0(ObjectWrapper objectWrapper, zzs zzsVar) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(this.f31159b);
        int i2 = zzd.f31160a;
        parcelObtain.writeStrongBinder(objectWrapper);
        parcelObtain.writeInt(1);
        zzsVar.writeToParcel(parcelObtain, 0);
        Parcel parcelE2 = E2(1, parcelObtain);
        Barcode[] barcodeArr = (Barcode[]) parcelE2.createTypedArray(Barcode.CREATOR);
        parcelE2.recycle();
        return barcodeArr;
    }
}
