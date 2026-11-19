package com.google.android.gms.internal.measurement;

import com.google.common.collect.ImmutableSet;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
final class zzwa extends zzwb {
    @Override // com.google.android.gms.internal.measurement.zzwb
    public final zzwi a(String str, zzxd zzxdVar) {
        boolean z;
        zzws zzwsVarM1;
        zzwl zzwlVar = zzwk.f31037e;
        zzxdVar.getClass();
        zzwq zzwqVarC = zzvy.c();
        zzws zzwsVar = zzwqVarC.f31057b;
        if (zzwsVar == zzwg.f31036h) {
            zzwsVar = null;
            zzvy.b(zzwqVarC, null);
            z = true;
        } else {
            z = false;
        }
        if (zzwsVar == null) {
            UUID uuidB = zzvz.f31029c.b();
            String strC = zzvn.c(uuidB);
            zzvr zzvrVar = zzwd.f31033h;
            ImmutableSet immutableSet = (ImmutableSet) zzvy.f31026a.get();
            if (!immutableSet.isEmpty()) {
                immutableSet.forEach(new zzwe());
            }
            zzwsVarM1 = new zzwf(uuidB, strC, str, zzwlVar, zzvrVar, zzwqVarC);
        } else {
            zzwsVarM1 = zzwsVar instanceof zzvs ? ((zzvs) zzwsVar).M1(str, zzwlVar, false, zzwqVarC) : zzwsVar.H0(str, zzwlVar, zzwqVarC);
        }
        zzvy.b(zzwqVarC, zzwsVarM1);
        return new zzwi(zzwsVarM1, z);
    }
}
