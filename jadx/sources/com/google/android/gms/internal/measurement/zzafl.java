package com.google.android.gms.internal.measurement;

import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
final class zzafl {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzafl f30448c = new zzafl();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConcurrentHashMap f30450b = new ConcurrentHashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzaet f30449a = new zzaet();

    public final zzafp a(Class cls) {
        zzafp zzafgVar;
        ConcurrentHashMap concurrentHashMap = this.f30450b;
        Object obj = concurrentHashMap.get(cls);
        if (obj != null) {
            return (zzafp) obj;
        }
        zzaet zzaetVar = this.f30449a;
        zzaetVar.getClass();
        zzagb zzagbVar = zzafq.f30457a;
        if (!zzadu.class.isAssignableFrom(cls)) {
            int i2 = zzacf.f30358a;
        }
        zzaez zzaezVarB = zzaetVar.f30425a.b(cls);
        if (zzaezVarB.d0()) {
            int i3 = zzacf.f30358a;
            zzagb zzagbVar2 = zzafq.f30457a;
            zzadh zzadhVar = zzadi.f30400a;
            zzafgVar = new zzafg(zzagbVar2, zzaezVarB.e0());
        } else {
            int i4 = zzacf.f30358a;
            int i5 = zzafi.f30447a;
            int i6 = zzaep.f30419a;
            zzagb zzagbVar3 = zzafq.f30457a;
            zzadh zzadhVar2 = zzaezVarB.f0() + (-1) != 1 ? zzadi.f30400a : null;
            int i7 = zzaey.f30432a;
            zzafgVar = zzaff.z(zzaezVarB, zzagbVar3, zzadhVar2);
        }
        zzafp zzafpVar = (zzafp) concurrentHashMap.putIfAbsent(cls, zzafgVar);
        return zzafpVar != null ? zzafpVar : zzafgVar;
    }
}
