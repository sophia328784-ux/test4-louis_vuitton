package com.google.android.gms.internal.measurement;

import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.ImmutableSortedSet;
import com.google.common.collect.UnmodifiableIterator;
import defpackage.md;
import defpackage.tr;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class zzqs {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f30848a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f30849b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final zzacr f30850c;
    public final ImmutableMap d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final zzqr f30851e;

    /* JADX WARN: Code duplicated, block: B:110:0x0278  */
    /* JADX WARN: Code duplicated, block: B:111:0x027b  */
    /* JADX WARN: Code duplicated, block: B:114:0x0281  */
    /* JADX WARN: Code duplicated, block: B:116:0x0299  */
    /* JADX WARN: Code duplicated, block: B:118:0x029e  */
    /* JADX WARN: Code duplicated, block: B:119:0x02b0  */
    /* JADX WARN: Code duplicated, block: B:121:0x02b4  */
    /* JADX WARN: Code duplicated, block: B:122:0x02ca  */
    /* JADX WARN: Code duplicated, block: B:124:0x02ce  */
    /* JADX WARN: Code duplicated, block: B:125:0x02e4  */
    /* JADX WARN: Code duplicated, block: B:127:0x02e8  */
    /* JADX WARN: Code duplicated, block: B:161:0x0302 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:40:0x00f6  */
    /* JADX WARN: Multi-variable type inference failed */
    public zzqs(zznd zzndVar, zzqr zzqrVar) throws Throwable {
        ImmutableMap immutableMapA;
        Throwable th;
        char c2;
        long j2;
        long j3;
        String str;
        int i2 = 1;
        zzmw zzmwVar = zzndVar.f30763a;
        zzmq zzmqVar = zzndVar.f30764b;
        if (zzmwVar.f30753a.isEmpty()) {
            zzmq.H().equals(zzmqVar);
        }
        this.f30849b = zzmqVar.A();
        this.f30850c = zzmqVar.B();
        zzmqVar.getClass();
        zzmqVar.getClass();
        Throwable th2 = null;
        Map mapF = zzmqVar.E() == 0 ? null : zzmqVar.F();
        if (mapF != null) {
            ImmutableSet.s(mapF.keySet());
        } else {
            ImmutableSet.v();
        }
        int iE = zzmqVar.E();
        zzmw zzmwVar2 = zzndVar.f30763a;
        char c3 = 3;
        if (iE > 0) {
            Collection<zzmi> collectionValues = zzmqVar.F().values();
            if (collectionValues == null) {
                immutableMapA = ImmutableMap.h();
            } else {
                ImmutableMap.Builder builder = new ImmutableMap.Builder();
                for (zzmi zzmiVar : collectionValues) {
                    int iO = zzmiVar.O();
                    int i3 = iO - 1;
                    if (iO == 0) {
                        throw null;
                    }
                    if (i3 == 0) {
                        builder.d(zzmiVar.A(), Long.valueOf(zzmiVar.B()));
                    } else if (i3 == 1) {
                        builder.d(zzmiVar.A(), Boolean.valueOf(zzmiVar.C()));
                    } else if (i3 == 2) {
                        builder.d(zzmiVar.A(), Double.valueOf(zzmiVar.D()));
                    } else if (i3 == 3) {
                        builder.d(zzmiVar.A(), zzmiVar.E());
                    } else {
                        if (i3 != 4) {
                            md.k("Could not serialize Flag for override: ".concat(String.valueOf(zzmiVar.A())));
                            throw null;
                        }
                        builder.d(zzmiVar.A(), zzmiVar.F().q());
                    }
                }
                immutableMapA = builder.a(false);
            }
            if (!immutableMapA.isEmpty()) {
                HashMap map = new HashMap(immutableMapA);
                ImmutableSortedSet immutableSortedSet = zzmwVar2.f30753a;
                ImmutableSortedSet.Builder builderA = ImmutableSortedSet.A();
                UnmodifiableIterator it = immutableSortedSet.iterator();
                while (it.hasNext()) {
                    zzmv zzmvVar = (zzmv) it.next();
                    Object obj = zzmvVar.f30749c;
                    long j4 = zzmvVar.f30748b;
                    Object objRemove = map.remove(obj == null ? Long.toString(j4) : obj);
                    if (objRemove == null) {
                        builderA.c(zzmvVar);
                    } else if (objRemove instanceof String) {
                        builderA.c(new zzmv(4, zzmvVar.f30748b, 0L, objRemove, zzmvVar.f30749c));
                    } else if (objRemove instanceof byte[]) {
                        builderA.c(new zzmv(5, zzmvVar.f30748b, 0L, objRemove, zzmvVar.f30749c));
                    } else if (objRemove instanceof Boolean) {
                        builderA.c(new zzmv(((Boolean) objRemove).booleanValue() ? 1 : 0, zzmvVar.f30748b, 0L, null, zzmvVar.f30749c));
                    } else if (objRemove instanceof Long) {
                        builderA.c(new zzmv(2, zzmvVar.f30748b, ((Long) objRemove).longValue(), null, zzmvVar.f30749c));
                    } else {
                        if (!(objRemove instanceof Double)) {
                            String string = zzmvVar.f30749c;
                            string = string == null ? Long.toString(j4) : string;
                            String string2 = objRemove.toString();
                            throw new IllegalStateException(tr.l(new StringBuilder(String.valueOf(string).length() + 46 + string2.length()), "Cannot serialize override for existing flag ", string, ": ", string2));
                        }
                        builderA.c(new zzmv(3, zzmvVar.f30748b, Double.doubleToRawLongBits(((Double) objRemove).doubleValue()), null, zzmvVar.f30749c));
                    }
                }
                for (String str2 : map.keySet()) {
                    Object obj2 = map.get(str2);
                    int length = str2.length();
                    if (length <= 19) {
                        if (length == 0) {
                            th = th2;
                            c2 = c3;
                        } else {
                            th = th2;
                            c2 = c3;
                            long jCharAt = str2.charAt(0) - '0';
                            if (jCharAt >= 1) {
                                if (jCharAt <= 9) {
                                    int i4 = i2;
                                    while (true) {
                                        if (i4 >= length) {
                                            j2 = 0;
                                            if (jCharAt >= 0 && jCharAt <= 2305843009213693951L) {
                                                j3 = jCharAt;
                                                break;
                                            }
                                            break;
                                        }
                                        int iCharAt = str2.charAt(i4) - '0';
                                        j2 = 0;
                                        if (!((iCharAt < 0) | (iCharAt > 9))) {
                                            jCharAt = (jCharAt * 10) + ((long) iCharAt);
                                            i4++;
                                        }
                                    }
                                }
                                if (j3 == j2) {
                                    str = str2;
                                } else {
                                    str = th;
                                }
                                if (obj2 instanceof String) {
                                    builderA.c(new zzmv(4, j3, 0L, obj2, str));
                                } else if (obj2 instanceof byte[]) {
                                    builderA.c(new zzmv(5, j3, 0L, obj2, str));
                                } else if (obj2 instanceof Boolean) {
                                    builderA.c(new zzmv(((Boolean) obj2).booleanValue() ? 1 : 0, j3, 0L, null, str));
                                } else if (obj2 instanceof Long) {
                                    builderA.c(new zzmv(2, j3, ((Long) obj2).longValue(), null, str));
                                } else {
                                    if (obj2 instanceof Double) {
                                        String strValueOf = String.valueOf(obj2);
                                        md.k(tr.l(new StringBuilder(str2.length() + 28 + strValueOf.length()), "Cannot serialize override ", str2, ": ", strValueOf));
                                        throw th;
                                    }
                                    builderA.c(new zzmv(3, j3, Double.doubleToRawLongBits(((Double) obj2).doubleValue()), null, str));
                                }
                                c3 = c2;
                                th2 = th;
                                i2 = 1;
                            }
                            j3 = j2;
                            if (j3 == j2) {
                                str = str2;
                            } else {
                                str = th;
                            }
                            if (obj2 instanceof String) {
                                builderA.c(new zzmv(4, j3, 0L, obj2, str));
                            } else if (obj2 instanceof byte[]) {
                                builderA.c(new zzmv(5, j3, 0L, obj2, str));
                            } else if (obj2 instanceof Boolean) {
                                builderA.c(new zzmv(((Boolean) obj2).booleanValue() ? 1 : 0, j3, 0L, null, str));
                            } else if (obj2 instanceof Long) {
                                builderA.c(new zzmv(2, j3, ((Long) obj2).longValue(), null, str));
                            } else {
                                if (obj2 instanceof Double) {
                                    String strValueOf2 = String.valueOf(obj2);
                                    md.k(tr.l(new StringBuilder(str2.length() + 28 + strValueOf2.length()), "Cannot serialize override ", str2, ": ", strValueOf2));
                                    throw th;
                                }
                                builderA.c(new zzmv(3, j3, Double.doubleToRawLongBits(((Double) obj2).doubleValue()), null, str));
                            }
                            c3 = c2;
                            th2 = th;
                            i2 = 1;
                        }
                        j2 = 0;
                        j3 = 0;
                        if (j3 == j2) {
                            str = str2;
                        } else {
                            str = th;
                        }
                        if (obj2 instanceof String) {
                            builderA.c(new zzmv(4, j3, 0L, obj2, str));
                        } else if (obj2 instanceof byte[]) {
                            builderA.c(new zzmv(5, j3, 0L, obj2, str));
                        } else if (obj2 instanceof Boolean) {
                            builderA.c(new zzmv(((Boolean) obj2).booleanValue() ? 1 : 0, j3, 0L, null, str));
                        } else if (obj2 instanceof Long) {
                            builderA.c(new zzmv(2, j3, ((Long) obj2).longValue(), null, str));
                        } else {
                            if (obj2 instanceof Double) {
                                String strValueOf3 = String.valueOf(obj2);
                                md.k(tr.l(new StringBuilder(str2.length() + 28 + strValueOf3.length()), "Cannot serialize override ", str2, ": ", strValueOf3));
                                throw th;
                            }
                            builderA.c(new zzmv(3, j3, Double.doubleToRawLongBits(((Double) obj2).doubleValue()), null, str));
                        }
                        c3 = c2;
                        th2 = th;
                        i2 = 1;
                    } else {
                        th = th2;
                        c2 = c3;
                    }
                    j2 = 0;
                    j3 = j2;
                    if (j3 == j2) {
                        str = str2;
                    } else {
                        str = th;
                    }
                    if (obj2 instanceof String) {
                        builderA.c(new zzmv(4, j3, 0L, obj2, str));
                    } else if (obj2 instanceof byte[]) {
                        builderA.c(new zzmv(5, j3, 0L, obj2, str));
                    } else if (obj2 instanceof Boolean) {
                        builderA.c(new zzmv(((Boolean) obj2).booleanValue() ? 1 : 0, j3, 0L, null, str));
                    } else if (obj2 instanceof Long) {
                        builderA.c(new zzmv(2, j3, ((Long) obj2).longValue(), null, str));
                    } else {
                        if (obj2 instanceof Double) {
                            String strValueOf4 = String.valueOf(obj2);
                            md.k(tr.l(new StringBuilder(str2.length() + 28 + strValueOf4.length()), "Cannot serialize override ", str2, ": ", strValueOf4));
                            throw th;
                        }
                        builderA.c(new zzmv(3, j3, Double.doubleToRawLongBits(((Double) obj2).doubleValue()), null, str));
                    }
                    c3 = c2;
                    th2 = th;
                    i2 = 1;
                }
                zzmwVar2 = new zzmw(builderA.l());
            }
        }
        ImmutableMap.Builder builderA2 = ImmutableMap.a(zzmwVar2.f30753a.size() + 3);
        UnmodifiableIterator it2 = zzmwVar2.f30753a.iterator();
        while (it2.hasNext()) {
            zzmv zzmvVar2 = (zzmv) it2.next();
            String string3 = zzmvVar2.f30749c;
            if (string3 == null) {
                string3 = Long.toString(zzmvVar2.f30748b);
            }
            builderA2.d(string3, zzmvVar2.a());
        }
        builderA2.d("__phenotype_server_token", zzmqVar.C());
        builderA2.d("__phenotype_snapshot_token", zzmqVar.A());
        builderA2.d("__phenotype_configuration_version", Long.valueOf(zzmqVar.D()));
        this.d = builderA2.a(false);
        this.f30851e = zzqrVar;
    }

    public zzqs(zzqv zzqvVar, zzqr zzqrVar) {
        zzqv.H().equals(zzqvVar);
        this.f30849b = zzqvVar.A();
        this.f30850c = zzqvVar.B();
        ImmutableSet.v();
        ImmutableMap.Builder builderA = ImmutableMap.a(zzqvVar.F() + 3);
        for (zzqx zzqxVar : zzqvVar.E()) {
            int iN = zzqxVar.N();
            int i2 = iN - 1;
            if (iN == 0) {
                throw null;
            }
            if (i2 == 0) {
                builderA.d(zzqxVar.A(), Long.valueOf(zzqxVar.B()));
            } else if (i2 == 1) {
                builderA.d(zzqxVar.A(), Boolean.valueOf(zzqxVar.C()));
            } else if (i2 == 2) {
                builderA.d(zzqxVar.A(), Double.valueOf(zzqxVar.D()));
            } else if (i2 == 3) {
                builderA.d(zzqxVar.A(), zzqxVar.E());
            } else if (i2 == 4) {
                builderA.d(zzqxVar.A(), zzqxVar.F().q());
            }
        }
        builderA.d("__phenotype_server_token", zzqvVar.C());
        builderA.d("__phenotype_snapshot_token", zzqvVar.A());
        builderA.d("__phenotype_configuration_version", Long.valueOf(zzqvVar.D()));
        this.d = builderA.a(false);
        this.f30851e = zzqrVar;
    }
}
