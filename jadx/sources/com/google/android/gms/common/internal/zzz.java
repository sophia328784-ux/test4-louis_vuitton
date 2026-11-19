package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Parcel;
import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzz extends com.google.android.gms.internal.common.zzb implements IGmsCallbacks {
    public zzz() {
        super("com.google.android.gms.common.internal.IGmsCallbacks");
    }

    @Override // com.google.android.gms.internal.common.zzb
    public final boolean E2(int i2, Parcel parcel, Parcel parcel2) {
        if (i2 == 1) {
            int i3 = parcel.readInt();
            IBinder strongBinder = parcel.readStrongBinder();
            Bundle bundle = (Bundle) com.google.android.gms.internal.common.zzc.a(parcel, Bundle.CREATOR);
            com.google.android.gms.internal.common.zzc.c(parcel);
            zzd zzdVar = (zzd) this;
            Preconditions.i(zzdVar.f29257a, "onPostInitComplete can be called only once per call to getRemoteService");
            BaseGmsClient baseGmsClient = zzdVar.f29257a;
            int i4 = zzdVar.f29258b;
            baseGmsClient.getClass();
            zzf zzfVar = new zzf(baseGmsClient, i3, strongBinder, bundle);
            Handler handler = baseGmsClient.g;
            handler.sendMessage(handler.obtainMessage(1, i4, -1, zzfVar));
            zzdVar.f29257a = null;
        } else if (i2 == 2) {
            parcel.readInt();
            com.google.android.gms.internal.common.zzc.c(parcel);
            Log.wtf("GmsClient", "received deprecated onAccountValidationComplete callback, ignoring", new Exception());
        } else {
            if (i2 != 3) {
                return false;
            }
            int i5 = parcel.readInt();
            IBinder strongBinder2 = parcel.readStrongBinder();
            zzj zzjVar = (zzj) com.google.android.gms.internal.common.zzc.a(parcel, zzj.CREATOR);
            com.google.android.gms.internal.common.zzc.c(parcel);
            zzd zzdVar2 = (zzd) this;
            BaseGmsClient baseGmsClient2 = zzdVar2.f29257a;
            Preconditions.i(baseGmsClient2, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService");
            Preconditions.h(zzjVar);
            baseGmsClient2.x = zzjVar;
            if (baseGmsClient2.A()) {
                ConnectionTelemetryConfiguration connectionTelemetryConfiguration = zzjVar.f29264e;
                RootTelemetryConfigManager rootTelemetryConfigManagerA = RootTelemetryConfigManager.a();
                RootTelemetryConfiguration rootTelemetryConfiguration = connectionTelemetryConfiguration == null ? null : connectionTelemetryConfiguration.f29174b;
                synchronized (rootTelemetryConfigManagerA) {
                    try {
                        if (rootTelemetryConfiguration == null) {
                            rootTelemetryConfiguration = RootTelemetryConfigManager.f29201c;
                        } else {
                            RootTelemetryConfiguration rootTelemetryConfiguration2 = rootTelemetryConfigManagerA.f29202a;
                            if (rootTelemetryConfiguration2 == null || rootTelemetryConfiguration2.f29203b < rootTelemetryConfiguration.f29203b) {
                            }
                        }
                        rootTelemetryConfigManagerA.f29202a = rootTelemetryConfiguration;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            Bundle bundle2 = zzjVar.f29262b;
            Preconditions.i(zzdVar2.f29257a, "onPostInitComplete can be called only once per call to getRemoteService");
            BaseGmsClient baseGmsClient3 = zzdVar2.f29257a;
            int i6 = zzdVar2.f29258b;
            baseGmsClient3.getClass();
            zzf zzfVar2 = new zzf(baseGmsClient3, i5, strongBinder2, bundle2);
            Handler handler2 = baseGmsClient3.g;
            handler2.sendMessage(handler2.obtainMessage(1, i6, -1, zzfVar2));
            zzdVar2.f29257a = null;
        }
        parcel2.writeNoException();
        return true;
    }
}
