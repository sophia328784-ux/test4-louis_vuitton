package com.google.android.gms.internal.vision;

import defpackage.tr;
import defpackage.z81;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzle {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Class f31264a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final zzlu f31265b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzlu f31266c;
    public static final zzlw d;

    static {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            cls = null;
        }
        f31264a = cls;
        f31265b = d(false);
        f31266c = d(true);
        d = new zzlw();
    }

    public static int A(int i2, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzii.p(i2) * size;
    }

    public static int B(List list) {
        return list.size() << 3;
    }

    public static void C(int i2, List list, zzmr zzmrVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzmrVar.K(list, i2, z);
    }

    public static void D(int i2, List list, zzmr zzmrVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzmrVar.D(list, i2, z);
    }

    public static void E(int i2, List list, zzmr zzmrVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzmrVar.r(list, i2, z);
    }

    public static void F(int i2, List list, zzmr zzmrVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzmrVar.G(list, i2, z);
    }

    public static void G(int i2, List list, zzmr zzmrVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzmrVar.f(list, i2, z);
    }

    public static void H(int i2, List list, zzmr zzmrVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzmrVar.b(list, i2, z);
    }

    public static int a(int i2, Object obj, zzlc zzlcVar) {
        if (obj instanceof zzjt) {
            int iR = zzii.r(i2 << 3);
            int iA = ((zzjt) obj).a();
            return z81.m(iA, iA, iR);
        }
        int iR2 = zzii.r(i2 << 3);
        zzhf zzhfVar = (zzhf) ((zzkk) obj);
        int iH = zzhfVar.h();
        if (iH == -1) {
            iH = zzlcVar.c(zzhfVar);
            zzhfVar.f(iH);
        }
        return z81.m(iH, iH, iR2);
    }

    public static int b(int i2, List list, zzlc zzlcVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iK = zzii.k(i2) * size;
        for (int i3 = 0; i3 < size; i3++) {
            Object obj = list.get(i3);
            if (obj instanceof zzjt) {
                int iA = ((zzjt) obj).a();
                iK = z81.m(iA, iA, iK);
            } else {
                zzhf zzhfVar = (zzhf) ((zzkk) obj);
                int iH = zzhfVar.h();
                if (iH == -1) {
                    iH = zzlcVar.c(zzhfVar);
                    zzhfVar.f(iH);
                }
                iK = z81.m(iH, iH, iK);
            }
        }
        return iK;
    }

    public static int c(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzjy) {
            if (size <= 0) {
                return 0;
            }
            throw null;
        }
        int iM = 0;
        for (int i2 = 0; i2 < size; i2++) {
            iM += zzii.m(((Long) list.get(i2)).longValue());
        }
        return iM;
    }

    public static zzlu d(boolean z) {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused) {
            cls = null;
        }
        if (cls != null) {
            try {
                return (zzlu) cls.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
            } catch (Throwable unused2) {
            }
        }
        return null;
    }

    public static Object e(int i2, int i3, Object obj, zzlu zzluVar) {
        if (obj == null) {
            ((zzlw) zzluVar).getClass();
            obj = zzlx.b();
        }
        ((zzlw) zzluVar).getClass();
        ((zzlx) obj).a(i2 << 3, Long.valueOf(i3));
        return obj;
    }

    public static void f(int i2, List list, zzmr zzmrVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzmrVar.k(list, i2, z);
    }

    public static void g(zziq zziqVar, Object obj, Object obj2) {
        ((zzip) zziqVar).getClass();
        zzlg zzlgVar = ((zzjb.zzc) obj2).zzc.f31213a;
        if (zzlgVar.isEmpty()) {
            return;
        }
        zziu zziuVarN = ((zzjb.zzc) obj).n();
        zziuVarN.getClass();
        for (int i2 = 0; i2 < zzlgVar.f31269c.size(); i2++) {
            zziuVarN.g(zzlgVar.d(i2));
        }
        Iterator it = zzlgVar.f().iterator();
        while (it.hasNext()) {
            zziuVarN.g((Map.Entry) it.next());
        }
    }

    public static void h(zzlu zzluVar, Object obj, Object obj2) {
        ((zzlw) zzluVar).getClass();
        zzjb zzjbVar = (zzjb) obj;
        zzlx zzlxVar = zzjbVar.zzb;
        zzlx zzlxVar2 = ((zzjb) obj2).zzb;
        if (!zzlxVar2.equals(zzlx.f31280f)) {
            int i2 = zzlxVar.f31281a + zzlxVar2.f31281a;
            int[] iArrCopyOf = Arrays.copyOf(zzlxVar.f31282b, i2);
            System.arraycopy(zzlxVar2.f31282b, 0, iArrCopyOf, zzlxVar.f31281a, zzlxVar2.f31281a);
            Object[] objArrCopyOf = Arrays.copyOf(zzlxVar.f31283c, i2);
            System.arraycopy(zzlxVar2.f31283c, 0, objArrCopyOf, zzlxVar.f31281a, zzlxVar2.f31281a);
            zzlxVar = new zzlx(i2, iArrCopyOf, objArrCopyOf, true);
        }
        zzjbVar.zzb = zzlxVar;
    }

    public static boolean i(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static int j(int i2, List list) {
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        int iK = zzii.k(i2) * size;
        if (!(list instanceof zzjv)) {
            while (i3 < size) {
                Object obj = list.get(i3);
                if (obj instanceof zzht) {
                    int iF = ((zzht) obj).f();
                    iK = z81.m(iF, iF, iK);
                } else {
                    iK = zzii.e((String) obj) + iK;
                }
                i3++;
            }
            return iK;
        }
        zzjv zzjvVar = (zzjv) list;
        while (i3 < size) {
            Object objG = zzjvVar.g(i3);
            if (objG instanceof zzht) {
                int iF2 = ((zzht) objG).f();
                iK = z81.m(iF2, iF2, iK);
            } else {
                iK = zzii.e((String) objG) + iK;
            }
            i3++;
        }
        return iK;
    }

    public static int k(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzjy) {
            if (size <= 0) {
                return 0;
            }
            throw null;
        }
        int iM = 0;
        for (int i2 = 0; i2 < size; i2++) {
            iM += zzii.m(((Long) list.get(i2)).longValue());
        }
        return iM;
    }

    public static void l(int i2, List list, zzmr zzmrVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzmrVar.m(list, i2, z);
    }

    public static int m(int i2, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iK = zzii.k(i2) * size;
        for (int i3 = 0; i3 < list.size(); i3++) {
            int iF = ((zzht) list.get(i3)).f();
            iK = z81.m(iF, iF, iK);
        }
        return iK;
    }

    public static int n(List list) {
        int size = list.size();
        if (size != 0) {
            if (!(list instanceof zzjy)) {
                int iM = 0;
                for (int i2 = 0; i2 < size; i2++) {
                    long jLongValue = ((Long) list.get(i2)).longValue();
                    iM += zzii.m((jLongValue >> 63) ^ (jLongValue << 1));
                }
                return iM;
            }
            tr.x(list);
            if (size > 0) {
                throw null;
            }
        }
        return 0;
    }

    public static void o(int i2, List list, zzmr zzmrVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzmrVar.u(list, i2, z);
    }

    public static int p(List list) {
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzjd)) {
            int iN = 0;
            while (i2 < size) {
                iN += zzii.n(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return iN;
        }
        zzjd zzjdVar = (zzjd) list;
        int iN2 = 0;
        while (i2 < size) {
            zzjdVar.i(i2);
            iN2 += zzii.n(zzjdVar.f31224c[i2]);
            i2++;
        }
        return iN2;
    }

    public static void q(int i2, List list, zzmr zzmrVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzmrVar.q(list, i2, z);
    }

    public static int r(List list) {
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzjd)) {
            int iN = 0;
            while (i2 < size) {
                iN += zzii.n(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return iN;
        }
        zzjd zzjdVar = (zzjd) list;
        int iN2 = 0;
        while (i2 < size) {
            zzjdVar.i(i2);
            iN2 += zzii.n(zzjdVar.f31224c[i2]);
            i2++;
        }
        return iN2;
    }

    public static void s(int i2, List list, zzmr zzmrVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzmrVar.B(list, i2, z);
    }

    public static int t(List list) {
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzjd)) {
            int iR = 0;
            while (i2 < size) {
                iR += zzii.r(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return iR;
        }
        zzjd zzjdVar = (zzjd) list;
        int iR2 = 0;
        while (i2 < size) {
            zzjdVar.i(i2);
            iR2 += zzii.r(zzjdVar.f31224c[i2]);
            i2++;
        }
        return iR2;
    }

    public static void u(int i2, List list, zzmr zzmrVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzmrVar.p(list, i2, z);
    }

    public static int v(List list) {
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzjd)) {
            int iR = 0;
            while (i2 < size) {
                int iIntValue = ((Integer) list.get(i2)).intValue();
                iR += zzii.r((iIntValue >> 31) ^ (iIntValue << 1));
                i2++;
            }
            return iR;
        }
        zzjd zzjdVar = (zzjd) list;
        int iR2 = 0;
        while (i2 < size) {
            zzjdVar.i(i2);
            int i3 = zzjdVar.f31224c[i2];
            iR2 += zzii.r((i3 >> 31) ^ (i3 << 1));
            i2++;
        }
        return iR2;
    }

    public static void w(int i2, List list, zzmr zzmrVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzmrVar.F(list, i2, z);
    }

    public static int x(int i2, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzii.t(i2) * size;
    }

    public static int y(List list) {
        return list.size() << 2;
    }

    public static void z(int i2, List list, zzmr zzmrVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzmrVar.w(list, i2, z);
    }
}
