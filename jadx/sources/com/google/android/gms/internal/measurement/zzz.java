package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.Iterator;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes2.dex */
public final class zzz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TreeMap f31107a = new TreeMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TreeMap f31108b = new TreeMap();

    public final void a(zzg zzgVar, zzab zzabVar) {
        zzl zzlVar = new zzl(zzabVar);
        TreeMap treeMap = this.f31107a;
        for (Integer num : treeMap.keySet()) {
            zzaa zzaaVarClone = zzabVar.f30328b.clone();
            zzao zzaoVarC = ((zzan) treeMap.get(num)).c(zzgVar, Collections.singletonList(zzlVar));
            int iG = zzaoVarC instanceof zzah ? zzh.g(((zzah) zzaoVarC).f30493b.doubleValue()) : -1;
            if (iG == 2 || iG == -1) {
                zzabVar.f30328b = zzaaVarClone;
            }
        }
        TreeMap treeMap2 = this.f31108b;
        Iterator it = treeMap2.keySet().iterator();
        while (it.hasNext()) {
            zzao zzaoVarC2 = ((zzan) treeMap2.get((Integer) it.next())).c(zzgVar, Collections.singletonList(zzlVar));
            if (zzaoVarC2 instanceof zzah) {
                zzh.g(((zzah) zzaoVarC2).f30493b.doubleValue());
            }
        }
    }
}
