package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.StrictMode;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.stats.ConnectionTracker;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
final class zzo implements ServiceConnection, zzr {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap f29268b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f29269c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public IBinder f29270e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final zzn f29271f;
    public ComponentName g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ zzq f29272h;

    public zzo(zzq zzqVar, zzn zznVar) {
        java.util.Objects.requireNonNull(zzqVar);
        this.f29272h = zzqVar;
        this.f29271f = zznVar;
        this.f29268b = new HashMap();
        this.f29269c = 2;
    }

    public final ConnectionResult a(String str, Executor executor) {
        try {
            Intent intentA = zzah.a(this.f29272h.f29274e, this.f29271f);
            this.f29269c = 3;
            StrictMode.VmPolicy vmPolicyA = com.google.android.gms.common.util.zzd.a();
            try {
                zzq zzqVar = this.f29272h;
                ConnectionTracker connectionTracker = zzqVar.g;
                Context context = zzqVar.f29274e;
                zzn zznVar = this.f29271f;
                boolean zD = connectionTracker.d(context, str, intentA, this, 4225, executor);
                this.d = zD;
                if (zD) {
                    zzqVar.f29275f.sendMessageDelayed(zzqVar.f29275f.obtainMessage(1, zznVar), zzqVar.f29277i);
                    return ConnectionResult.g;
                }
                this.f29269c = 2;
                try {
                    zzqVar.g.c(zzqVar.f29274e, this);
                } catch (IllegalArgumentException unused) {
                }
                return new ConnectionResult(16);
            } finally {
                StrictMode.setVmPolicy(vmPolicyA);
            }
        } catch (zzaf e2) {
            return e2.f29251b;
        }
    }

    @Override // android.content.ServiceConnection
    public final void onBindingDied(ComponentName componentName) {
        onServiceDisconnected(componentName);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        zzq zzqVar = this.f29272h;
        synchronized (zzqVar.d) {
            try {
                zzqVar.f29275f.removeMessages(1, this.f29271f);
                this.f29270e = iBinder;
                this.g = componentName;
                Iterator it = this.f29268b.values().iterator();
                while (it.hasNext()) {
                    ((ServiceConnection) it.next()).onServiceConnected(componentName, iBinder);
                }
                this.f29269c = 1;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        zzq zzqVar = this.f29272h;
        synchronized (zzqVar.d) {
            try {
                zzqVar.f29275f.removeMessages(1, this.f29271f);
                this.f29270e = null;
                this.g = componentName;
                Iterator it = this.f29268b.values().iterator();
                while (it.hasNext()) {
                    ((ServiceConnection) it.next()).onServiceDisconnected(componentName);
                }
                this.f29269c = 2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
