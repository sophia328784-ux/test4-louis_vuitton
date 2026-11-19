package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zai {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f29114a;

    public zai(int i2) {
        this.f29114a = i2;
    }

    public static /* synthetic */ Status e(RemoteException remoteException) {
        return new Status(19, remoteException.getClass().getSimpleName() + ": " + remoteException.getLocalizedMessage());
    }

    public abstract void a(Status status);

    public abstract void b(Exception exc);

    public abstract void c(zaaa zaaaVar, boolean z);

    public abstract void d(zabk zabkVar);
}
