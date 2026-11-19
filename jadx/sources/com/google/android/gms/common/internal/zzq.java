package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.sightcall.livetranslation.data.LiveTranslationEntity;
import java.util.HashMap;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
final class zzq extends GmsClientSupervisor {
    public final HashMap d = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Context f29274e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile com.google.android.gms.internal.common.zzg f29275f;
    public final ConnectionTracker g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f29276h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f29277i;

    public zzq(Context context, Looper looper) {
        zzp zzpVar = new zzp(this);
        this.f29274e = context.getApplicationContext();
        this.f29275f = new com.google.android.gms.internal.common.zzg(looper, zzpVar);
        this.g = ConnectionTracker.b();
        this.f29276h = LiveTranslationEntity.DefaultSentenceTimeOut;
        this.f29277i = 300000L;
    }

    @Override // com.google.android.gms.common.internal.GmsClientSupervisor
    public final ConnectionResult b(zzn zznVar, zze zzeVar, String str, Executor executor) {
        HashMap map = this.d;
        synchronized (map) {
            try {
                zzo zzoVar = (zzo) map.get(zznVar);
                ConnectionResult connectionResultA = null;
                if (executor == null) {
                    executor = null;
                }
                if (zzoVar == null) {
                    zzoVar = new zzo(this, zznVar);
                    zzoVar.f29268b.put(zzeVar, zzeVar);
                    connectionResultA = zzoVar.a(str, executor);
                    map.put(zznVar, zzoVar);
                } else {
                    this.f29275f.removeMessages(0, zznVar);
                    if (zzoVar.f29268b.containsKey(zzeVar)) {
                        String string = zznVar.toString();
                        StringBuilder sb = new StringBuilder(string.length() + 81);
                        sb.append("Trying to bind a GmsServiceConnection that was already connected before.  config=");
                        sb.append(string);
                        throw new IllegalStateException(sb.toString());
                    }
                    zzoVar.f29268b.put(zzeVar, zzeVar);
                    int i2 = zzoVar.f29269c;
                    if (i2 == 1) {
                        zzeVar.onServiceConnected(zzoVar.g, zzoVar.f29270e);
                    } else if (i2 == 2) {
                        connectionResultA = zzoVar.a(str, executor);
                    }
                }
                if (zzoVar.d) {
                    return ConnectionResult.g;
                }
                if (connectionResultA == null) {
                    connectionResultA = new ConnectionResult(-1);
                }
                return connectionResultA;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.common.internal.GmsClientSupervisor
    public final void c(zzn zznVar, ServiceConnection serviceConnection) {
        Preconditions.i(serviceConnection, "ServiceConnection must not be null");
        HashMap map = this.d;
        synchronized (map) {
            try {
                zzo zzoVar = (zzo) map.get(zznVar);
                if (zzoVar == null) {
                    String string = zznVar.toString();
                    StringBuilder sb = new StringBuilder(string.length() + 50);
                    sb.append("Nonexistent connection status for service config: ");
                    sb.append(string);
                    throw new IllegalStateException(sb.toString());
                }
                if (!zzoVar.f29268b.containsKey(serviceConnection)) {
                    String string2 = zznVar.toString();
                    StringBuilder sb2 = new StringBuilder(string2.length() + 76);
                    sb2.append("Trying to unbind a GmsServiceConnection  that was not bound before.  config=");
                    sb2.append(string2);
                    throw new IllegalStateException(sb2.toString());
                }
                zzoVar.f29268b.remove(serviceConnection);
                if (zzoVar.f29268b.isEmpty()) {
                    this.f29275f.sendMessageDelayed(this.f29275f.obtainMessage(0, zznVar), this.f29276h);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
