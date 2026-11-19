package com.google.android.gms.internal.measurement;

import defpackage.md;
import java.util.HashMap;
import java.util.List;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes2.dex */
public final class zzv extends zzai {
    public final zzz d;

    public zzv(zzz zzzVar) {
        super("internal.registerCallback");
        this.d = zzzVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzai
    public final zzao c(zzg zzgVar, List list) {
        TreeMap treeMap;
        zzh.a(3, list, this.f30528b);
        zzgVar.f30629b.b(zzgVar, (zzao) list.get(0)).f0();
        zzao zzaoVar = (zzao) list.get(1);
        zzaw zzawVar = zzgVar.f30629b;
        zzao zzaoVarB = zzawVar.b(zzgVar, zzaoVar);
        if (!(zzaoVarB instanceof zzan)) {
            md.n("Invalid callback type");
            return null;
        }
        zzao zzaoVarB2 = zzawVar.b(zzgVar, (zzao) list.get(2));
        if (!(zzaoVarB2 instanceof zzal)) {
            md.n("Invalid callback params");
            return null;
        }
        zzal zzalVar = (zzal) zzaoVarB2;
        HashMap map = zzalVar.f30563b;
        if (!map.containsKey("type")) {
            md.n("Undefined rule type");
            return null;
        }
        String strF0 = zzalVar.a("type").f0();
        int iG = map.containsKey("priority") ? zzh.g(zzalVar.a("priority").g0().doubleValue()) : 1000;
        zzan zzanVar = (zzan) zzaoVarB;
        zzz zzzVar = this.d;
        zzzVar.getClass();
        if ("create".equals(strF0)) {
            treeMap = zzzVar.f31108b;
        } else {
            if (!"edit".equals(strF0)) {
                md.k("Unknown callback type: ".concat(String.valueOf(strF0)));
                return null;
            }
            treeMap = zzzVar.f31107a;
        }
        if (treeMap.containsKey(Integer.valueOf(iG))) {
            iG = ((Integer) treeMap.lastKey()).intValue() + 1;
        }
        treeMap.put(Integer.valueOf(iG), zzanVar);
        return zzao.k0;
    }
}
