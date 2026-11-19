package com.networkbench.agent.impl.data.c;

import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.NBSAppAgent;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.crash.j;
import com.networkbench.agent.impl.harvest.type.HarvestableObject;
import com.networkbench.agent.impl.session.SpanFormat;
import com.networkbench.agent.impl.util.p;
import com.networkbench.agent.impl.util.r;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonParser;
import com.networkbench.com.google.gson.JsonPrimitive;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.z81;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class c extends HarvestableObject implements SpanFormat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List<HarvestableObject> f36844a = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private j f36845b;

    private JsonArray d() {
        JsonArray jsonArray = new JsonArray();
        Iterator<HarvestableObject> it = this.f36844a.iterator();
        while (it.hasNext()) {
            jsonArray.add(it.next().asJson());
        }
        return jsonArray;
    }

    private JsonArray e() throws com.networkbench.agent.impl.util.d {
        f();
        List<String> listA = this.f36845b.a();
        if (listA.size() > 0) {
            return a(listA);
        }
        throw new com.networkbench.agent.impl.util.d("not exist store crash task");
    }

    private void f() {
        if (this.f36845b == null) {
            this.f36845b = new j(r.u().J(), com.networkbench.agent.impl.plugin.f.b.f38049a);
        }
    }

    public JsonArray a(List<String> list) {
        JsonArray jsonArray = new JsonArray();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            try {
                String strC = p.c(it.next());
                r.A.a("crashTask in sp:" + strC);
                jsonArray.addAll(new JsonParser().parse(strC).getAsJsonArray());
            } catch (Throwable th) {
                r.A.a("error when get crash task in sp:", th);
            }
        }
        return jsonArray;
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableObject, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public synchronized JsonObject asJsonObject() {
        JsonObject jsonObject;
        jsonObject = new JsonObject();
        jsonObject.add("type", new JsonPrimitive("taskData"));
        jsonObject.add("dev", NBSAgent.getDeviceData().asJsonArray());
        jsonObject.add(DbParams.KEY_DATA, d());
        g.e("NBSPluginDatas : " + jsonObject.toString());
        return jsonObject;
    }

    public void b() {
        f();
        this.f36845b.d();
    }

    public int c() {
        return this.f36844a.size();
    }

    @Override // com.networkbench.agent.impl.session.SpanFormat
    public boolean checkData() {
        return this.f36844a.size() == 0;
    }

    @Override // com.networkbench.agent.impl.session.SpanFormat
    public String formatInfo() {
        if (checkData()) {
            return "";
        }
        return "task" + asJsonObject().toString() + "\n";
    }

    @Override // com.networkbench.agent.impl.session.SpanFormat
    public void reset() {
        this.f36844a.clear();
    }

    public String a() throws com.networkbench.agent.impl.util.d {
        JsonObject jsonObject = new JsonObject();
        jsonObject.add("type", new JsonPrimitive("taskData"));
        jsonObject.add("dev", NBSAgent.getDeviceData().asJsonArray());
        jsonObject.add(DbParams.KEY_DATA, e());
        return "task" + jsonObject.toString() + "\n";
    }

    public void a(b bVar) {
        this.f36844a.add(bVar);
        try {
            if (r.u().aC()) {
                NBSAppAgent.debugLog(bVar.asJsonObject().toString(), "TingyunSDK_task");
            }
        } catch (Throwable th) {
            z81.k(new StringBuilder("addPlugindata debuglog has error :"), th);
        }
    }
}
