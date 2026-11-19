package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
final class zzaf implements Runnable, zzix {
    final /* synthetic */ zzak zza;

    public /* synthetic */ zzaf(zzak zzakVar, zzaj zzajVar) {
        this.zza = zzakVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzak zzakVar = this.zza;
        Preconditions.k(zzakVar.m == 1);
        ArrayList arrayList = new ArrayList();
        zzakVar.p = false;
        zzbn zzbnVarA = zzbn.a();
        String str = zzakVar.f29940b;
        if (zzbnVarA.f29990c == 2 && zzbnVarA.f29988a.equals(str)) {
            arrayList.add(0);
        } else {
            boolean z = Math.max(0L, zzakVar.f29947k.b().getLong("FORBIDDEN_COUNT", 0L)) > 0;
            zzakVar.p = z;
            if (z) {
                arrayList.add(1);
                arrayList.add(0);
            } else {
                arrayList.add(0);
                arrayList.add(1);
            }
            arrayList.add(2);
        }
        zzakVar.f29943f.b(zzakVar.f29940b, zzakVar.d, zzakVar.f29941c, arrayList, this, zzakVar.f29947k);
    }

    @Override // com.google.android.gms.internal.gtm.zzix
    public final void zza(zzjh zzjhVar) {
        Status status = zzjhVar.f30127b;
        Status status2 = Status.f29004f;
        zzak zzakVar = this.zza;
        if (status == status2) {
            zzakVar.g.execute(new zzai(zzakVar, zzjhVar));
        } else {
            zzakVar.g.execute(new zzae(zzakVar, null));
        }
    }
}
