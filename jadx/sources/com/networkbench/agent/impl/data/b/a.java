package com.networkbench.agent.impl.data.b;

import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.harvest.type.HarvestableArray;
import com.networkbench.agent.impl.harvest.type.HarvestableObject;
import com.networkbench.agent.impl.session.SpanFormat;
import com.networkbench.agent.impl.util.r;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class a extends HarvestableObject implements SpanFormat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final List<HarvestableArray> f36836a = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f36837b = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected String f36838c = "";
    protected String d = "";

    private String e() {
        return this.f36837b;
    }

    public JsonArray a() {
        JsonArray jsonArray = new JsonArray();
        Iterator<HarvestableArray> it = this.f36836a.iterator();
        while (it.hasNext()) {
            jsonArray.add(it.next().asJson());
        }
        return jsonArray;
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableObject, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonObject asJsonObject() {
        JsonObject jsonObject = new JsonObject();
        jsonObject.add("type", new JsonPrimitive(e()));
        jsonObject.add("interval", new JsonPrimitive((Number) Long.valueOf(r.u().r())));
        jsonObject.add("timestamp", new JsonPrimitive((Number) Long.valueOf(r.u().g(System.currentTimeMillis()))));
        jsonObject.add("dev", NBSAgent.getDeviceData().asJson());
        jsonObject.add(this.f36838c, a());
        return jsonObject;
    }

    public int b() {
        return this.f36836a.size();
    }

    public List<HarvestableArray> c() {
        return this.f36836a;
    }

    @Override // com.networkbench.agent.impl.session.SpanFormat
    public boolean checkData() {
        return this.f36836a.size() == 0;
    }

    public String d() {
        if (checkData()) {
            return "";
        }
        return this.d + asJsonObject().toString() + "\n";
    }

    @Override // com.networkbench.agent.impl.session.SpanFormat
    public String formatInfo() {
        if (checkData()) {
            return "";
        }
        return this.d + asJsonObject().toString() + "\n";
    }

    @Override // com.networkbench.agent.impl.session.SpanFormat
    public void reset() {
        Harvest.getInstance().getHarvestData().getPageDatas().c().removeAll(this.f36836a);
        this.f36836a.clear();
    }

    public void b(HarvestableArray harvestableArray) {
        this.f36836a.remove(harvestableArray);
    }

    public void a(HarvestableArray harvestableArray) {
        try {
            this.f36836a.add(harvestableArray);
        } catch (Exception e2) {
            g.j("NBSEventActions add() has an error : " + e2);
        }
    }
}
