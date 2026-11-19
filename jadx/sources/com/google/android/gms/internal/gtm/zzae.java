package com.google.android.gms.internal.gtm;

import android.os.RemoteException;
import com.appsflyer.sdk_base.referrer.Payload;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
final class zzae implements Runnable {
    final /* synthetic */ zzak zza;

    @Override // java.lang.Runnable
    public final void run() {
        zzak zzakVar = this.zza;
        zzakVar.m = 3;
        zzao.a(5);
        ArrayList<zzar> arrayList = zzakVar.n;
        if (arrayList != null) {
            for (zzar zzarVar : arrayList) {
                if (zzarVar.f29964f) {
                    try {
                        zzakVar.f29945i.J(Payload.TYPE_APP, zzarVar.f29961b, zzarVar.f29960a, zzarVar.f29962c.getTime());
                        zzao.a(2);
                    } catch (RemoteException e2) {
                        zzan.b(e2, this.zza.f29939a);
                    }
                } else {
                    zzao.a(2);
                }
            }
            this.zza.n = null;
        }
    }
}
