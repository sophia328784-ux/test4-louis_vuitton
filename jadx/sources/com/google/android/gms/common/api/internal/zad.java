package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes2.dex */
abstract class zad extends zac {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TaskCompletionSource f29108b;

    public zad(int i2, TaskCompletionSource taskCompletionSource) {
        super(i2);
        this.f29108b = taskCompletionSource;
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void a(Status status) {
        this.f29108b.c(new ApiException(status));
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void b(Exception exc) {
        this.f29108b.c(exc);
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public void c(zaaa zaaaVar, boolean z) {
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void d(zabk zabkVar) throws DeadObjectException {
        try {
            i(zabkVar);
        } catch (DeadObjectException e2) {
            a(zai.e(e2));
            throw e2;
        } catch (RemoteException e3) {
            a(zai.e(e3));
        } catch (RuntimeException e4) {
            this.f29108b.c(e4);
        }
    }

    public abstract void i(zabk zabkVar);
}
