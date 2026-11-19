package com.google.android.gms.internal.measurement;

import defpackage.b21;
import defpackage.md;
import defpackage.tr;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzh {
    public static void a(int i2, List list, String str) {
        if (list.size() == i2) {
            return;
        }
        b21.m(i2, list.size(), str, " operation requires ", " parameters found ");
    }

    public static void b(int i2, List list, String str) {
        if (list.size() >= i2) {
            return;
        }
        b21.m(i2, list.size(), str, " operation requires at least ", " parameters found ");
    }

    public static void c(int i2, String str, ArrayList arrayList) {
        if (arrayList.size() <= i2) {
            return;
        }
        b21.m(i2, arrayList.size(), str, " operation requires at most ", " parameters found ");
    }

    public static boolean d(zzao zzaoVar) {
        if (zzaoVar == null) {
            return false;
        }
        Double dG0 = zzaoVar.g0();
        return !dG0.isNaN() && dG0.doubleValue() >= 0.0d && dG0.equals(Double.valueOf(Math.floor(dG0.doubleValue())));
    }

    public static zzbk e(String str) {
        zzbk zzbkVarA = (str == null || str.isEmpty()) ? null : zzbk.a(Integer.parseInt(str));
        if (zzbkVarA != null) {
            return zzbkVarA;
        }
        md.n(tr.g("Unsupported commandId ", str));
        return null;
    }

    public static boolean f(zzao zzaoVar, zzao zzaoVar2) {
        if (!zzaoVar.getClass().equals(zzaoVar2.getClass())) {
            return false;
        }
        if ((zzaoVar instanceof zzat) || (zzaoVar instanceof zzam)) {
            return true;
        }
        if (zzaoVar instanceof zzah) {
            Double d = ((zzah) zzaoVar).f30493b;
            if (Double.isNaN(d.doubleValue()) || Double.isNaN(zzaoVar2.g0().doubleValue())) {
                return false;
            }
            return d.equals(zzaoVar2.g0());
        }
        if (zzaoVar instanceof zzas) {
            return ((zzas) zzaoVar).f30572b.equals(zzaoVar2.f0());
        }
        if (zzaoVar instanceof zzaf) {
            return Boolean.valueOf(((zzaf) zzaoVar).f30433b).equals(zzaoVar2.h0());
        }
        return zzaoVar == zzaoVar2;
    }

    public static int g(double d) {
        if (Double.isNaN(d) || Double.isInfinite(d) || d == 0.0d) {
            return 0;
        }
        return (int) ((((double) (d > 0.0d ? 1 : -1)) * Math.floor(Math.abs(d))) % 4.294967296E9d);
    }

    public static double h(double d) {
        if (Double.isNaN(d)) {
            return 0.0d;
        }
        if (Double.isInfinite(d) || d == 0.0d || d == 0.0d) {
            return d;
        }
        return ((double) (d > 0.0d ? 1 : -1)) * Math.floor(Math.abs(d));
    }

    public static Object i(zzao zzaoVar) {
        if (zzao.l0.equals(zzaoVar)) {
            return null;
        }
        if (zzao.k0.equals(zzaoVar)) {
            return "";
        }
        if (zzaoVar instanceof zzal) {
            return j((zzal) zzaoVar);
        }
        if (!(zzaoVar instanceof zzae)) {
            return !zzaoVar.g0().isNaN() ? zzaoVar.g0() : zzaoVar.f0();
        }
        ArrayList arrayList = new ArrayList();
        zzad zzadVar = new zzad((zzae) zzaoVar);
        while (zzadVar.hasNext()) {
            Object objI = i((zzao) zzadVar.next());
            if (objI != null) {
                arrayList.add(objI);
            }
        }
        return arrayList;
    }

    public static HashMap j(zzal zzalVar) {
        HashMap map = new HashMap();
        for (String str : new ArrayList(zzalVar.f30563b.keySet())) {
            Object objI = i(zzalVar.a(str));
            if (objI != null) {
                map.put(str, objI);
            }
        }
        return map;
    }

    public static void k(zzg zzgVar) {
        int iG = g(zzgVar.g("runtime.counter").g0().doubleValue() + 1.0d);
        if (iG <= 1000000) {
            zzgVar.e("runtime.counter", new zzah(Double.valueOf(iG)));
        } else {
            md.k("Instructions allowed exceeded");
        }
    }
}
