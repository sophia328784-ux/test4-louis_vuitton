package com.google.android.gms.internal.fido;

import android.os.IBinder;
import android.os.IInterface;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zza implements IInterface {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final IBinder f29823a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f29824b;

    public zza(IBinder iBinder, String str) {
        this.f29823a = iBinder;
        this.f29824b = str;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f29823a;
    }
}
