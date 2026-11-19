package com.networkbench.agent.impl.n;

import android.content.Context;
import android.text.TextUtils;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.harvest.HarvestConnection;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.p;
import com.networkbench.agent.impl.util.r;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;
import com.sensorsdata.analytics.android.sdk.plugin.property.beans.SAPropertyFilter;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class f extends d {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static e f37553h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static f f37554i;

    private f() {
        Context contextJ = r.u().J();
        this.f37543b = contextJ;
        if (contextJ == null) {
            return;
        }
        this.d = "NBSUserProfile";
        this.g = com.networkbench.agent.impl.harvest.a.r.USER_PROFILE;
    }

    public synchronized void a(String str, String str2, Long l, String str3, String str4, Map<String, Object> map) {
        if (this.f37543b == null) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            d.f37542a.f("add user profile error!the userId is illegal!");
            return;
        }
        if (map != null) {
            Iterator<String> it = map.keySet().iterator();
            while (it.hasNext()) {
                if (!ak.f(it.next())) {
                    d.f37542a.f("add user profile error!the user properties is illegal!");
                    return;
                }
            }
            Iterator<Object> it2 = map.values().iterator();
            while (it2.hasNext()) {
                if (!ak.b(it2.next())) {
                    d.f37542a.f("add user profile error!the user properties is illegal!");
                    return;
                }
            }
        }
        f37553h = new e(str, str2, l, str3, str4, map);
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableObject, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonObject asJsonObject() {
        JsonObject jsonObject = new JsonObject();
        if (f37553h == null) {
            return jsonObject;
        }
        jsonObject.add(com.batch.android.s.b.a.f24015b, new JsonPrimitive(f37553h.a()));
        jsonObject.add("name", new JsonPrimitive(f37553h.b()));
        jsonObject.add("signupTime", new JsonPrimitive((Number) f37553h.c()));
        jsonObject.add("province", new JsonPrimitive(f37553h.d()));
        jsonObject.add("city", new JsonPrimitive(f37553h.e()));
        jsonObject.add(SAPropertyFilter.PROPERTIES, ak.a(f37553h.f()));
        return jsonObject;
    }

    @Override // com.networkbench.agent.impl.n.d
    public void b() {
        e();
        d();
    }

    @Override // com.networkbench.agent.impl.n.d
    public boolean c() {
        return f37553h == null;
    }

    public void e() {
        com.networkbench.agent.impl.m.a aVar = new com.networkbench.agent.impl.m.a(r.u().J(), ConfigurationName.PROFILE_DATA_STORE_PATH);
        Map<String, ?> mapA = aVar.a();
        if (mapA.size() <= 0) {
            return;
        }
        com.networkbench.agent.impl.c.g.v("checkDataSp : ///////////////////");
        for (String str : mapA.keySet()) {
            String strC = p.c((String) mapA.get(str));
            if (!TextUtils.isEmpty(strC) && strC.length() >= 5) {
                com.networkbench.agent.impl.harvest.d.c response = Harvest.getInstance().getHarvestConnection().getResponse(strC, this.g);
                if (response.h()) {
                    aVar.a(p.c(str));
                } else if (response.j().s != 464 && response.j().s != -1 && response.j().s != 460 && response.j().s != 462) {
                    return;
                } else {
                    aVar.a(p.c(str));
                }
            }
        }
    }

    public void h() {
        if (f37553h != null) {
            new com.networkbench.agent.impl.m.a(r.u().J(), ConfigurationName.PROFILE_DATA_STORE_PATH).a(asJsonObject().toString(), System.currentTimeMillis());
            reset();
        }
    }

    @Override // com.networkbench.agent.impl.n.d, com.networkbench.agent.impl.session.SpanFormat
    public synchronized void reset() {
        f37553h = null;
    }

    public static f a() {
        if (f37554i == null) {
            f37554i = new f();
        }
        return f37554i;
    }

    @Override // com.networkbench.agent.impl.n.d
    public /* bridge */ /* synthetic */ void a(HarvestConnection harvestConnection) {
        super.a(harvestConnection);
    }
}
