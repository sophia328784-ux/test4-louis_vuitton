package com.google.android.gms.internal.measurement;

import defpackage.md;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzi {
    public static zzao a(Object obj) {
        if (obj == null) {
            return zzao.l0;
        }
        if (obj instanceof String) {
            return new zzas((String) obj);
        }
        if (obj instanceof Double) {
            return new zzah((Double) obj);
        }
        if (obj instanceof Long) {
            return new zzah(Double.valueOf(((Long) obj).doubleValue()));
        }
        if (obj instanceof Integer) {
            return new zzah(Double.valueOf(((Integer) obj).doubleValue()));
        }
        if (obj instanceof Boolean) {
            return new zzaf((Boolean) obj);
        }
        if (!(obj instanceof Map)) {
            if (!(obj instanceof List)) {
                md.n("Invalid value type");
                return null;
            }
            zzae zzaeVar = new zzae();
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                zzaeVar.q(zzaeVar.o(), a(it.next()));
            }
            return zzaeVar;
        }
        zzal zzalVar = new zzal();
        Map map = (Map) obj;
        for (Object string : map.keySet()) {
            zzao zzaoVarA = a(map.get(string));
            if (string != null) {
                if (!(string instanceof String)) {
                    string = string.toString();
                }
                zzalVar.b((String) string, zzaoVarA);
            }
        }
        return zzalVar;
    }

    public static zzao b(zzje zzjeVar) {
        if (zzjeVar == null) {
            return zzao.k0;
        }
        int I = zzjeVar.I() - 1;
        if (I == 1) {
            return zzjeVar.C() ? new zzas(zzjeVar.D()) : zzao.r0;
        }
        if (I == 2) {
            return zzjeVar.G() ? new zzah(Double.valueOf(zzjeVar.H())) : new zzah(null);
        }
        if (I == 3) {
            return zzjeVar.E() ? new zzaf(Boolean.valueOf(zzjeVar.F())) : new zzaf(null);
        }
        if (I != 4) {
            md.n("Unknown type found. Cannot convert entity");
            return null;
        }
        List listA = zzjeVar.A();
        ArrayList arrayList = new ArrayList();
        Iterator it = listA.iterator();
        while (it.hasNext()) {
            arrayList.add(b((zzje) it.next()));
        }
        return new zzap(zzjeVar.B(), arrayList);
    }
}
