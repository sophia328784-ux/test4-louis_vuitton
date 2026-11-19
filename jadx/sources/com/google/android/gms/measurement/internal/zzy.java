package com.google.android.gms.measurement.internal;

import androidx.collection.ArrayMap;
import com.google.android.gms.internal.measurement.zzahn;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class zzy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f32026a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f32027b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final com.google.android.gms.internal.measurement.zzii f32028c;
    public final BitSet d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final BitSet f32029e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayMap f32030f;
    public final ArrayMap g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ zzad f32031h;

    public /* synthetic */ zzy(zzad zzadVar, String str, com.google.android.gms.internal.measurement.zzii zziiVar, BitSet bitSet, BitSet bitSet2, ArrayMap arrayMap, ArrayMap arrayMap2) {
        this.f32031h = zzadVar;
        this.f32026a = str;
        this.d = bitSet;
        this.f32029e = bitSet2;
        this.f32030f = arrayMap;
        this.g = new ArrayMap();
        for (Integer num : arrayMap2.keySet()) {
            ArrayList arrayList = new ArrayList();
            arrayList.add((Long) arrayMap2.get(num));
            this.g.put(num, arrayList);
        }
        this.f32027b = false;
        this.f32028c = zziiVar;
    }

    public final void a(zzab zzabVar) {
        int iA = zzabVar.a();
        if (zzabVar.f31534c != null) {
            this.f32029e.set(iA, true);
        }
        Boolean bool = zzabVar.d;
        if (bool != null) {
            this.d.set(iA, bool.booleanValue());
        }
        if (zzabVar.f31535e != null) {
            Integer numValueOf = Integer.valueOf(iA);
            ArrayMap arrayMap = this.f32030f;
            Long l = (Long) arrayMap.get(numValueOf);
            long jLongValue = zzabVar.f31535e.longValue() / 1000;
            if (l == null || jLongValue > l.longValue()) {
                arrayMap.put(numValueOf, Long.valueOf(jLongValue));
            }
        }
        if (zzabVar.f31536f != null) {
            Integer numValueOf2 = Integer.valueOf(iA);
            ArrayMap arrayMap2 = this.g;
            List arrayList = (List) arrayMap2.get(numValueOf2);
            if (arrayList == null) {
                arrayList = new ArrayList();
                arrayMap2.put(numValueOf2, arrayList);
            }
            if (zzabVar.b()) {
                arrayList.clear();
            }
            zzahn.a();
            zzic zzicVar = this.f32031h.f31850a;
            zzal zzalVar = zzicVar.d;
            zzfx zzfxVar = zzfy.F0;
            String str = this.f32026a;
            if (zzalVar.r(str, zzfxVar) && zzabVar.c()) {
                arrayList.clear();
            }
            zzahn.a();
            boolean zR = zzicVar.d.r(str, zzfxVar);
            Long l2 = zzabVar.f31536f;
            if (!zR) {
                arrayList.add(Long.valueOf(l2.longValue() / 1000));
                return;
            }
            Long lValueOf = Long.valueOf(l2.longValue() / 1000);
            if (arrayList.contains(lValueOf)) {
                return;
            }
            arrayList.add(lValueOf);
        }
    }

    public final com.google.android.gms.internal.measurement.zzhg b(int i2) {
        ArrayList arrayList;
        List list;
        com.google.android.gms.internal.measurement.zzhf zzhfVarH = com.google.android.gms.internal.measurement.zzhg.H();
        zzhfVarH.l();
        ((com.google.android.gms.internal.measurement.zzhg) zzhfVarH.f30406c).I(i2);
        zzhfVarH.l();
        ((com.google.android.gms.internal.measurement.zzhg) zzhfVarH.f30406c).L(this.f32027b);
        com.google.android.gms.internal.measurement.zzii zziiVar = this.f32028c;
        if (zziiVar != null) {
            zzhfVarH.l();
            ((com.google.android.gms.internal.measurement.zzhg) zzhfVarH.f30406c).K(zziiVar);
        }
        com.google.android.gms.internal.measurement.zzih zzihVarI = com.google.android.gms.internal.measurement.zzii.I();
        ArrayList arrayListM = zzpk.M(this.d);
        zzihVarI.l();
        ((com.google.android.gms.internal.measurement.zzii) zzihVarI.f30406c).M(arrayListM);
        ArrayList arrayListM2 = zzpk.M(this.f32029e);
        zzihVarI.l();
        ((com.google.android.gms.internal.measurement.zzii) zzihVarI.f30406c).K(arrayListM2);
        ArrayMap arrayMap = this.f32030f;
        if (arrayMap == null) {
            arrayList = null;
        } else {
            ArrayList arrayList2 = new ArrayList(arrayMap.d);
            for (Integer num : arrayMap.keySet()) {
                int iIntValue = num.intValue();
                Long l = (Long) arrayMap.get(num);
                if (l != null) {
                    com.google.android.gms.internal.measurement.zzhp zzhpVarE = com.google.android.gms.internal.measurement.zzhq.E();
                    zzhpVarE.l();
                    ((com.google.android.gms.internal.measurement.zzhq) zzhpVarE.f30406c).F(iIntValue);
                    long jLongValue = l.longValue();
                    zzhpVarE.l();
                    ((com.google.android.gms.internal.measurement.zzhq) zzhpVarE.f30406c).G(jLongValue);
                    arrayList2.add((com.google.android.gms.internal.measurement.zzhq) zzhpVarE.v());
                }
            }
            arrayList = arrayList2;
        }
        if (arrayList != null) {
            zzihVarI.l();
            ((com.google.android.gms.internal.measurement.zzii) zzihVarI.f30406c).O(arrayList);
        }
        ArrayMap arrayMap2 = this.g;
        if (arrayMap2 == null) {
            list = Collections.EMPTY_LIST;
        } else {
            ArrayList arrayList3 = new ArrayList(arrayMap2.d);
            for (Integer num2 : arrayMap2.keySet()) {
                com.google.android.gms.internal.measurement.zzij zzijVarF = com.google.android.gms.internal.measurement.zzik.F();
                int iIntValue2 = num2.intValue();
                zzijVarF.l();
                ((com.google.android.gms.internal.measurement.zzik) zzijVarF.f30406c).G(iIntValue2);
                List list2 = (List) arrayMap2.get(num2);
                if (list2 != null) {
                    Collections.sort(list2);
                    zzijVarF.l();
                    ((com.google.android.gms.internal.measurement.zzik) zzijVarF.f30406c).H(list2);
                }
                arrayList3.add((com.google.android.gms.internal.measurement.zzik) zzijVarF.v());
            }
            list = arrayList3;
        }
        zzihVarI.l();
        ((com.google.android.gms.internal.measurement.zzii) zzihVarI.f30406c).Q(list);
        zzhfVarH.l();
        ((com.google.android.gms.internal.measurement.zzhg) zzhfVarH.f30406c).J((com.google.android.gms.internal.measurement.zzii) zzihVarI.v());
        return (com.google.android.gms.internal.measurement.zzhg) zzhfVarH.v();
    }

    public /* synthetic */ zzy(zzad zzadVar, String str) {
        this.f32031h = zzadVar;
        this.f32026a = str;
        this.f32027b = true;
        this.d = new BitSet();
        this.f32029e = new BitSet();
        this.f32030f = new ArrayMap();
        this.g = new ArrayMap();
    }
}
