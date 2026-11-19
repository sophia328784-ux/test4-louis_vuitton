package com.google.android.gms.internal.vision;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzb implements IInterface {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final IBinder f31158a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f31159b;

    public zzb(IBinder iBinder, String str) {
        this.f31158a = iBinder;
        this.f31159b = str;
    }

    public final Parcel E2(int i2, Parcel parcel) {
        Parcel parcelObtain = Parcel.obtain();
        try {
            try {
                this.f31158a.transact(i2, parcel, parcelObtain, 0);
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

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f31158a;
    }
}
