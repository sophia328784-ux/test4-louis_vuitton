package com.google.android.gms.internal.gtm;

import com.networkbench.agent.impl.performance.coulometry.b.j;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
final class zzai implements Runnable {
    final /* synthetic */ zzak zza;
    private final zzjh zzb;

    public zzai(zzak zzakVar, zzjh zzjhVar) {
        this.zza = zzakVar;
        this.zzb = zzjhVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzjh zzjhVar = this.zzb;
        zzju zzjuVar = zzjhVar.d.d;
        zzak zzakVar = this.zza;
        zzkd zzkdVar = zzjhVar.f30129e;
        zzbt zzbtVar = zzakVar.l;
        zzbu zzbuVar = zzakVar.f29942e;
        zzakVar.l = new zzbt(zzbuVar.f30003a, zzbuVar.f30004b, zzjuVar, zzkdVar, zzbuVar.f30005c, zzbuVar.d);
        zzakVar.m = 2;
        zzao.a(2);
        ArrayList<zzar> arrayList = zzakVar.n;
        if (arrayList != null) {
            for (zzar zzarVar : arrayList) {
                "Evaluating tags for pending event ".concat(String.valueOf(zzarVar.f29961b));
                zzao.a(2);
                zzakVar.l.b(zzarVar);
            }
            zzakVar.n = null;
        }
        zzap.b(zzakVar.l.f29994a);
        if (zzce.m == null) {
            zzce.m = new zzce();
        }
        zzce.m.a();
        "Runtime initialized successfully for container ".concat(String.valueOf(zzakVar.f29940b));
        zzao.a(2);
        long jA = zzakVar.f29947k.a(7200000L, 259200000L) + 43200000 + zzjhVar.d.f30125b;
        if (zzbtVar == null && zzakVar.p && zzjhVar.f30128c == 1) {
            zzakVar.f29946j.getClass();
            if (jA < System.currentTimeMillis()) {
                zzam zzamVar = zzakVar.f29947k;
                zzak.a(zzakVar, Math.max(0L, zzamVar.b().getLong("FORBIDDEN_COUNT", 0L)) != 0 ? 10000 + zzamVar.a(10000L, j.f37873a) : 0L);
                return;
            }
        }
        zzakVar.f29946j.getClass();
        zzak.a(zzakVar, Math.max(900000L, jA - System.currentTimeMillis()));
    }
}
