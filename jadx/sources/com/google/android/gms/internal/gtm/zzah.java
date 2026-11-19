package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.networkbench.agent.impl.performance.coulometry.b.j;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
final class zzah implements Runnable, zzix {
    final /* synthetic */ zzak zza;

    @Override // java.lang.Runnable
    public final void run() {
        zzak zzakVar = this.zza;
        Preconditions.k(zzakVar.m == 2);
        zzbn zzbnVarA = zzbn.a();
        String str = zzakVar.f29940b;
        if (zzbnVarA.f29990c == 2 && zzbnVarA.f29988a.equals(str)) {
            return;
        }
        zzao.a(2);
        ArrayList arrayList = new ArrayList();
        arrayList.add(0);
        zzakVar.f29943f.b(zzakVar.f29940b, zzakVar.d, zzakVar.f29941c, arrayList, this, zzakVar.f29947k);
    }

    @Override // com.google.android.gms.internal.gtm.zzix
    public final void zza(zzjh zzjhVar) {
        Status status = zzjhVar.f30127b;
        Status status2 = Status.f29004f;
        zzak zzakVar = this.zza;
        if (status != status2) {
            zzak.a(zzakVar, zzakVar.f29947k.a(j.f37873a, 86400000L) + 3600000);
            return;
        }
        String str = zzakVar.f29940b;
        zzao.a(2);
        zzakVar.g.execute(new zzai(zzakVar, zzjhVar));
    }
}
