package com.google.android.gms.internal.auth_blockstore;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zza implements IInterface {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final IBinder f29609a;

    public zza(IBinder iBinder) {
        this.f29609a = iBinder;
    }

    public final void E2(int i2, Parcel parcel) {
        Parcel parcelObtain = Parcel.obtain();
        try {
            this.f29609a.transact(i2, parcel, parcelObtain, 0);
            parcelObtain.readException();
        } finally {
            parcel.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f29609a;
    }
}
