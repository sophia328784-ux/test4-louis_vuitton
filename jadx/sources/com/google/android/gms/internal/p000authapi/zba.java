package com.google.android.gms.internal.p000authapi;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zba implements IInterface {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final IBinder f29581a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f29582b;

    public zba(IBinder iBinder, String str) {
        this.f29581a = iBinder;
        this.f29582b = str;
    }

    public final Parcel E2() {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(this.f29582b);
        return parcelObtain;
    }

    public final void F2(int i2, Parcel parcel) {
        Parcel parcelObtain = Parcel.obtain();
        try {
            this.f29581a.transact(i2, parcel, parcelObtain, 0);
            parcelObtain.readException();
        } finally {
            parcel.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f29581a;
    }
}
