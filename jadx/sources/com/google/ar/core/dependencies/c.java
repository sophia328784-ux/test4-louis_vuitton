package com.google.ar.core.dependencies;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes2.dex */
public class c implements IInterface {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final IBinder f33411a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f33412b;

    public c(IBinder iBinder, String str) {
        this.f33411a = iBinder;
        this.f33412b = str;
    }

    public final Parcel a() {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(this.f33412b);
        return parcelObtain;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f33411a;
    }

    public final Parcel b(int i2, Parcel parcel) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        try {
            try {
                this.f33411a.transact(i2, parcel, parcelObtain, 0);
                parcelObtain.readException();
                parcel.recycle();
                return parcelObtain;
            } catch (RuntimeException e2) {
                parcelObtain.recycle();
                throw e2;
            }
        } catch (Throwable th) {
            parcel.recycle();
            throw th;
        }
    }

    public final void c(int i2, Parcel parcel) throws RemoteException {
        try {
            this.f33411a.transact(i2, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }
}
