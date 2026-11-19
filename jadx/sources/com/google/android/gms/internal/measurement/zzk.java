package com.google.android.gms.internal.measurement;

import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class zzk extends zzai {
    public final zzab d;

    public zzk(zzab zzabVar) {
        super("internal.eventLogger");
        this.d = zzabVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzai
    public final zzao c(zzg zzgVar, List list) {
        zzh.a(3, list, this.f30528b);
        String strF0 = zzgVar.f30629b.b(zzgVar, (zzao) list.get(0)).f0();
        zzao zzaoVar = (zzao) list.get(1);
        zzaw zzawVar = zzgVar.f30629b;
        long jH = (long) zzh.h(zzawVar.b(zzgVar, zzaoVar).g0().doubleValue());
        zzao zzaoVarB = zzawVar.b(zzgVar, (zzao) list.get(2));
        HashMap mapJ = zzaoVarB instanceof zzal ? zzh.j((zzal) zzaoVarB) : new HashMap();
        zzab zzabVar = this.d;
        zzabVar.getClass();
        HashMap map = new HashMap();
        for (String str : mapJ.keySet()) {
            HashMap map2 = zzabVar.f30327a.f30296c;
            map.put(str, zzaa.b(str, map2.containsKey(str) ? map2.get(str) : null, mapJ.get(str)));
        }
        zzabVar.f30329c.add(new zzaa(strF0, jH, map));
        return zzao.k0;
    }
}
