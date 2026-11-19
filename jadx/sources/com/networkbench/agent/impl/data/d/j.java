package com.networkbench.agent.impl.data.d;

import com.networkbench.agent.impl.data.type.p;
import com.networkbench.agent.impl.harvest.type.HarvestableArray;
import com.networkbench.agent.impl.instrumentation.NBSTraceUnit;
import com.networkbench.agent.impl.instrumentation.NBSUnit;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.r;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;

/* JADX INFO: loaded from: classes2.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f36887a = 8000;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f36888b = "pageLoading";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f36889c = "OverLapView";
    private static Map<String, ConcurrentLinkedQueue<h>> d = new ConcurrentHashMap();

    public static void a(Map<UUID, NBSUnit> map, NBSUnit nBSUnit) {
        Object[] array = map.values().toArray();
        ArrayList arrayList = new ArrayList();
        for (Object obj : array) {
            if (((NBSTraceUnit) obj).callType == 1) {
                arrayList.add(obj);
            }
        }
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            NBSUnit nBSUnit2 = null;
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                if (((NBSUnit) arrayList.get(i2)).entryTimestamp > ((NBSUnit) arrayList.get(i3)).entryTimestamp && ((NBSUnit) arrayList.get(i2)).entryTimestamp < ((NBSUnit) arrayList.get(i3)).exitTimestamp && (nBSUnit2 == null || nBSUnit2.entryTimestamp < ((NBSUnit) arrayList.get(i3)).entryTimestamp)) {
                    nBSUnit2 = (NBSUnit) arrayList.get(i3);
                }
            }
            if (nBSUnit2 != null) {
                ((NBSUnit) arrayList.get(i2)).parentUUID = nBSUnit2.myUUID;
            }
            if ((((NBSUnit) arrayList.get(i2)).parentUUID == null || nBSUnit2 == null) && !((NBSUnit) arrayList.get(i2)).equals(nBSUnit)) {
                ((NBSUnit) arrayList.get(i2)).parentUUID = nBSUnit.myUUID;
            }
        }
    }

    public static String b() {
        ConcurrentLinkedQueue<h> concurrentLinkedQueue;
        h hVarC;
        try {
            com.networkbench.agent.impl.c.e eVar = r.A;
            eVar.a("11111 pageDataMap size:" + d.size());
            if (h.f36878a == null || d.size() <= 0 || (concurrentLinkedQueue = d.get(h.f36878a.a())) == null || concurrentLinkedQueue.size() <= 0 || (hVarC = c(concurrentLinkedQueue)) == null) {
                return "";
            }
            String strC = c(hVarC);
            eVar.a("getFirstVCForVisual firstVC:" + strC);
            return strC;
        } catch (Throwable th) {
            r.A.a("error getFirstVCForVisual", th);
            return "";
        }
    }

    public static List<HarvestableArray> c() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Map.Entry<String, ConcurrentLinkedQueue<h>> entry : d.entrySet()) {
            ConcurrentLinkedQueue<h> value = entry.getValue();
            if (b(value)) {
                arrayList2.add(entry.getKey().toString());
                h hVarA = a(value);
                Logger.debug(f36889c, "overlap page is null");
                if (hVarA != null && !hVarA.o() && !hVarA.p()) {
                    hVarA.r();
                    if (!hVarA.q()) {
                        arrayList.add(hVarA);
                    }
                }
            }
        }
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            d.remove((String) it.next());
        }
        return arrayList;
    }

    private static List<p> d(ConcurrentLinkedQueue<h> concurrentLinkedQueue) {
        ArrayList arrayList = new ArrayList();
        if (concurrentLinkedQueue.size() > 0) {
            Iterator<h> it = concurrentLinkedQueue.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().e());
            }
        }
        return arrayList;
    }

    private static long e(ConcurrentLinkedQueue<h> concurrentLinkedQueue) {
        long jM = 0;
        if (concurrentLinkedQueue.size() > 0) {
            for (h hVar : concurrentLinkedQueue) {
                if (jM < hVar.m()) {
                    jM = hVar.m();
                }
            }
        }
        return jM;
    }

    private static long f(ConcurrentLinkedQueue<h> concurrentLinkedQueue) {
        long jN = 0;
        if (concurrentLinkedQueue.size() > 0) {
            for (h hVar : concurrentLinkedQueue) {
                if (jN < hVar.n()) {
                    jN = hVar.n();
                }
            }
        }
        return jN;
    }

    private static boolean b(ConcurrentLinkedQueue<h> concurrentLinkedQueue) {
        for (h hVar : concurrentLinkedQueue) {
            if (System.currentTimeMillis() - hVar.m() >= 0 && System.currentTimeMillis() - hVar.m() < f36887a) {
                return false;
            }
        }
        return true;
    }

    private static void b(h hVar) {
        hVar.j();
    }

    private static String c(h hVar) {
        return hVar.k();
    }

    private static h c(ConcurrentLinkedQueue<h> concurrentLinkedQueue) {
        h hVar = null;
        if (concurrentLinkedQueue.size() > 0) {
            for (h hVar2 : concurrentLinkedQueue) {
                if (hVar == null) {
                    hVar = hVar2;
                }
                if (hVar.l() > hVar2.l()) {
                    hVar = hVar2;
                }
            }
        }
        return hVar;
    }

    public static void a(h hVar, String str) {
        if (hVar == null || str == null) {
            return;
        }
        if (a(str)) {
            ConcurrentLinkedQueue<h> concurrentLinkedQueue = d.get(str);
            b.a().a(hVar.h(), new c(concurrentLinkedQueue.peek().g()));
            concurrentLinkedQueue.add(hVar);
            return;
        }
        d.put(str, a(hVar));
        c cVarG = hVar.g();
        cVarG.a(hVar);
        cVarG.d = true;
        b.a().a(cVarG);
        b.a().a(hVar.h(), b.a().c());
    }

    public static boolean a(String str) {
        return d.containsKey(str);
    }

    private static ConcurrentLinkedQueue<h> a(h hVar) {
        ConcurrentLinkedQueue<h> concurrentLinkedQueue = new ConcurrentLinkedQueue<>();
        concurrentLinkedQueue.add(hVar);
        return concurrentLinkedQueue;
    }

    public static h a(ConcurrentLinkedQueue<h> concurrentLinkedQueue) {
        h hVarC = c(concurrentLinkedQueue);
        if (hVarC == null) {
            return null;
        }
        b(hVarC);
        long jL = hVarC.l();
        long jE = e(concurrentLinkedQueue);
        long jF = f(concurrentLinkedQueue);
        if (jF == 0) {
            jF = jE;
        }
        return new h(3, jE - jL, jF - jL, hVarC.g(), a(d(concurrentLinkedQueue), jL, jF, jE), hVarC.d());
    }

    private static p a(List<p> list, long j2, long j3, long j4) {
        p pVarA = a(j2, j3, j4);
        for (p pVar : list) {
            a(pVar, pVarA);
            if (pVar.x()) {
                pVarA.a(true);
                if (pVar.z() != com.networkbench.agent.impl.i.e.PAGE_STATUS_TIMEOUT) {
                    pVarA.a(pVar.z());
                }
            }
        }
        a(pVarA.a(), pVarA.b());
        return pVarA;
    }

    private static NBSTraceUnit a(long j2) {
        NBSTraceUnit nBSTraceUnit = new NBSTraceUnit(j2);
        nBSTraceUnit.metricName = f36888b;
        nBSTraceUnit.setUnitThreadWithUIThread();
        nBSTraceUnit.segmentType = 0;
        nBSTraceUnit.callType = 1;
        nBSTraceUnit.nodeType = 2;
        return nBSTraceUnit;
    }

    private static p a(long j2, long j3, long j4) {
        p pVar = new p(a(j2));
        pVar.c(j4);
        pVar.e(j3);
        return pVar;
    }

    private static void a(p pVar, p pVar2) {
        if (pVar.a() == null) {
            return;
        }
        for (Map.Entry<UUID, NBSUnit> entry : pVar.a().entrySet()) {
            if (entry.getValue().metricName != null && !entry.getValue().metricName.equals(f36888b)) {
                if (entry.getValue().parentUUID == pVar.b().myUUID) {
                    entry.getValue().parentUUID = pVar2.b().myUUID;
                }
                if (!pVar2.a().containsKey(entry.getKey())) {
                    pVar2.a().put(entry.getKey(), entry.getValue());
                }
            }
        }
        pVar.b().myUUID = pVar2.b().myUUID;
        pVar2.s().putAll(pVar.s());
    }

    public static void a() {
        d.clear();
    }
}
