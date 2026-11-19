package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.zziw;
import defpackage.d20;
import defpackage.md;
import defpackage.v7;
import defpackage.z81;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes2.dex */
final class zziu<T extends zziw<T>> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zziu f31212c = new zziu(0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzlg f31213a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f31214b;

    public zziu(int i2) {
        int i3 = zzlh.f31267h;
        this.f31213a = new zzlg(0);
        f();
        f();
    }

    public static int a(zzml zzmlVar, int i2, Object obj) {
        int iK = zzii.k(i2);
        if (zzmlVar == zzml.zzj) {
            Charset charset = zzjf.f31225a;
            iK <<= 1;
        }
        return iK + b(zzmlVar, obj);
    }

    public static int b(zzml zzmlVar, Object obj) {
        int iL;
        int iR;
        switch (zzit.f31211b[zzmlVar.ordinal()]) {
            case 1:
                ((Double) obj).getClass();
                Logger logger = zzii.f31197b;
                return 8;
            case 2:
                ((Float) obj).getClass();
                Logger logger2 = zzii.f31197b;
                return 4;
            case 3:
                return zzii.m(((Long) obj).longValue());
            case 4:
                return zzii.m(((Long) obj).longValue());
            case 5:
                return zzii.n(((Integer) obj).intValue());
            case 6:
                ((Long) obj).getClass();
                Logger logger3 = zzii.f31197b;
                return 8;
            case 7:
                ((Integer) obj).getClass();
                Logger logger4 = zzii.f31197b;
                return 4;
            case 8:
                ((Boolean) obj).getClass();
                Logger logger5 = zzii.f31197b;
                return 1;
            case 9:
                Logger logger6 = zzii.f31197b;
                return ((zzkk) obj).L();
            case 10:
                Logger logger7 = zzii.f31197b;
                iL = ((zzkk) obj).L();
                iR = zzii.r(iL);
                break;
            case 11:
                if (!(obj instanceof zzht)) {
                    return zzii.e((String) obj);
                }
                Logger logger8 = zzii.f31197b;
                iL = ((zzht) obj).f();
                iR = zzii.r(iL);
                break;
                break;
            case 12:
                if (!(obj instanceof zzht)) {
                    Logger logger9 = zzii.f31197b;
                    iL = ((byte[]) obj).length;
                    iR = zzii.r(iL);
                } else {
                    Logger logger10 = zzii.f31197b;
                    iL = ((zzht) obj).f();
                    iR = zzii.r(iL);
                }
                break;
            case 13:
                return zzii.r(((Integer) obj).intValue());
            case 14:
                ((Integer) obj).getClass();
                Logger logger11 = zzii.f31197b;
                return 4;
            case 15:
                ((Long) obj).getClass();
                Logger logger12 = zzii.f31197b;
                return 8;
            case 16:
                int iIntValue = ((Integer) obj).intValue();
                return zzii.r((iIntValue >> 31) ^ (iIntValue << 1));
            case 17:
                long jLongValue = ((Long) obj).longValue();
                return zzii.m((jLongValue >> 63) ^ (jLongValue << 1));
            case 18:
                return obj instanceof zzje ? zzii.n(((zzje) obj).d0()) : zzii.n(((Integer) obj).intValue());
            default:
                v7.h("There is no way to get here, but the compiler thinks otherwise.");
                return 0;
        }
        return iR + iL;
    }

    public static Object c(Object obj) {
        if (obj instanceof zzkt) {
            ((zzkt) obj).d0();
            throw null;
        }
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    public static boolean e(Map.Entry entry) {
        zziw zziwVar = (zziw) entry.getKey();
        if (zziwVar.f0() != zzmo.MESSAGE) {
            return true;
        }
        if (zziwVar.g0()) {
            Iterator it = ((List) entry.getValue()).iterator();
            while (it.hasNext()) {
                if (!((zzkk) it.next()).a()) {
                    return false;
                }
            }
            return true;
        }
        Object value = entry.getValue();
        if (value instanceof zzkk) {
            return ((zzkk) value).a();
        }
        md.n("Wrong object type used with protocol message reflection.");
        return false;
    }

    public static int h(zziw zziwVar, Object obj) {
        zzml zzmlVarE0 = zziwVar.e0();
        int iD0 = zziwVar.d0();
        if (!zziwVar.g0()) {
            return a(zzmlVarE0, iD0, obj);
        }
        int iA = 0;
        if (!zziwVar.h0()) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                iA += a(zzmlVarE0, iD0, it.next());
            }
            return iA;
        }
        Iterator it2 = ((List) obj).iterator();
        while (it2.hasNext()) {
            iA += b(zzmlVarE0, it2.next());
        }
        return zzii.r(iA) + zzii.k(iD0) + iA;
    }

    public static int i(Map.Entry entry) {
        zziw zziwVar = (zziw) entry.getKey();
        Object value = entry.getValue();
        if (zziwVar.f0() != zzmo.MESSAGE || zziwVar.g0() || zziwVar.h0()) {
            return h(zziwVar, value);
        }
        int iD0 = ((zziw) entry.getKey()).d0();
        int iQ = zzii.q(2, iD0) + (zzii.r(8) << 1);
        int iR = zzii.r(24);
        int iL = ((zzkk) value).L();
        return z81.n(iL, iL, iR, iQ);
    }

    public static void k(zziw zziwVar, Object obj) {
        zzml zzmlVarE0 = zziwVar.e0();
        Charset charset = zzjf.f31225a;
        obj.getClass();
        boolean z = true;
        switch (zzit.f31210a[zzmlVarE0.a().ordinal()]) {
            case 1:
                z = obj instanceof Integer;
                break;
            case 2:
                z = obj instanceof Long;
                break;
            case 3:
                z = obj instanceof Float;
                break;
            case 4:
                z = obj instanceof Double;
                break;
            case 5:
                z = obj instanceof Boolean;
                break;
            case 6:
                z = obj instanceof String;
                break;
            case 7:
                if (!(obj instanceof zzht) && !(obj instanceof byte[])) {
                    z = false;
                }
                break;
            case 8:
                if (!(obj instanceof Integer) && !(obj instanceof zzje)) {
                    z = false;
                }
                break;
            case 9:
                if (!(obj instanceof zzkk)) {
                    z = false;
                }
                break;
            default:
                z = false;
                break;
        }
        if (z) {
            return;
        }
        d20.j("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", new Object[]{Integer.valueOf(zziwVar.d0()), zziwVar.e0().a(), obj.getClass().getName()});
    }

    public final Object clone() {
        zzlg zzlgVar;
        zziu zziuVar = new zziu();
        int i2 = 0;
        while (true) {
            zzlgVar = this.f31213a;
            if (i2 >= zzlgVar.f31269c.size()) {
                break;
            }
            Map.Entry entryD = zzlgVar.d(i2);
            zziuVar.d((zziw) entryD.getKey(), entryD.getValue());
            i2++;
        }
        for (Map.Entry entry : zzlgVar.f()) {
            zziuVar.d((zziw) entry.getKey(), entry.getValue());
        }
        return zziuVar;
    }

    public final void d(zziw zziwVar, Object obj) {
        if (!zziwVar.g0()) {
            k(zziwVar, obj);
        } else {
            if (!(obj instanceof List)) {
                md.n("Wrong object type used with protocol message reflection.");
                return;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj2 = arrayList.get(i2);
                i2++;
                k(zziwVar, obj2);
            }
            obj = arrayList;
        }
        this.f31213a.put(zziwVar, obj);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zziu) {
            return this.f31213a.equals(((zziu) obj).f31213a);
        }
        return false;
    }

    public final void f() {
        if (this.f31214b) {
            return;
        }
        zzlg zzlgVar = this.f31213a;
        if (!zzlgVar.f31270e) {
            for (int i2 = 0; i2 < zzlgVar.f31269c.size(); i2++) {
                Map.Entry entryD = zzlgVar.d(i2);
                if (((zziw) entryD.getKey()).g0()) {
                    entryD.setValue(Collections.unmodifiableList((List) entryD.getValue()));
                }
            }
            for (Map.Entry entry : zzlgVar.f()) {
                if (((zziw) entry.getKey()).g0()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        if (!zzlgVar.f31270e) {
            zzlgVar.d = zzlgVar.d.isEmpty() ? Collections.EMPTY_MAP : Collections.unmodifiableMap(zzlgVar.d);
            zzlgVar.g = zzlgVar.g.isEmpty() ? Collections.EMPTY_MAP : Collections.unmodifiableMap(zzlgVar.g);
            zzlgVar.f31270e = true;
        }
        this.f31214b = true;
    }

    public final void g(Map.Entry entry) {
        Object objI;
        zziw zziwVar = (zziw) entry.getKey();
        Object value = entry.getValue();
        boolean zG0 = zziwVar.g0();
        zzlg zzlgVar = this.f31213a;
        if (zG0) {
            Object arrayList = zzlgVar.get(zziwVar);
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            Iterator it = ((List) value).iterator();
            while (it.hasNext()) {
                ((List) arrayList).add(c(it.next()));
            }
            zzlgVar.put(zziwVar, arrayList);
            return;
        }
        if (zziwVar.f0() != zzmo.MESSAGE) {
            zzlgVar.put(zziwVar, c(value));
            return;
        }
        Object obj = zzlgVar.get(zziwVar);
        if (obj == null) {
            zzlgVar.put(zziwVar, c(value));
            return;
        }
        if (obj instanceof zzkt) {
            objI = zziwVar.m35d0();
        } else {
            ((zzkk) obj).d();
            objI = zziwVar.m34d0().I();
        }
        zzlgVar.put(zziwVar, objI);
    }

    public final int hashCode() {
        return this.f31213a.hashCode();
    }

    public final Iterator j() {
        return ((zzlo) this.f31213a.entrySet()).iterator();
    }

    public final boolean l() {
        int i2 = 0;
        while (true) {
            zzlg zzlgVar = this.f31213a;
            if (i2 >= zzlgVar.f31269c.size()) {
                Iterator it = zzlgVar.f().iterator();
                while (it.hasNext()) {
                    if (!e((Map.Entry) it.next())) {
                        break;
                    }
                }
                return true;
            }
            if (!e(zzlgVar.d(i2))) {
                break;
            }
            i2++;
        }
        return false;
    }

    public zziu() {
        this.f31213a = new zzlg(16);
    }
}
