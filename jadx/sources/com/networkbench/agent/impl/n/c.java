package com.networkbench.agent.impl.n;

import android.content.Context;
import android.text.TextUtils;
import com.networkbench.agent.impl.NBSAppAgent;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.agent.impl.harvest.HarvestConnection;
import com.networkbench.agent.impl.harvest.HarvestData;
import com.networkbench.agent.impl.harvest.a.r;
import com.networkbench.agent.impl.session.SpanFormat;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.p;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonObject;
import defpackage.fc;
import defpackage.z81;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class c extends d implements SpanFormat {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Collection<h> f37540h = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f37541i = false;

    public c(Context context) {
        this.f37543b = context;
        this.d = "NBSEventAction";
        this.f37545e = 7;
        this.g = r.USER_ACTION;
    }

    public static void a(h hVar) {
        if (hVar != null) {
            h hVar2 = new h(hVar);
            try {
                if (com.networkbench.agent.impl.util.r.u().aC()) {
                    NBSAppAgent.debugLog(hVar2.asJsonArray().toString(), "TingyunSDK_userBehavior");
                }
            } catch (Throwable th) {
                z81.k(new StringBuilder("addSessionInfo debuglog has error :"), th);
            }
            f37540h.add(hVar2);
        }
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableObject, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonObject asJsonObject() {
        JsonObject jsonObject = new JsonObject();
        jsonObject.add("custEvents", b.b().asJsonArray());
        JsonArray jsonArray = new JsonArray();
        for (h hVar : f37540h) {
            if (hVar != null) {
                jsonArray.add(hVar.asJsonArray());
            }
        }
        jsonObject.add("sessions", jsonArray);
        return jsonObject;
    }

    @Override // com.networkbench.agent.impl.n.d
    public void b() {
        d.f37542a.a("timer to handle user actions");
        d();
    }

    @Override // com.networkbench.agent.impl.n.d
    public boolean c() {
        return f37540h.isEmpty() && b.b().f();
    }

    @Override // com.networkbench.agent.impl.session.SpanFormat
    public boolean checkData() {
        return f37540h.size() == 0 && b.b().a().size() == 0;
    }

    @Override // com.networkbench.agent.impl.n.d
    public void d() {
        b.b().d();
        e();
        String info = formatInfo();
        if (ak.r(info)) {
            return;
        }
        HarvestData.customEvents.add(info);
    }

    public void e() {
        com.networkbench.agent.impl.m.a aVar = new com.networkbench.agent.impl.m.a(com.networkbench.agent.impl.util.r.u().J(), ConfigurationName.USERACTION_DATA_STORE_PATH);
        Map<String, ?> mapA = aVar.a();
        if (mapA.size() <= 0) {
            return;
        }
        Iterator<String> it = mapA.keySet().iterator();
        while (it.hasNext()) {
            String strC = p.c((String) mapA.get(it.next()));
            if (!TextUtils.isEmpty(strC) && strC.length() >= 5) {
                HarvestData.customEvents.add(b(strC));
            }
        }
        aVar.b();
    }

    @Override // com.networkbench.agent.impl.session.SpanFormat
    public String formatInfo() {
        if (checkData()) {
            return "";
        }
        JsonObject jsonObjectAsJsonObject = asJsonObject();
        b.b().e();
        f37540h.clear();
        return "userBehavior" + jsonObjectAsJsonObject.toString() + "\n";
    }

    @Override // com.networkbench.agent.impl.n.d, com.networkbench.agent.impl.session.SpanFormat
    public void reset() {
        b.b().e();
        f37540h.clear();
    }

    private String b(String str) {
        return fc.h("userBehavior", str, "\n");
    }

    public static Collection<h> a() {
        return f37540h;
    }

    @Override // com.networkbench.agent.impl.n.d
    public void a(HarvestConnection harvestConnection) {
        b.b().d();
        e();
        String info = formatInfo();
        if (ak.r(info)) {
            return;
        }
        d.f37542a.a("stop  timer to add data!");
        HarvestData.customEvents.add(info);
    }
}
