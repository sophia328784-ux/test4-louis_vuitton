package com.google.android.gms.internal.location;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zza implements IInterface {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final IBinder f30211a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f30212b;

    public zza(IBinder iBinder, String str) {
        this.f30211a = iBinder;
        this.f30212b = str;
    }

    public final Parcel E2() {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(this.f30212b);
        return parcelObtain;
    }

    public final void F2(int i2, Parcel parcel) {
        Parcel parcelObtain = Parcel.obtain();
        try {
            this.f30211a.transact(i2, parcel, parcelObtain, 0);
            parcelObtain.readException();
        } finally {
            parcel.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f30211a;
    }
}
