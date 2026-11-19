package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import androidx.loader.content.AsyncTaskLoader;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.internal.SignInConnectionListener;
import defpackage.x1;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class zbc extends AsyncTaskLoader implements SignInConnectionListener {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Semaphore f28840i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Set f28841j;

    public zbc(Context context, Set set) {
        super(context);
        this.f28840i = new Semaphore(0);
        this.f28841j = set;
    }

    @Override // androidx.loader.content.Loader
    public final void c() {
        this.f28840i.drainPermits();
        f();
    }

    @Override // androidx.loader.content.AsyncTaskLoader
    public final void e() {
        Iterator it = this.f28841j.iterator();
        if (it.hasNext()) {
            ((GoogleApiClient) it.next()).getClass();
            x1.i();
        } else {
            try {
                this.f28840i.tryAcquire(0, 5L, TimeUnit.SECONDS);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        }
    }
}
