package com.google.android.gms.internal.gtm;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import defpackage.d20;
import defpackage.fc;
import defpackage.md;
import defpackage.mt;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzkw {
    public static Bundle a(Map map) {
        if (map == null) {
            return null;
        }
        Bundle bundle = new Bundle(map.size());
        for (Map.Entry entry : map.entrySet()) {
            if (entry.getValue() instanceof zzkv) {
                bundle.putString((String) entry.getKey(), ((zzkv) entry.getValue()).f30188b);
            } else if (entry.getValue() instanceof zzkl) {
                bundle.putBoolean((String) entry.getKey(), ((zzkl) entry.getValue()).f30165b.booleanValue());
            } else if (entry.getValue() instanceof zzkm) {
                bundle.putDouble((String) entry.getKey(), ((zzkm) entry.getValue()).f30167b.doubleValue());
            } else {
                if (!(entry.getValue() instanceof zzks)) {
                    d20.j("Invalid param type for key '%s'. Only boolean, double and string types and maps of thereof are supported.", new Object[]{entry.getKey()});
                    return null;
                }
                bundle.putBundle((String) entry.getKey(), a(((zzks) entry.getValue()).f30163a));
            }
        }
        return bundle;
    }

    public static zzkk b(Object obj) {
        if (obj == null) {
            return zzko.g;
        }
        if (obj instanceof zzkk) {
            return (zzkk) obj;
        }
        if (obj instanceof Boolean) {
            return new zzkl((Boolean) obj);
        }
        if (obj instanceof Short) {
            return new zzkm(Double.valueOf(((Short) obj).doubleValue()));
        }
        if (obj instanceof Integer) {
            return new zzkm(Double.valueOf(((Integer) obj).doubleValue()));
        }
        if (obj instanceof Long) {
            return new zzkm(Double.valueOf(((Long) obj).doubleValue()));
        }
        if (obj instanceof Float) {
            return new zzkm(Double.valueOf(((Float) obj).doubleValue()));
        }
        if (obj instanceof Double) {
            return new zzkm((Double) obj);
        }
        if (!(obj instanceof Byte) && !(obj instanceof Character)) {
            if (obj instanceof String) {
                return new zzkv((String) obj);
            }
            if (obj instanceof List) {
                ArrayList arrayList = new ArrayList();
                Iterator it = ((List) obj).iterator();
                while (it.hasNext()) {
                    arrayList.add(b(it.next()));
                }
                return new zzkr(arrayList);
            }
            if (obj instanceof Map) {
                HashMap map = new HashMap();
                for (Map.Entry entry : ((Map) obj).entrySet()) {
                    Preconditions.a(entry.getKey() instanceof String);
                    map.put((String) entry.getKey(), b(entry.getValue()));
                }
                return new zzks(map);
            }
            if (!(obj instanceof Bundle)) {
                mt.i("Type not supported: ".concat(String.valueOf(obj.getClass())));
                return null;
            }
            HashMap map2 = new HashMap();
            Bundle bundle = (Bundle) obj;
            for (String str : bundle.keySet()) {
                map2.put(str, b(bundle.get(str)));
            }
            return new zzks(map2);
        }
        return new zzkv(obj.toString());
    }

    public static zzkk c(zzbv zzbvVar, zzkk zzkkVar) {
        Preconditions.h(zzkkVar);
        if (!g(zzkkVar) && !(zzkkVar instanceof zzkn) && !(zzkkVar instanceof zzkr) && !(zzkkVar instanceof zzks)) {
            if (!(zzkkVar instanceof zzkt)) {
                mt.i("Attempting to evaluate unknown type");
                return null;
            }
            zzkkVar = d(zzbvVar, (zzkt) zzkkVar);
        }
        if (zzkkVar == null) {
            md.n("AbstractType evaluated to Java null");
            return null;
        }
        if (!(zzkkVar instanceof zzkt)) {
            return zzkkVar;
        }
        md.n("AbstractType evaluated to illegal type Statement.");
        return null;
    }

    public static zzkk d(zzbv zzbvVar, zzkt zzktVar) {
        String str = zzktVar.f30183b;
        List list = zzktVar.f30184c;
        zzkk zzkkVarA = zzbvVar.a(str);
        if (zzkkVarA == null) {
            mt.i(fc.h("Function '", str, "' is not supported"));
            return null;
        }
        if (zzkkVarA instanceof zzkn) {
            return ((zzkn) zzkkVarA).f30169b.a(zzbvVar, (zzkk[]) list.toArray(new zzkk[list.size()]));
        }
        mt.i(fc.h("Function '", str, "' is not a function"));
        return null;
    }

    public static zzko e(zzbv zzbvVar, ArrayList arrayList) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            zzkk zzkkVar = (zzkk) it.next();
            Preconditions.a(zzkkVar instanceof zzkt);
            zzkk zzkkVarC = c(zzbvVar, zzkkVar);
            if (f(zzkkVarC)) {
                return (zzko) zzkkVarC;
            }
        }
        return zzko.f30172h;
    }

    public static boolean f(zzkk zzkkVar) {
        if (zzkkVar == zzko.f30171f || zzkkVar == zzko.f30170e) {
            return true;
        }
        return (zzkkVar instanceof zzko) && ((zzko) zzkkVar).f30174c;
    }

    public static boolean g(zzkk zzkkVar) {
        return (zzkkVar instanceof zzkl) || (zzkkVar instanceof zzkm) || (zzkkVar instanceof zzkv) || zzkkVar == zzko.g || zzkkVar == zzko.f30172h;
    }
}
