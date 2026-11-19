package com.google.android.gms.cloudmessaging;

import android.os.Bundle;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import android.util.SparseArray;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import java.util.ArrayDeque;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
final /* synthetic */ class zzl implements Runnable {
    private final /* synthetic */ zzp zza;

    public /* synthetic */ zzl(zzp zzpVar) {
        this.zza = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        while (true) {
            final zzp zzpVar = this.zza;
            synchronized (zzpVar) {
                try {
                    if (zzpVar.f28932b != 2) {
                        return;
                    }
                    ArrayDeque arrayDeque = zzpVar.f28934e;
                    if (arrayDeque.isEmpty()) {
                        zzpVar.d();
                        return;
                    }
                    final zzs zzsVar = (zzs) arrayDeque.poll();
                    SparseArray sparseArray = zzpVar.f28935f;
                    int i2 = zzsVar.f28938a;
                    sparseArray.put(i2, zzsVar);
                    zzpVar.g.f28943b.schedule(new Runnable() { // from class: com.google.android.gms.cloudmessaging.zzn
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzs zzsVar2 = zzsVar;
                            zzp zzpVar2 = zzpVar;
                            int i3 = zzsVar2.f28938a;
                            synchronized (zzpVar2) {
                                SparseArray sparseArray2 = zzpVar2.f28935f;
                                zzs zzsVar3 = (zzs) sparseArray2.get(i3);
                                if (zzsVar3 != null) {
                                    new StringBuilder(String.valueOf(i3).length() + 20);
                                    sparseArray2.remove(i3);
                                    zzsVar3.d(new zzt("Timed out waiting for response", null));
                                    zzpVar2.d();
                                }
                            }
                        }
                    }, 30L, TimeUnit.SECONDS);
                    if (Log.isLoggable("MessengerIpcClient", 3)) {
                        "Sending ".concat(String.valueOf(zzsVar));
                    }
                    zzv zzvVar = zzpVar.g;
                    Messenger messenger = zzpVar.f28933c;
                    int i3 = zzsVar.f28940c;
                    Message messageObtain = Message.obtain();
                    messageObtain.what = i3;
                    messageObtain.arg1 = i2;
                    messageObtain.replyTo = messenger;
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("oneWay", zzsVar.a());
                    bundle.putString("pkg", zzvVar.f28942a.getPackageName());
                    bundle.putBundle(DbParams.KEY_DATA, zzsVar.d);
                    messageObtain.setData(bundle);
                    try {
                        zzq zzqVar = zzpVar.d;
                        Messenger messenger2 = zzqVar.f28936a;
                        if (messenger2 != null) {
                            messenger2.send(messageObtain);
                        } else {
                            zzd zzdVar = zzqVar.f28937b;
                            if (zzdVar == null) {
                                throw new IllegalStateException("Both messengers are null");
                            }
                            zzdVar.f28926b.send(messageObtain);
                        }
                    } catch (RemoteException e2) {
                        zzpVar.b(e2.getMessage());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
