package com.networkbench.agent.impl.plugin;

import com.networkbench.agent.impl.harvest.type.HarvestableType;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class k extends h {
    private static com.networkbench.agent.impl.plugin.f.j d = new com.networkbench.agent.impl.plugin.f.j();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f38133a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    JsonArray f38134b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    JSONObject f38135c;

    public k(com.networkbench.agent.impl.plugin.f.i iVar, com.networkbench.agent.impl.data.c.d dVar) {
        super(HarvestableType.OBJECT, iVar, dVar);
        a(iVar.e());
    }

    @Override // com.networkbench.agent.impl.plugin.h
    public void a(Map<String, Object> map) {
        this.f38135c = this.f38124i.d;
    }

    @Override // com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonObject asJsonObject() {
        new JsonObject().add(com.batch.android.s.b.a.f24018f, new JsonPrimitive((Number) Integer.valueOf(this.f38133a)));
        JsonObject jsonObject = new JsonObject();
        jsonObject.add("logs", this.f38134b);
        JsonObject jsonObject2 = new JsonObject();
        jsonObject2.add("result", jsonObject);
        return jsonObject2;
    }

    @Override // com.networkbench.agent.impl.plugin.h
    public boolean b() {
        if (!this.o) {
            return true;
        }
        if (!d.a(System.currentTimeMillis())) {
            return false;
        }
        d.b(System.currentTimeMillis());
        return true;
    }

    @Override // com.networkbench.agent.impl.plugin.h
    public boolean f() {
        return true;
    }
}
