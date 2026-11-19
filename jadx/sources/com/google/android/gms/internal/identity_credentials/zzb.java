package com.google.android.gms.internal.identity_credentials;

import android.os.BadParcelableException;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.identitycredentials.PendingGetCredentialHandle;
import com.google.android.gms.identitycredentials.internal.IIdentityCredentialCallbacks;
import defpackage.pq0;
import defpackage.x1;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzb extends Binder implements IInterface {
    public static void E2(Parcel parcel) {
        int i2 = zzc.f30208a;
        int iDataAvail = parcel.dataAvail();
        if (iDataAvail > 0) {
            throw new BadParcelableException(pq0.k(iDataAvail, "Parcel data not fully consumed, unread size: "));
        }
    }

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
        IIdentityCredentialCallbacks.Stub stub = (IIdentityCredentialCallbacks.Stub) this;
        if (i2 == 1) {
            Status status = (Status) zzc.a(parcel, Status.CREATOR);
            PendingGetCredentialHandle pendingGetCredentialHandle = (PendingGetCredentialHandle) zzc.a(parcel, PendingGetCredentialHandle.CREATOR);
            E2(parcel);
            stub.W1(status, pendingGetCredentialHandle);
            return true;
        }
        if (i2 == 2) {
            Status status2 = (Status) zzc.a(parcel, Status.CREATOR);
            E2(parcel);
            status2.getClass();
            x1.i();
            return false;
        }
        if (i2 == 3) {
            Status status3 = (Status) zzc.a(parcel, Status.CREATOR);
            E2(parcel);
            status3.getClass();
            x1.i();
            return false;
        }
        if (i2 == 4) {
            Status status4 = (Status) zzc.a(parcel, Status.CREATOR);
            E2(parcel);
            status4.getClass();
            x1.i();
            return false;
        }
        if (i2 != 5) {
            return false;
        }
        Status status5 = (Status) zzc.a(parcel, Status.CREATOR);
        E2(parcel);
        status5.getClass();
        x1.i();
        return false;
    }
}
