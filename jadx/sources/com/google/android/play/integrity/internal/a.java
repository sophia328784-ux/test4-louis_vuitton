package com.google.android.play.integrity.internal;

import android.os.IBinder;
import android.os.IInterface;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a implements IInterface {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final IBinder f33310a;

    public a(IBinder iBinder) {
        this.f33310a = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f33310a;
    }
}
