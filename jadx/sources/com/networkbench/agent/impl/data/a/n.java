package com.networkbench.agent.impl.data.a;

import com.networkbench.agent.impl.data.type.SlowStartState;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.harvest.ScreenNameManager;
import java.security.SecureRandom;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static m f36823a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static m f36824b;
    private static final com.networkbench.agent.impl.c.e d = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static ConcurrentHashMap<Integer, m> f36825c = new ConcurrentHashMap<>();

    public static synchronized void a(SlowStartState.ListenerActionType listenerActionType, String str, boolean z, int i2, long j2, int i3) {
        if (z) {
            Harvest.addActionAndInteraction(ScreenNameManager.getCurrentScreenName(), "on" + listenerActionType.name(), str, str);
            if (Harvest.isDisabled()) {
                return;
            }
            h.f36800a = str;
            h.a(listenerActionType.name(), str, str, i2, null);
            m mVar = new m(j2, -1, str);
            if (f36825c.size() >= Harvest.getInstance().getConfiguration().getUserActions()) {
                d.a("NBSWebEventActions size is too large, please check the code");
                return;
            }
            m mVar2 = f36823a;
            if (mVar2 == null) {
                f36823a = mVar;
            } else {
                mVar2.a(mVar2, mVar);
            }
            mVar.b(f36823a.f36769a);
            f36825c.put(Integer.valueOf(i3), mVar);
            com.networkbench.agent.impl.k.c.a(mVar);
        }
    }

    public static void a(com.networkbench.agent.impl.d.b.a aVar) {
        o oVar;
        o oVar2;
        if (f36823a == null && f36824b == null) {
            return;
        }
        aVar.f36708c = Thread.currentThread().getId() + ((long) new SecureRandom().nextInt(20)) + 1;
        aVar.d = Thread.currentThread().getName() + aVar.f36708c;
        com.networkbench.agent.impl.a.a.b bVarC = aVar.c();
        m mVar = f36823a;
        bVarC.a(mVar == null ? f36824b.f36820i : mVar.f36820i);
        m mVar2 = f36823a;
        if (mVar2 != null && (oVar2 = mVar2.f36819h) != null) {
            oVar2.a(aVar);
            return;
        }
        m mVar3 = f36824b;
        if (mVar3 == null || (oVar = mVar3.f36819h) == null) {
            return;
        }
        oVar.a(aVar);
    }

    public static synchronized m a(int i2, long j2, String str, Map<String, Object> map) {
        try {
            m mVar = f36825c.get(Integer.valueOf(i2));
            if (mVar == null) {
                return null;
            }
            if (map != null && map.size() > 0) {
                mVar.g.putAll(map);
            }
            mVar.a(str);
            com.networkbench.agent.impl.k.c.b(mVar);
            return a(i2, j2);
        } catch (Throwable th) {
            throw th;
        }
    }

    public static synchronized m a(int i2, long j2) {
        try {
            m mVar = f36825c.get(Integer.valueOf(i2));
            if (mVar == null) {
                return null;
            }
            mVar.a(j2);
            m mVar2 = f36823a;
            if (mVar2 == null) {
                return null;
            }
            if (mVar.equals(mVar2)) {
                if (mVar.c() <= 18000) {
                    d.a("action add to nbs event actions");
                    Harvest.getInstance().getHarvestData().getNbsEventActions().a(mVar);
                }
                d.a("action : " + mVar.asJsonArray());
                f36823a = null;
                f36825c.clear();
            }
            h.f36800a = "";
            return mVar;
        } catch (Throwable th) {
            throw th;
        }
    }
}
