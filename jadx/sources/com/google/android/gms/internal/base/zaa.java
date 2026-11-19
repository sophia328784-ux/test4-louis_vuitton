package com.google.android.gms.internal.base;

import android.os.IBinder;
import android.os.IInterface;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zaa implements IInterface {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final IBinder f29614a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f29615b;

    public zaa(IBinder iBinder, String str) {
        this.f29614a = iBinder;
        this.f29615b = str;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f29614a;
    }
}
