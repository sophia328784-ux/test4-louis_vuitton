package com.google.android.gms.common.internal;

import android.app.PendingIntent;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import defpackage.d21;

/* JADX INFO: loaded from: classes2.dex */
final class zzb extends com.google.android.gms.internal.common.zzg {
    final /* synthetic */ BaseGmsClient zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzb(BaseGmsClient baseGmsClient, Looper looper) {
        super(looper);
        java.util.Objects.requireNonNull(baseGmsClient);
        this.zza = baseGmsClient;
    }

    private static final void zza(Message message) {
        zzc zzcVar = (zzc) message.obj;
        if (zzcVar != null) {
            synchronized (zzcVar) {
                zzcVar.f29254a = null;
            }
            BaseGmsClient baseGmsClient = zzcVar.f29256c;
            synchronized (baseGmsClient.m) {
                baseGmsClient.m.remove(zzcVar);
            }
        }
    }

    private static final boolean zzb(Message message) {
        int i2 = message.what;
        return i2 == 2 || i2 == 1 || i2 == 7;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        Object obj;
        BaseGmsClient baseGmsClient = this.zza;
        if (baseGmsClient.y.get() != message.arg1) {
            if (zzb(message)) {
                zza(message);
                return;
            }
            return;
        }
        int i2 = message.what;
        if ((i2 == 1 || i2 == 7 || i2 == 4 || i2 == 5) && !baseGmsClient.b()) {
            zza(message);
            return;
        }
        int i3 = message.what;
        if (i3 == 4) {
            baseGmsClient.v = new ConnectionResult(message.arg2);
            if (!baseGmsClient.w && !TextUtils.isEmpty(baseGmsClient.w()) && !TextUtils.isEmpty(null)) {
                try {
                    Class.forName(baseGmsClient.w());
                    if (!baseGmsClient.w) {
                        baseGmsClient.C(3, null);
                        return;
                    }
                } catch (ClassNotFoundException unused) {
                }
            }
            ConnectionResult connectionResult = baseGmsClient.v;
            if (connectionResult == null) {
                connectionResult = new ConnectionResult(8);
            }
            baseGmsClient.f29159k.a(connectionResult);
            System.currentTimeMillis();
            return;
        }
        if (i3 == 5) {
            ConnectionResult connectionResult2 = baseGmsClient.v;
            if (connectionResult2 == null) {
                connectionResult2 = new ConnectionResult(8);
            }
            baseGmsClient.f29159k.a(connectionResult2);
            System.currentTimeMillis();
            return;
        }
        if (i3 == 3) {
            Object obj2 = message.obj;
            baseGmsClient.f29159k.a(new ConnectionResult(message.arg2, obj2 instanceof PendingIntent ? (PendingIntent) obj2 : null));
            System.currentTimeMillis();
            return;
        }
        if (i3 == 6) {
            baseGmsClient.C(5, null);
            BaseGmsClient.BaseConnectionCallbacks baseConnectionCallbacks = baseGmsClient.p;
            if (baseConnectionCallbacks != null) {
                baseConnectionCallbacks.onConnectionSuspended(message.arg2);
            }
            baseGmsClient.z();
            baseGmsClient.B(5, 1, null);
            return;
        }
        if (i3 == 2 && !baseGmsClient.isConnected()) {
            zza(message);
            return;
        }
        if (!zzb(message)) {
            int i4 = message.what;
            Log.wtf("GmsClient", d21.f(i4, "Don't know how to handle message: ", new StringBuilder(String.valueOf(i4).length() + 34)), new Exception());
            return;
        }
        zzc zzcVar = (zzc) message.obj;
        synchronized (zzcVar) {
            try {
                obj = zzcVar.f29254a;
                if (zzcVar.f29255b) {
                    new StringBuilder(zzcVar.toString().length() + 47);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (obj != null) {
            zzcVar.a(obj);
        }
        synchronized (zzcVar) {
            zzcVar.f29255b = true;
        }
        synchronized (zzcVar) {
            zzcVar.f29254a = null;
        }
        BaseGmsClient baseGmsClient2 = zzcVar.f29256c;
        synchronized (baseGmsClient2.m) {
            baseGmsClient2.m.remove(zzcVar);
        }
    }
}
