package com.google.android.gms.internal.measurement;

import defpackage.md;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public final class zzl extends zzal {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final zzab f30702c;

    public zzl(zzab zzabVar) {
        this.f30702c = zzabVar;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // com.google.android.gms.internal.measurement.zzal, com.google.android.gms.internal.measurement.zzao
    public final zzao h(String str, zzg zzgVar, ArrayList arrayList) {
        int iHashCode = str.hashCode();
        zzab zzabVar = this.f30702c;
        switch (iHashCode) {
            case 21624207:
                if (str.equals("getEventName")) {
                    zzh.a(0, arrayList, "getEventName");
                    return new zzas(zzabVar.f30328b.f30294a);
                }
                break;
            case 45521504:
                if (str.equals("getTimestamp")) {
                    zzh.a(0, arrayList, "getTimestamp");
                    return new zzah(Double.valueOf(zzabVar.f30328b.f30295b));
                }
                break;
            case 146575578:
                if (str.equals("getParamValue")) {
                    zzh.a(1, arrayList, "getParamValue");
                    String strF0 = zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(0)).f0();
                    HashMap map = zzabVar.f30328b.f30296c;
                    return zzi.a(map.containsKey(strF0) ? map.get(strF0) : null);
                }
                break;
            case 700587132:
                if (str.equals("getParams")) {
                    zzh.a(0, arrayList, "getParams");
                    HashMap map2 = zzabVar.f30328b.f30296c;
                    zzal zzalVar = new zzal();
                    for (String str2 : map2.keySet()) {
                        zzalVar.b(str2, zzi.a(map2.get(str2)));
                    }
                    return zzalVar;
                }
                break;
            case 920706790:
                if (str.equals("setParamValue")) {
                    zzh.a(2, arrayList, "setParamValue");
                    String strF1 = zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(0)).f0();
                    zzao zzaoVarB = zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(1));
                    zzaa zzaaVar = zzabVar.f30328b;
                    Object objI = zzh.i(zzaoVarB);
                    HashMap map3 = zzaaVar.f30296c;
                    if (objI == null) {
                        map3.remove(strF1);
                        return zzaoVarB;
                    }
                    map3.put(strF1, zzaa.b(strF1, map3.get(strF1), objI));
                    return zzaoVarB;
                }
                break;
            case 1570616835:
                if (str.equals("setEventName")) {
                    zzh.a(1, arrayList, "setEventName");
                    zzao zzaoVarB2 = zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(0));
                    if (zzao.k0.equals(zzaoVarB2) || zzao.l0.equals(zzaoVarB2)) {
                        md.n("Illegal event name");
                        return null;
                    }
                    zzabVar.f30328b.f30294a = zzaoVarB2.f0();
                    return new zzas(zzaoVarB2.f0());
                }
                break;
        }
        return super.h(str, zzgVar, arrayList);
    }
}
