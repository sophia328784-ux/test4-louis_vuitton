package com.google.android.gms.internal.maps;

import android.os.BadParcelableException;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.maps.model.Tile;
import defpackage.pq0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzb extends Binder implements IInterface {
    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (i2 <= 16777215) {
            parcel.enforceInterface(getInterfaceDescriptor());
        } else if (super.onTransact(i2, parcel, parcel2, i3)) {
            return true;
        }
        zzay zzayVar = (zzay) this;
        if (i2 != 1) {
            return false;
        }
        parcel.readInt();
        parcel.readInt();
        parcel.readInt();
        int i4 = zzc.f30293a;
        int iDataAvail = parcel.dataAvail();
        if (iDataAvail > 0) {
            throw new BadParcelableException(pq0.k(iDataAvail, "Parcel data not fully consumed, unread size: "));
        }
        Tile tileE0 = zzayVar.e0();
        parcel2.writeNoException();
        if (tileE0 == null) {
            parcel2.writeInt(0);
            return true;
        }
        parcel2.writeInt(1);
        tileE0.writeToParcel(parcel2, 1);
        return true;
    }
}
