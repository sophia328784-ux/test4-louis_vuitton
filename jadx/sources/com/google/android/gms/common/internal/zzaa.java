package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: loaded from: classes2.dex */
final class zzaa implements IGmsServiceBroker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final IBinder f29246a;

    public zzaa(IBinder iBinder) {
        this.f29246a = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f29246a;
    }

    @Override // com.google.android.gms.common.internal.IGmsServiceBroker
    public final void v(zzd zzdVar, GetServiceRequest getServiceRequest) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            parcelObtain.writeStrongBinder(zzdVar);
            parcelObtain.writeInt(1);
            zzm.a(getServiceRequest, parcelObtain, 0);
            this.f29246a.transact(46, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }
}
