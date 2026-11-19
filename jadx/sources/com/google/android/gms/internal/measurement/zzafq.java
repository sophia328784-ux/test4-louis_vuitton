package com.google.android.gms.internal.measurement;

import defpackage.x1;
import defpackage.z81;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzafq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final zzagb f30457a;

    static {
        int i2 = zzacf.f30358a;
        f30457a = new zzagb();
    }

    public static boolean a(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static void b(Object obj, Object obj2) {
        zzadu zzaduVar = (zzadu) obj;
        zzaga zzagaVar = zzaduVar.zzc;
        zzaga zzagaVar2 = ((zzadu) obj2).zzc;
        zzaga zzagaVar3 = zzaga.f30470f;
        if (!zzagaVar3.equals(zzagaVar2)) {
            if (zzagaVar3.equals(zzagaVar)) {
                int i2 = zzagaVar.f30471a + zzagaVar2.f30471a;
                int[] iArrCopyOf = Arrays.copyOf(zzagaVar.f30472b, i2);
                System.arraycopy(zzagaVar2.f30472b, 0, iArrCopyOf, zzagaVar.f30471a, zzagaVar2.f30471a);
                Object[] objArrCopyOf = Arrays.copyOf(zzagaVar.f30473c, i2);
                System.arraycopy(zzagaVar2.f30473c, 0, objArrCopyOf, zzagaVar.f30471a, zzagaVar2.f30471a);
                zzagaVar = new zzaga(i2, iArrCopyOf, objArrCopyOf, true);
            } else {
                zzagaVar.getClass();
                if (!zzagaVar2.equals(zzagaVar3)) {
                    if (!zzagaVar.f30474e) {
                        x1.i();
                        return;
                    }
                    int i3 = zzagaVar.f30471a + zzagaVar2.f30471a;
                    zzagaVar.e(i3);
                    System.arraycopy(zzagaVar2.f30472b, 0, zzagaVar.f30472b, zzagaVar.f30471a, zzagaVar2.f30471a);
                    System.arraycopy(zzagaVar2.f30473c, 0, zzagaVar.f30473c, zzagaVar.f30471a, zzagaVar2.f30471a);
                    zzagaVar.f30471a = i3;
                }
            }
        }
        zzaduVar.zzc = zzagaVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Object c(Object obj, int i2, zzaef zzaefVar, zzadz zzadzVar, Object obj2, zzafz zzafzVar) {
        if (zzadzVar == null) {
            return obj2;
        }
        if (zzaefVar == null) {
            Iterator<E> it = zzaefVar.iterator();
            while (it.hasNext()) {
                int iIntValue = ((Integer) it.next()).intValue();
                if (!zzadzVar.e(iIntValue)) {
                    if (obj2 == null) {
                        obj2 = zzafzVar.a(obj);
                    }
                    ((zzagb) zzafzVar).getClass();
                    ((zzaga) obj2).d(i2 << 3, Long.valueOf(iIntValue));
                    it.remove();
                }
            }
            return obj2;
        }
        int size = zzaefVar.size();
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            Integer num = (Integer) zzaefVar.get(i4);
            int iIntValue2 = num.intValue();
            if (zzadzVar.e(iIntValue2)) {
                if (i4 != i3) {
                    zzaefVar.set(i3, num);
                }
                i3++;
            } else {
                if (obj2 == null) {
                    obj2 = zzafzVar.a(obj);
                }
                ((zzagb) zzafzVar).getClass();
                ((zzaga) obj2).d(i2 << 3, Long.valueOf(iIntValue2));
            }
        }
        if (i3 != size) {
            zzaefVar.subList(i3, size).clear();
        }
        return obj2;
    }

    public static int d(List list) {
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzaeq)) {
            int iC = 0;
            while (i2 < size) {
                iC += zzada.c(((Long) list.get(i2)).longValue());
                i2++;
            }
            return iC;
        }
        zzaeq zzaeqVar = (zzaeq) list;
        int iC2 = 0;
        while (i2 < size) {
            iC2 += zzada.c(zzaeqVar.C(i2));
            i2++;
        }
        return iC2;
    }

    public static int e(List list) {
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzaeq)) {
            int iC = 0;
            while (i2 < size) {
                iC += zzada.c(((Long) list.get(i2)).longValue());
                i2++;
            }
            return iC;
        }
        zzaeq zzaeqVar = (zzaeq) list;
        int iC2 = 0;
        while (i2 < size) {
            iC2 += zzada.c(zzaeqVar.C(i2));
            i2++;
        }
        return iC2;
    }

    public static int f(List list) {
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzaeq)) {
            int iC = 0;
            while (i2 < size) {
                long jLongValue = ((Long) list.get(i2)).longValue();
                iC += zzada.c((jLongValue >> 63) ^ (jLongValue + jLongValue));
                i2++;
            }
            return iC;
        }
        zzaeq zzaeqVar = (zzaeq) list;
        int iC2 = 0;
        while (i2 < size) {
            long jC = zzaeqVar.C(i2);
            iC2 += zzada.c((jC >> 63) ^ (jC + jC));
            i2++;
        }
        return iC2;
    }

    public static int g(List list) {
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzadv)) {
            int iC = 0;
            while (i2 < size) {
                iC += zzada.c(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return iC;
        }
        zzadv zzadvVar = (zzadv) list;
        int iC2 = 0;
        while (i2 < size) {
            iC2 += zzada.c(zzadvVar.y(i2));
            i2++;
        }
        return iC2;
    }

    public static int h(List list) {
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzadv)) {
            int iC = 0;
            while (i2 < size) {
                iC += zzada.c(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return iC;
        }
        zzadv zzadvVar = (zzadv) list;
        int iC2 = 0;
        while (i2 < size) {
            iC2 += zzada.c(zzadvVar.y(i2));
            i2++;
        }
        return iC2;
    }

    public static int i(List list) {
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzadv)) {
            int iB = 0;
            while (i2 < size) {
                iB += zzada.b(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return iB;
        }
        zzadv zzadvVar = (zzadv) list;
        int iB2 = 0;
        while (i2 < size) {
            iB2 += zzada.b(zzadvVar.y(i2));
            i2++;
        }
        return iB2;
    }

    public static int j(List list) {
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzadv)) {
            int iB = 0;
            while (i2 < size) {
                int iIntValue = ((Integer) list.get(i2)).intValue();
                iB += zzada.b((iIntValue >> 31) ^ (iIntValue + iIntValue));
                i2++;
            }
            return iB;
        }
        zzadv zzadvVar = (zzadv) list;
        int iB2 = 0;
        while (i2 < size) {
            int iY = zzadvVar.y(i2);
            iB2 += zzada.b((iY >> 31) ^ (iY + iY));
            i2++;
        }
        return iB2;
    }

    public static int k(int i2, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzada.b(i2 << 3) + 4) * size;
    }

    public static int l(int i2, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzada.b(i2 << 3) + 8) * size;
    }

    public static int m(int i2, Object obj, zzafp zzafpVar) {
        int iE;
        int i3 = i2 << 3;
        if (!(obj instanceof zzaem)) {
            int iB = zzada.b(i3);
            int iJ = ((zzacb) obj).j(zzafpVar);
            return z81.a(iJ, iJ, iB);
        }
        zzaem zzaemVar = (zzaem) obj;
        int iB2 = zzada.b(i3);
        if (zzaemVar.f30418b != null) {
            iE = zzaemVar.f30418b.f();
        } else {
            iE = zzaemVar.f30417a != null ? zzaemVar.f30417a.e() : 0;
        }
        return z81.a(iE, iE, iB2);
    }
}
