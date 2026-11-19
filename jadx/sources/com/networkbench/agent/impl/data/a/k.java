package com.networkbench.agent.impl.data.a;

import android.text.TextUtils;
import com.networkbench.agent.impl.harvest.Harvest;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class k {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final com.networkbench.agent.impl.c.e f36816b = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static ConcurrentHashMap<String, j> f36815a = new ConcurrentHashMap<>();

    public static synchronized void a() {
        try {
            ArrayList arrayList = new ArrayList();
            for (String str : f36815a.keySet()) {
                j jVar = f36815a.get(str);
                if (jVar != null && jVar.d() <= 18000) {
                    f36816b.a("action add to nbs event actions");
                    if (System.currentTimeMillis() - jVar.f36810f.b() >= 5) {
                        Harvest.getInstance().getHarvestData().getNbsEventActions().a(jVar);
                        arrayList.add(str);
                    }
                }
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                f36815a.remove((String) it.next());
            }
        } catch (Throwable unused) {
        }
    }

    public static synchronized j b(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            if (!str.contains("#")) {
                str = "custom#".concat(str);
            }
            j jVar = f36815a.get(str);
            if (jVar == null) {
                return null;
            }
            jVar.a(System.currentTimeMillis());
            com.networkbench.agent.impl.k.c.b(jVar);
            return jVar;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static synchronized void a(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            if (!str.contains("#")) {
                str = "custom#".concat(str);
            }
            if (f36815a.get(str) != null) {
                b(str);
            }
            if (f36815a.size() >= Harvest.getInstance().getConfiguration().getUserActions()) {
                f36816b.a("eventActions size is too large, please check the code");
                return;
            }
            j jVar = new j(System.currentTimeMillis(), -1, str);
            com.networkbench.agent.impl.k.c.a(jVar);
            f36815a.put(str, jVar);
        } catch (Throwable unused) {
        }
    }

    public static synchronized void a(com.networkbench.agent.impl.d.b.a aVar) {
        aVar.f36708c = Thread.currentThread().getId();
        aVar.d = Thread.currentThread().getName();
        Iterator<j> it = f36815a.values().iterator();
        while (it.hasNext()) {
            it.next().f36810f.a(aVar);
        }
    }
}
