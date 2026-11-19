package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.os.Handler;
import android.os.Message;

/* JADX INFO: loaded from: classes2.dex */
final class zzp implements Handler.Callback {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzq f29273b;

    public /* synthetic */ zzp(zzq zzqVar) {
        this.f29273b = zzqVar;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i2 = message.what;
        if (i2 == 0) {
            zzq zzqVar = this.f29273b;
            synchronized (zzqVar.d) {
                try {
                    zzn zznVar = (zzn) message.obj;
                    zzo zzoVar = (zzo) zzqVar.d.get(zznVar);
                    if (zzoVar != null && zzoVar.f29268b.isEmpty()) {
                        if (zzoVar.d) {
                            zzn zznVar2 = zzoVar.f29271f;
                            zzq zzqVar2 = zzoVar.f29272h;
                            zzqVar2.f29275f.removeMessages(1, zznVar2);
                            zzqVar2.g.c(zzqVar2.f29274e, zzoVar);
                            zzoVar.d = false;
                            zzoVar.f29269c = 2;
                        }
                        zzqVar.d.remove(zznVar);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return true;
        }
        if (i2 != 1) {
            return false;
        }
        zzq zzqVar3 = this.f29273b;
        synchronized (zzqVar3.d) {
            try {
                zzn zznVar3 = (zzn) message.obj;
                zzo zzoVar2 = (zzo) zzqVar3.d.get(zznVar3);
                if (zzoVar2 != null && zzoVar2.f29269c == 3) {
                    new StringBuilder(String.valueOf(zznVar3).length() + 47);
                    new Exception();
                    ComponentName componentName = zzoVar2.g;
                    if (componentName == null) {
                        componentName = zznVar3.f29267c;
                    }
                    if (componentName == null) {
                        String str = zznVar3.f29266b;
                        Preconditions.h(str);
                        componentName = new ComponentName(str, "unknown");
                    }
                    zzoVar2.onServiceDisconnected(componentName);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return true;
    }
}
