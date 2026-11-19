package com.networkbench.agent.impl.data.a;

import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.harvest.ScreenNameManager;
import com.networkbench.agent.impl.util.r;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final com.networkbench.agent.impl.c.e f36780c = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static ConcurrentHashMap<String, d> f36778a = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static List<d> f36779b = new CopyOnWriteArrayList();

    public static synchronized void a(String str) {
        if (f36778a.get(str) != null) {
            d dVar = f36778a.get(str);
            if (!dVar.f36772e) {
                return;
            } else {
                f36778a.remove(dVar);
            }
        }
        if (f36778a.size() >= Harvest.getInstance().getConfiguration().getUserActions()) {
            f36780c.a("eventActions size is too large, please check the code");
            return;
        }
        d dVar2 = new d(str, ScreenNameManager.getCurrentScreenName());
        com.networkbench.agent.impl.k.c.a(dVar2);
        f36778a.put(str, dVar2);
    }

    public static synchronized void a(com.networkbench.agent.impl.d.b.a aVar) {
        if (r.u().af()) {
            if (f36778a.isEmpty()) {
                return;
            }
            Iterator<d> it = f36778a.values().iterator();
            while (it.hasNext()) {
                it.next().f36773f.a(aVar);
            }
        }
    }

    public static synchronized void a(String str, String str2, Map<String, Object> map) {
        d dVar = f36778a.get(str);
        if (dVar != null) {
            if (System.currentTimeMillis() - dVar.c() > 60000) {
                f36780c.a("trace 超时60秒, 数据清除...");
                f36778a.remove(str);
                return;
            }
            com.networkbench.agent.impl.k.c.b(dVar);
            if (!dVar.f36772e) {
                dVar.f36773f.a(System.currentTimeMillis());
                dVar.a(map);
                dVar.a(str2);
                f36779b.add(dVar);
                dVar.f36772e = true;
            }
        }
    }

    public static synchronized void a() {
        try {
            ArrayList arrayList = new ArrayList();
            for (d dVar : f36779b) {
                if (System.currentTimeMillis() - dVar.f36773f.b() >= 5) {
                    Harvest.getInstance().getHarvestData().getNbsEventActions().a(dVar);
                    arrayList.add(dVar);
                }
            }
            a(f36778a);
            f36779b.removeAll(arrayList);
        } catch (Throwable th) {
            throw th;
        }
    }

    private static void a(ConcurrentHashMap<String, d> concurrentHashMap) {
        Iterator<Map.Entry<String, d>> it = concurrentHashMap.entrySet().iterator();
        while (it.hasNext()) {
            if (it.next().getValue().f36772e) {
                it.remove();
            }
        }
    }
}
