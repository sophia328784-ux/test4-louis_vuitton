package com.networkbench.agent.impl.asyncaction;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class n {
    public static long a(List<o> list) {
        long j2 = 0;
        try {
            Collections.sort(list, new Comparator<o>() { // from class: com.networkbench.agent.impl.asyncaction.n.1
                @Override // java.util.Comparator
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public int compare(o oVar, o oVar2) {
                    return Long.compare(oVar.f36430a, oVar2.f36430a);
                }
            });
            if (list.isEmpty()) {
                return 0L;
            }
            long j3 = list.get(0).f36430a;
            long jMax = list.get(0).f36431b;
            for (int i2 = 1; i2 < list.size(); i2++) {
                o oVar = list.get(i2);
                long j4 = oVar.f36430a;
                if (j4 > jMax) {
                    j2 = (jMax - j3) + j2;
                    j3 = j4;
                }
                jMax = Math.max(jMax, oVar.f36431b);
            }
            return (jMax - j3) + j2;
        } catch (Throwable unused) {
            return j2;
        }
    }

    public static long b(List<o> list) {
        long j2;
        try {
            if (!list.isEmpty()) {
                Collections.sort(list, new Comparator<o>() { // from class: com.networkbench.agent.impl.asyncaction.n.2
                    @Override // java.util.Comparator
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public int compare(o oVar, o oVar2) {
                        return Long.compare(oVar.f36430a, oVar2.f36430a);
                    }
                });
                ArrayList<o> arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                for (o oVar : list) {
                    if (oVar.b()) {
                        arrayList2.add(oVar);
                    } else {
                        arrayList.add(oVar);
                    }
                }
                long jMax = 0;
                long j3 = 0;
                for (o oVar2 : arrayList) {
                    if (jMax == 0) {
                        jMax = oVar2.f36431b;
                        j3 = (jMax - oVar2.f36430a) + j3;
                    } else {
                        long j4 = oVar2.f36430a;
                        long j5 = oVar2.f36431b;
                        if (j4 >= jMax) {
                            j2 = j5 - j4;
                        } else {
                            if (j5 > jMax) {
                                j2 = j5 - jMax;
                            }
                            jMax = Math.max(jMax, oVar2.f36431b);
                        }
                        j3 += j2;
                        jMax = Math.max(jMax, oVar2.f36431b);
                    }
                }
                Iterator it = arrayList2.iterator();
                long jMax2 = 0;
                while (it.hasNext()) {
                    jMax2 = Math.max(jMax2, ((o) it.next()).f36431b);
                }
                return jMax2 > jMax ? (jMax2 - jMax) + j3 : j3;
            }
        } catch (Throwable unused) {
        }
        return 0L;
    }
}
