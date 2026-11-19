package com.google.android.gms.cloudmessaging;

import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.stats.ConnectionTracker;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
final class zzp implements ServiceConnection {
    public zzq d;
    public final /* synthetic */ zzv g;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f28932b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Messenger f28933c = new Messenger(new com.google.android.gms.internal.cloudmessaging.zzv(Looper.getMainLooper(), new Handler.Callback() { // from class: com.google.android.gms.cloudmessaging.zzo
        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            int i2 = message.arg1;
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                new StringBuilder(String.valueOf(i2).length() + 30);
            }
            zzp zzpVar = this.f28931b;
            synchronized (zzpVar) {
                try {
                    SparseArray sparseArray = zzpVar.f28935f;
                    zzs zzsVar = (zzs) sparseArray.get(i2);
                    if (zzsVar == null) {
                        new StringBuilder(String.valueOf(i2).length() + 39);
                        return true;
                    }
                    sparseArray.remove(i2);
                    zzpVar.d();
                    Bundle data = message.getData();
                    if (data.getBoolean("unsupported", false)) {
                        zzsVar.d(new zzt("Not supported by GmsCore", null));
                        return true;
                    }
                    zzsVar.b(data);
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }));

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayDeque f28934e = new ArrayDeque();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final SparseArray f28935f = new SparseArray();

    public /* synthetic */ zzp(zzv zzvVar) {
        this.g = zzvVar;
    }

    public final synchronized boolean a(zzs zzsVar) {
        try {
            int i2 = this.f28932b;
            if (i2 != 0) {
                if (i2 == 1) {
                    this.f28934e.add(zzsVar);
                    return true;
                }
                if (i2 != 2) {
                    return false;
                }
                this.f28934e.add(zzsVar);
                this.g.f28943b.execute(new zzl(this));
                return true;
            }
            this.f28934e.add(zzsVar);
            Preconditions.k(this.f28932b == 0);
            Log.isLoggable("MessengerIpcClient", 2);
            this.f28932b = 1;
            Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
            intent.setPackage("com.google.android.gms");
            try {
                ConnectionTracker connectionTrackerB = ConnectionTracker.b();
                zzv zzvVar = this.g;
                if (connectionTrackerB.a(zzvVar.f28942a, intent, this, 1)) {
                    zzvVar.f28943b.schedule(new Runnable() { // from class: com.google.android.gms.cloudmessaging.zzj
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzp zzpVar = this.zza;
                            synchronized (zzpVar) {
                                if (zzpVar.f28932b == 1) {
                                    zzpVar.b("Timed out while binding");
                                }
                            }
                        }
                    }, 30L, TimeUnit.SECONDS);
                } else {
                    b("Unable to bind to service");
                }
            } catch (SecurityException e2) {
                c("Unable to bind to service", e2);
            }
            return true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void b(String str) {
        c(str, null);
    }

    public final synchronized void c(String str, SecurityException securityException) {
        try {
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                "Disconnected: ".concat(String.valueOf(str));
            }
            int i2 = this.f28932b;
            if (i2 == 0) {
                throw new IllegalStateException();
            }
            if (i2 != 1 && i2 != 2) {
                if (i2 != 3) {
                    return;
                }
                this.f28932b = 4;
                return;
            }
            Log.isLoggable("MessengerIpcClient", 2);
            this.f28932b = 4;
            ConnectionTracker.b().c(this.g.f28942a, this);
            zzt zztVar = new zzt(str, securityException);
            ArrayDeque arrayDeque = this.f28934e;
            Iterator it = arrayDeque.iterator();
            while (it.hasNext()) {
                ((zzs) it.next()).d(zztVar);
            }
            arrayDeque.clear();
            int i3 = 0;
            while (true) {
                SparseArray sparseArray = this.f28935f;
                if (i3 >= sparseArray.size()) {
                    sparseArray.clear();
                    return;
                } else {
                    ((zzs) sparseArray.valueAt(i3)).d(zztVar);
                    i3++;
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void d() {
        if (this.f28932b == 2 && this.f28934e.isEmpty() && this.f28935f.size() == 0) {
            Log.isLoggable("MessengerIpcClient", 2);
            this.f28932b = 3;
            ConnectionTracker.b().c(this.g.f28942a, this);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, final IBinder iBinder) {
        Log.isLoggable("MessengerIpcClient", 2);
        this.g.f28943b.execute(new Runnable() { // from class: com.google.android.gms.cloudmessaging.zzk
            @Override // java.lang.Runnable
            public final void run() {
                IBinder iBinder2 = iBinder;
                zzp zzpVar = this.zza;
                synchronized (zzpVar) {
                    if (iBinder2 == null) {
                        zzpVar.b("Null service connection");
                        return;
                    }
                    try {
                        zzpVar.d = new zzq(iBinder2);
                        zzpVar.f28932b = 2;
                        zzpVar.g.f28943b.execute(new zzl(zzpVar));
                    } catch (RemoteException e2) {
                        zzpVar.b(e2.getMessage());
                    }
                }
            }
        });
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        Log.isLoggable("MessengerIpcClient", 2);
        this.g.f28943b.execute(new Runnable() { // from class: com.google.android.gms.cloudmessaging.zzm
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                this.zza.b("Service disconnected");
            }
        });
    }
}
