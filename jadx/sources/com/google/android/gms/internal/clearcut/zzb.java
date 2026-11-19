package com.google.android.gms.internal.clearcut;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import defpackage.x1;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzb extends Binder implements IInterface {
    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) throws RemoteException {
        boolean zOnTransact;
        if (i2 > 16777215) {
            zOnTransact = super.onTransact(i2, parcel, parcel2, i3);
        } else {
            parcel.enforceInterface(getInterfaceDescriptor());
            zOnTransact = false;
        }
        if (zOnTransact) {
            return true;
        }
        zzm zzmVar = (zzm) this;
        switch (i2) {
            case 1:
                ((zzi) zzmVar).f29775a.f((Status) zzc.a(parcel, Status.CREATOR));
                return true;
            case 2:
                x1.i();
                return false;
            case 3:
                parcel.readLong();
                x1.i();
                return false;
            case 4:
                x1.i();
                return false;
            case 5:
                parcel.readLong();
                x1.i();
                return false;
            case 6:
                x1.i();
                return false;
            case 7:
                x1.i();
                return false;
            case 8:
                x1.i();
                return false;
            case 9:
                x1.i();
                return false;
            default:
                return false;
        }
    }
}
