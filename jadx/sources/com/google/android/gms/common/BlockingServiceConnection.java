package com.google.android.gms.common;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.common.internal.Preconditions;
import defpackage.md;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes2.dex */
public class BlockingServiceConnection implements ServiceConnection {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f28950b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinkedBlockingQueue f28951c = new LinkedBlockingQueue();

    public final IBinder a() throws TimeoutException {
        Preconditions.g("BlockingServiceConnection.getServiceWithTimeout() called on main thread");
        if (this.f28950b) {
            md.k("Cannot call get on this connection more than once");
            return null;
        }
        this.f28950b = true;
        IBinder iBinder = (IBinder) this.f28951c.poll(10000L, TimeUnit.MILLISECONDS);
        if (iBinder != null) {
            return iBinder;
        }
        throw new TimeoutException("Timed out waiting for the service connection");
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f28951c.add(iBinder);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
    }
}
