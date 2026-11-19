package com.google.android.gms.internal.gtm;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.common.stats.ConnectionTracker;

/* JADX INFO: loaded from: classes2.dex */
public final class zzde implements ServiceConnection {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f30050b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ConnectionTracker f30051c;
    public volatile boolean d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public volatile boolean f30052e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public zzbe f30053f;

    public zzde(Context context, ConnectionTracker connectionTracker) {
        this.f30050b = context;
        this.f30051c = connectionTracker;
    }

    public final boolean a() {
        if (this.d) {
            return true;
        }
        synchronized (this) {
            try {
                if (this.d) {
                    return true;
                }
                if (!this.f30052e) {
                    Intent intent = new Intent("ignored");
                    intent.setAction(null);
                    Context context = this.f30050b;
                    intent.setClassName(context.getPackageName(), "com.google.android.gms.tagmanager.TagManagerService");
                    if (!this.f30051c.a(context, intent, this, 1)) {
                        return false;
                    }
                    this.f30052e = true;
                }
                while (this.f30052e) {
                    try {
                        wait();
                        this.f30052e = false;
                    } catch (InterruptedException unused) {
                        zzao.a(5);
                        this.f30052e = false;
                    }
                }
                return this.d;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        zzbe zzbcVar;
        synchronized (this) {
            if (iBinder == null) {
                zzbcVar = null;
            } else {
                try {
                    IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.tagmanager.internal.ITagManagerService");
                    zzbcVar = iInterfaceQueryLocalInterface instanceof zzbe ? (zzbe) iInterfaceQueryLocalInterface : new zzbc(iBinder);
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.f30053f = zzbcVar;
            this.d = true;
            this.f30052e = false;
            notifyAll();
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        synchronized (this) {
            this.f30053f = null;
            this.d = false;
            this.f30052e = false;
        }
    }
}
