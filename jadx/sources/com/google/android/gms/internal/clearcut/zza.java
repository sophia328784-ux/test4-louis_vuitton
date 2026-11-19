package com.google.android.gms.internal.clearcut;

import android.os.IBinder;
import android.os.IInterface;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zza implements IInterface {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final IBinder f29621a;

    public zza(IBinder iBinder) {
        this.f29621a = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f29621a;
    }
}
