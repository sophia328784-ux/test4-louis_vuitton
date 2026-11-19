package com.networkbench.agent.impl.crash.oom;

import com.networkbench.agent.impl.harvest.type.HarvestableObject;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.com.google.gson.Gson;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonObject;

/* JADX INFO: loaded from: classes2.dex */
public class b extends HarvestableObject {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f36673a = "OOMData";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private e f36674b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private OOMJsonParser f36675c;

    public b(boolean z) {
        try {
            this.f36674b = new e(z);
        } catch (Throwable unused) {
        }
    }

    private JsonArray b() {
        OOMJsonParser oOMJsonParser = this.f36675c;
        return oOMJsonParser != null ? oOMJsonParser.getLeakReferenceChain() : new JsonArray();
    }

    private JsonArray c() {
        OOMJsonParser oOMJsonParser = this.f36675c;
        return oOMJsonParser != null ? oOMJsonParser.getBigObjectReference() : new JsonArray();
    }

    public void a(String str) {
        try {
            Logger.debug(f36673a, "configOOMHprofReport begin");
            OOMJsonParser oOMJsonParser = (OOMJsonParser) new Gson().fromJson(str, OOMJsonParser.class);
            this.f36675c = oOMJsonParser;
            oOMJsonParser.setSearchReference();
            if (this.f36675c.runningInfo == null) {
                Logger.debug(f36673a, "runningInfo == null 222");
            }
        } catch (Throwable th) {
            Logger.error(f36673a, "oomJsonParser init error", th);
        }
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableObject, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonObject asJsonObject() {
        return a(a());
    }

    public b() {
    }

    private JsonObject a() {
        e eVar = this.f36674b;
        return eVar != null ? eVar.asJsonObject() : new JsonObject();
    }

    public JsonObject a(JsonObject jsonObject) {
        JsonObject jsonObject2 = new JsonObject();
        jsonObject2.add("memory", jsonObject);
        jsonObject2.add("refs", b());
        jsonObject2.add("bigobject", c());
        return jsonObject2;
    }
}
