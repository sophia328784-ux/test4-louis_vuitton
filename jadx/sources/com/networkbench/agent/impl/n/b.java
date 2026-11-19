package com.networkbench.agent.impl.n;

import android.text.TextUtils;
import com.networkbench.agent.impl.NBSAppAgent;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.agent.impl.harvest.type.HarvestableArray;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.p;
import com.networkbench.agent.impl.util.r;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonParser;
import java.security.SecureRandom;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class b extends HarvestableArray {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f37534a = "event_data_store";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static b f37535b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Map<Long, com.networkbench.agent.impl.n.a> f37536c;
    private Map<String, String> d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.networkbench.agent.impl.c.e f37537e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.networkbench.agent.impl.m.d f37538f;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static b f37539a = new b();

        private a() {
        }
    }

    private b() {
        this.f37536c = new ConcurrentHashMap();
        this.d = new ConcurrentHashMap();
        this.f37537e = com.networkbench.agent.impl.c.f.a();
        g();
    }

    public static b b() {
        return a.f37539a;
    }

    private void g() {
        if (this.f37538f != null || r.u().J() == null) {
            return;
        }
        this.f37538f = new com.networkbench.agent.impl.m.d(r.u().J(), f37534a);
    }

    public void a(String str, String str2, Map<String, Object> map) {
        try {
            if (com.networkbench.agent.impl.harvest.b.b.a().i()) {
                com.networkbench.agent.impl.c.g.p(" onEvent  : " + str);
                if (!ak.l(str)) {
                    this.f37537e.f("The eventId is invalid!" + str);
                    return;
                }
                if (map != null) {
                    for (String str3 : map.keySet()) {
                        if (!ak.l(str3)) {
                            this.f37537e.f("The eventMap key " + str3 + " is invalid!");
                            return;
                        }
                    }
                    Iterator<Object> it = map.values().iterator();
                    while (it.hasNext()) {
                        if (!ak.b(it.next())) {
                            this.f37537e.f("The eventMap value is invalid!");
                            return;
                        }
                    }
                }
                com.networkbench.agent.impl.n.a aVar = new com.networkbench.agent.impl.n.a(str, str2, map);
                if (this.f37538f != null) {
                    this.f37538f.a(aVar.asJson().toString(), new SecureRandom().nextLong() + System.currentTimeMillis());
                    c();
                } else {
                    g();
                    long jNextLong = new SecureRandom().nextLong() + System.currentTimeMillis();
                    if (this.f37536c.size() <= ConfigurationName.MAX_ERROR_COUNT) {
                        this.f37536c.put(Long.valueOf(jNextLong), aVar);
                    }
                }
                try {
                    if (r.u().aC()) {
                        NBSAppAgent.debugLog(aVar.toJsonString(), "TingyunSDK_userBehavior");
                    }
                } catch (Throwable th) {
                    com.networkbench.agent.impl.c.g.p("addCustomEvent debuglog has error :" + th.getMessage());
                }
            }
        } catch (Throwable unused) {
            com.networkbench.agent.impl.harvest.b.a.a().a(com.networkbench.agent.impl.harvest.b.a.f37291c, 0, true);
        }
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableArray, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonArray asJsonArray() {
        JsonArray jsonArray = new JsonArray();
        Map<String, String> map = this.d;
        if (map != null && map.size() > 0) {
            Iterator<Map.Entry<String, String>> it = this.d.entrySet().iterator();
            while (it.hasNext()) {
                jsonArray.add(new JsonParser().parse(it.next().getValue()).getAsJsonArray());
            }
        }
        return jsonArray;
    }

    public void c() {
        for (Map.Entry<Long, com.networkbench.agent.impl.n.a> entry : this.f37536c.entrySet()) {
            com.networkbench.agent.impl.n.a value = entry.getValue();
            this.f37538f.a(value.asJson().toString(), entry.getKey().longValue());
        }
    }

    public void d() {
        com.networkbench.agent.impl.m.d dVar = this.f37538f;
        if (dVar == null) {
            this.f37537e.e("error pluginSaveProcess == null, please check");
            return;
        }
        Map<String, ?> mapA = dVar.a();
        this.f37537e.a("NBSCustomEventCount  harvestToUpload :" + mapA.size());
        if (mapA.size() > 0) {
            for (Map.Entry<String, ?> entry : mapA.entrySet()) {
                String str = (String) entry.getValue();
                String key = entry.getKey();
                if (!TextUtils.isEmpty(str)) {
                    if (this.d.size() >= 100) {
                        break;
                    } else {
                        this.d.put(p.c(key), p.c(str));
                    }
                }
            }
            if (mapA.size() <= 100) {
                this.f37538f.b();
            }
        }
    }

    public void e() {
        Map<String, String> map;
        if (this.f37538f == null || (map = this.d) == null || map.size() <= 0) {
            return;
        }
        Iterator<Map.Entry<String, String>> it = this.d.entrySet().iterator();
        while (it.hasNext()) {
            this.f37538f.a(it.next().getKey());
        }
        this.d.clear();
    }

    public boolean f() {
        Map<String, ?> mapA;
        com.networkbench.agent.impl.m.d dVar = this.f37538f;
        return dVar == null || (mapA = dVar.a()) == null || mapA.size() <= 0;
    }

    public Map<String, String> a() {
        return this.d;
    }
}
