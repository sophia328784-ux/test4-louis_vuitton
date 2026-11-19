package com.google.android.gms.internal.gtm;

import android.os.RemoteException;
import com.appsflyer.sdk_base.referrer.Payload;

/* JADX INFO: loaded from: classes2.dex */
final class zzag implements Runnable {
    final /* synthetic */ zzak zza;
    private final zzar zzb;

    public zzag(zzak zzakVar, zzar zzarVar) {
        this.zza = zzakVar;
        this.zzb = zzarVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzak zzakVar = this.zza;
        if (zzakVar.m == 2) {
            zzar zzarVar = this.zzb;
            "Evaluating tags for event ".concat(String.valueOf(zzarVar.f29961b));
            zzao.a(2);
            zzakVar.l.b(zzarVar);
            return;
        }
        if (zzakVar.m == 1) {
            zzar zzarVar2 = this.zzb;
            zzakVar.n.add(zzarVar2);
            String str = zzarVar2.f29961b;
            zzao.a(2);
            return;
        }
        if (zzakVar.m == 3) {
            zzar zzarVar3 = this.zzb;
            String str2 = zzarVar3.f29961b;
            zzao.a(2);
            if (!zzarVar3.f29964f) {
                "Discarded non-passthrough event ".concat(String.valueOf(this.zzb.f29961b));
                zzao.a(2);
                return;
            }
            try {
                zzakVar.f29945i.J(Payload.TYPE_APP, zzarVar3.f29961b, zzarVar3.f29960a, zzarVar3.f29962c.getTime());
                zzao.a(2);
            } catch (RemoteException e2) {
                zzan.b(e2, this.zza.f29939a);
            }
        }
    }
}
