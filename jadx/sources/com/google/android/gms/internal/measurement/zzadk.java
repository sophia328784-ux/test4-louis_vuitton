package com.google.android.gms.internal.measurement;

import defpackage.d20;
import defpackage.md;
import defpackage.v7;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class zzadk {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzadk f30401c = new zzadk(0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzafr f30402a = new zzafr();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f30403b;

    public zzadk(int i2) {
        a();
        a();
    }

    public static void e(zzada zzadaVar, zzagm zzagmVar, int i2, Object obj) {
        if (zzagmVar == zzagm.zzj) {
            zzadaVar.f(i2, 3);
            ((zzafc) obj).f(zzadaVar);
            zzadaVar.f(i2, 4);
            return;
        }
        zzadaVar.f(i2, zzagmVar.b());
        zzagn zzagnVar = zzagn.zza;
        switch (zzagmVar.ordinal()) {
            case 0:
                zzadaVar.y(Double.doubleToRawLongBits(((Double) obj).doubleValue()));
                break;
            case 1:
                zzadaVar.w(Float.floatToRawIntBits(((Float) obj).floatValue()));
                break;
            case 2:
                zzadaVar.x(((Long) obj).longValue());
                break;
            case 3:
                zzadaVar.x(((Long) obj).longValue());
                break;
            case 4:
                zzadaVar.u(((Integer) obj).intValue());
                break;
            case 5:
                zzadaVar.y(((Long) obj).longValue());
                break;
            case 6:
                zzadaVar.w(((Integer) obj).intValue());
                break;
            case 7:
                zzadaVar.t(((Boolean) obj).booleanValue() ? (byte) 1 : (byte) 0);
                break;
            case 8:
                if (!(obj instanceof zzacr)) {
                    zzadaVar.z((String) obj);
                } else {
                    zzadaVar.o((zzacr) obj);
                }
                break;
            case 9:
                ((zzafc) obj).f(zzadaVar);
                break;
            case 10:
                zzadaVar.s((zzafc) obj);
                break;
            case 11:
                if (!(obj instanceof zzacr)) {
                    byte[] bArr = (byte[]) obj;
                    zzadaVar.p(bArr.length, bArr);
                } else {
                    zzadaVar.o((zzacr) obj);
                }
                break;
            case 12:
                zzadaVar.v(((Integer) obj).intValue());
                break;
            case 13:
                if (!(obj instanceof zzady)) {
                    zzadaVar.u(((Integer) obj).intValue());
                } else {
                    zzadaVar.u(((zzady) obj).d0());
                }
                break;
            case 14:
                zzadaVar.w(((Integer) obj).intValue());
                break;
            case 15:
                zzadaVar.y(((Long) obj).longValue());
                break;
            case 16:
                int iIntValue = ((Integer) obj).intValue();
                zzadaVar.v((iIntValue >> 31) ^ (iIntValue + iIntValue));
                break;
            case 17:
                long jLongValue = ((Long) obj).longValue();
                zzadaVar.x((jLongValue >> 63) ^ (jLongValue + jLongValue));
                break;
        }
    }

    public static int f(zzagm zzagmVar, int i2, Object obj) {
        int iB = zzada.b(i2 << 3);
        if (zzagmVar == zzagm.zzj) {
            iB += iB;
        }
        return iB + g(zzagmVar, obj);
    }

    public static int g(zzagm zzagmVar, Object obj) {
        int iB;
        int iB2;
        zzagm zzagmVar2 = zzagm.zza;
        zzagn zzagnVar = zzagn.zza;
        switch (zzagmVar.ordinal()) {
            case 0:
                ((Double) obj).getClass();
                boolean z = zzada.f30392b;
                return 8;
            case 1:
                ((Float) obj).getClass();
                boolean z2 = zzada.f30392b;
                return 4;
            case 2:
                return zzada.c(((Long) obj).longValue());
            case 3:
                return zzada.c(((Long) obj).longValue());
            case 4:
                return zzada.c(((Integer) obj).intValue());
            case 5:
                ((Long) obj).getClass();
                boolean z3 = zzada.f30392b;
                return 8;
            case 6:
                ((Integer) obj).getClass();
                boolean z4 = zzada.f30392b;
                return 4;
            case 7:
                ((Boolean) obj).getClass();
                boolean z5 = zzada.f30392b;
                return 1;
            case 8:
                if (!(obj instanceof zzacr)) {
                    boolean z6 = zzada.f30392b;
                    iB = zzagl.b((String) obj);
                    iB2 = zzada.b(iB);
                } else {
                    boolean z7 = zzada.f30392b;
                    iB = ((zzacr) obj).f();
                    iB2 = zzada.b(iB);
                }
                break;
            case 9:
                return ((zzafc) obj).e();
            case 10:
                return zzada.d((zzafc) obj);
            case 11:
                if (!(obj instanceof zzacr)) {
                    boolean z8 = zzada.f30392b;
                    iB = ((byte[]) obj).length;
                    iB2 = zzada.b(iB);
                } else {
                    boolean z9 = zzada.f30392b;
                    iB = ((zzacr) obj).f();
                    iB2 = zzada.b(iB);
                }
                break;
            case 12:
                return zzada.b(((Integer) obj).intValue());
            case 13:
                return obj instanceof zzady ? zzada.c(((zzady) obj).d0()) : zzada.c(((Integer) obj).intValue());
            case 14:
                ((Integer) obj).getClass();
                boolean z10 = zzada.f30392b;
                return 4;
            case 15:
                ((Long) obj).getClass();
                boolean z11 = zzada.f30392b;
                return 8;
            case 16:
                int iIntValue = ((Integer) obj).intValue();
                return zzada.b((iIntValue >> 31) ^ (iIntValue + iIntValue));
            case 17:
                long jLongValue = ((Long) obj).longValue();
                return zzada.c((jLongValue >> 63) ^ (jLongValue + jLongValue));
            default:
                v7.h("There is no way to get here, but the compiler thinks otherwise.");
                return 0;
        }
        return iB2 + iB;
    }

    public static int h(zzadj zzadjVar, Object obj) {
        zzagm zzagmVarE0 = zzadjVar.e0();
        int iD0 = zzadjVar.d0();
        if (!zzadjVar.g0()) {
            return f(zzagmVarE0, iD0, obj);
        }
        List list = (List) obj;
        int size = list.size();
        int i2 = 0;
        if (!zzadjVar.h0()) {
            int iF = 0;
            while (i2 < size) {
                iF += f(zzagmVarE0, iD0, list.get(i2));
                i2++;
            }
            return iF;
        }
        if (list.isEmpty()) {
            return 0;
        }
        int iG = 0;
        while (i2 < size) {
            iG += g(zzagmVarE0, list.get(i2));
            i2++;
        }
        return zzada.b(iG) + zzada.b(iD0 << 3) + iG;
    }

    public static boolean i(Map.Entry entry) {
        zzadj zzadjVar = (zzadj) entry.getKey();
        if (zzadjVar.f0() != zzagn.zzi) {
            return true;
        }
        if (!zzadjVar.g0()) {
            Object value = entry.getValue();
            if (value instanceof zzafd) {
                return ((zzafd) value).c();
            }
            md.n("Wrong object type used with protocol message reflection.");
            return false;
        }
        List list = (List) entry.getValue();
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            if (!(obj instanceof zzafd)) {
                md.n("Wrong object type used with protocol message reflection.");
                return false;
            }
            if (!((zzafd) obj).c()) {
                return false;
            }
        }
        return true;
    }

    public static final int j(Map.Entry entry) {
        zzadj zzadjVar = (zzadj) entry.getKey();
        Object value = entry.getValue();
        if (zzadjVar.f0() != zzagn.zzi || zzadjVar.g0() || zzadjVar.h0()) {
            return h(zzadjVar, value);
        }
        int iD0 = ((zzadj) entry.getKey()).d0();
        int iB = zzada.b(8);
        int iB2 = zzada.b(iD0) + zzada.b(16);
        return iB + iB + iB2 + zzada.d((zzafc) value) + zzada.b(24);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static final void k(zzadj zzadjVar, Object obj) {
        boolean z;
        zzagm zzagmVarE0 = zzadjVar.e0();
        obj.getClass();
        zzagm zzagmVar = zzagm.zza;
        zzagn zzagnVar = zzagn.zza;
        switch (zzagmVarE0.a().ordinal()) {
            case 0:
                z = obj instanceof Integer;
                if (z) {
                }
                d20.j("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", new Object[]{Integer.valueOf(zzadjVar.d0()), zzadjVar.e0().a(), obj.getClass().getName()});
                break;
            case 1:
                z = obj instanceof Long;
                if (z) {
                }
                d20.j("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", new Object[]{Integer.valueOf(zzadjVar.d0()), zzadjVar.e0().a(), obj.getClass().getName()});
                break;
            case 2:
                z = obj instanceof Float;
                if (z) {
                }
                d20.j("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", new Object[]{Integer.valueOf(zzadjVar.d0()), zzadjVar.e0().a(), obj.getClass().getName()});
                break;
            case 3:
                z = obj instanceof Double;
                if (z) {
                }
                d20.j("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", new Object[]{Integer.valueOf(zzadjVar.d0()), zzadjVar.e0().a(), obj.getClass().getName()});
                break;
            case 4:
                z = obj instanceof Boolean;
                if (z) {
                }
                d20.j("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", new Object[]{Integer.valueOf(zzadjVar.d0()), zzadjVar.e0().a(), obj.getClass().getName()});
                break;
            case 5:
                z = obj instanceof String;
                if (z) {
                }
                d20.j("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", new Object[]{Integer.valueOf(zzadjVar.d0()), zzadjVar.e0().a(), obj.getClass().getName()});
                break;
            case 6:
                if ((obj instanceof zzacr) || (obj instanceof byte[])) {
                }
                d20.j("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", new Object[]{Integer.valueOf(zzadjVar.d0()), zzadjVar.e0().a(), obj.getClass().getName()});
                break;
            case 7:
                if ((obj instanceof Integer) || (obj instanceof zzady)) {
                }
                d20.j("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", new Object[]{Integer.valueOf(zzadjVar.d0()), zzadjVar.e0().a(), obj.getClass().getName()});
                break;
            case 8:
                if (obj instanceof zzafc) {
                }
                d20.j("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", new Object[]{Integer.valueOf(zzadjVar.d0()), zzadjVar.e0().a(), obj.getClass().getName()});
                break;
            default:
                d20.j("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", new Object[]{Integer.valueOf(zzadjVar.d0()), zzadjVar.e0().a(), obj.getClass().getName()});
                break;
        }
    }

    public final void a() {
        if (this.f30403b) {
            return;
        }
        zzafr zzafrVar = this.f30402a;
        int i2 = zzafrVar.f30465c;
        for (int i3 = 0; i3 < i2; i3++) {
            Object obj = ((zzafs) zzafrVar.a(i3)).f30459c;
            if (obj instanceof zzadu) {
                ((zzadu) obj).p();
            }
        }
        Iterator it = zzafrVar.c().iterator();
        while (it.hasNext()) {
            Object value = ((Map.Entry) it.next()).getValue();
            if (value instanceof zzadu) {
                ((zzadu) value).p();
            }
        }
        if (!zzafrVar.f30466e) {
            for (int i4 = 0; i4 < zzafrVar.f30465c; i4++) {
                Map.Entry entryA = zzafrVar.a(i4);
                zzafs zzafsVar = (zzafs) entryA;
                if (((zzadj) zzafsVar.f30458b).g0()) {
                    ((zzafs) entryA).setValue(Collections.unmodifiableList((List) zzafsVar.f30459c));
                }
            }
            for (Map.Entry entry : zzafrVar.c()) {
                if (((zzadj) entry.getKey()).g0()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        if (!zzafrVar.f30466e) {
            zzafrVar.d = zzafrVar.d.isEmpty() ? Collections.EMPTY_MAP : Collections.unmodifiableMap(zzafrVar.d);
            zzafrVar.g = zzafrVar.g.isEmpty() ? Collections.EMPTY_MAP : Collections.unmodifiableMap(zzafrVar.g);
            zzafrVar.f30466e = true;
        }
        this.f30403b = true;
    }

    public final Iterator b() {
        zzafr zzafrVar = this.f30402a;
        return zzafrVar.isEmpty() ? Collections.emptyIterator() : ((zzafu) zzafrVar.entrySet()).iterator();
    }

    public final void c(zzadj zzadjVar, Object obj) {
        if (!zzadjVar.g0()) {
            k(zzadjVar, obj);
        } else {
            if (!(obj instanceof List)) {
                md.n("Wrong object type used with protocol message reflection.");
                return;
            }
            List list = (List) obj;
            int size = list.size();
            ArrayList arrayList = new ArrayList(size);
            for (int i2 = 0; i2 < size; i2++) {
                Object obj2 = list.get(i2);
                k(zzadjVar, obj2);
                arrayList.add(obj2);
            }
            obj = arrayList;
        }
        this.f30402a.put(zzadjVar, obj);
    }

    public final Object clone() {
        zzadk zzadkVar = new zzadk();
        zzafr zzafrVar = this.f30402a;
        int i2 = zzafrVar.f30465c;
        for (int i3 = 0; i3 < i2; i3++) {
            zzafs zzafsVar = (zzafs) zzafrVar.a(i3);
            zzadkVar.c((zzadj) zzafsVar.f30458b, zzafsVar.f30459c);
        }
        for (Map.Entry entry : zzafrVar.c()) {
            zzadkVar.c((zzadj) entry.getKey(), entry.getValue());
        }
        return zzadkVar;
    }

    public final boolean d() {
        zzafr zzafrVar = this.f30402a;
        int i2 = zzafrVar.f30465c;
        for (int i3 = 0; i3 < i2; i3++) {
            if (!i(zzafrVar.a(i3))) {
                return false;
            }
        }
        Iterator it = zzafrVar.c().iterator();
        while (it.hasNext()) {
            if (!i((Map.Entry) it.next())) {
                return false;
            }
        }
        return true;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzadk) {
            return this.f30402a.equals(((zzadk) obj).f30402a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f30402a.hashCode();
    }

    public zzadk() {
    }
}
