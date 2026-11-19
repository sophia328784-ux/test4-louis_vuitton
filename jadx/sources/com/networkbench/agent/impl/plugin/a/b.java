package com.networkbench.agent.impl.plugin.a;

import com.networkbench.agent.impl.data.c.d;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.agent.impl.harvest.type.HarvestableType;
import com.networkbench.agent.impl.plugin.f.i;
import com.networkbench.agent.impl.plugin.f.j;
import com.networkbench.agent.impl.plugin.h;
import com.networkbench.agent.impl.util.r;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonObject;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class b extends h {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static j f37927e = new j();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    JSONObject f37928a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f37929b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private JSONArray f37930c;
    private List<a> d;

    public b(i iVar, d dVar) {
        super(HarvestableType.OBJECT, iVar, dVar);
        this.d = new ArrayList();
        a(iVar.e());
    }

    @Override // com.networkbench.agent.impl.plugin.h
    public void a() {
        try {
            if (r.u().al()) {
                this.d = c.a().a(this.f37930c, this.f37929b);
            }
            List<a> list = this.d;
            if (list != null && list.size() > 0) {
                this.l = true;
            }
        } catch (Throwable th) {
            try {
                h.f38121f.a("CellInfoPlugin error: ", th);
            } finally {
                this.q.a(this.f38124i.f36846a);
            }
        }
    }

    @Override // com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonObject asJsonObject() {
        JsonArray jsonArray = new JsonArray();
        Iterator<a> it = this.d.iterator();
        while (it.hasNext()) {
            jsonArray.add(it.next().asJson());
        }
        JsonObject jsonObject = new JsonObject();
        jsonObject.add("cellInfos", jsonArray);
        JsonObject jsonObject2 = new JsonObject();
        jsonObject2.add("result", jsonObject);
        return jsonObject2;
    }

    @Override // com.networkbench.agent.impl.plugin.h
    public boolean b() {
        if (!this.o) {
            return true;
        }
        if (!f37927e.a(System.currentTimeMillis())) {
            return false;
        }
        f37927e.b(System.currentTimeMillis());
        return true;
    }

    @Override // com.networkbench.agent.impl.plugin.h
    public boolean f() {
        return true;
    }

    @Override // com.networkbench.agent.impl.plugin.h
    public void a(Map<String, Object> map) {
        try {
            JSONObject jSONObject = this.f38124i.d;
            this.f37928a = jSONObject;
            if (jSONObject == null) {
                this.l = false;
            } else {
                this.f37930c = jSONObject.optJSONArray("type");
                this.f37929b = this.f37928a.optInt(ConfigurationName.CELLINFO_LIMIT);
            }
        } catch (Throwable unused) {
        }
    }
}
