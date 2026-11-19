package com.networkbench.agent.impl.plugin;

import android.text.TextUtils;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.agent.impl.harvest.type.HarvestableType;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class i extends h {
    private static com.networkbench.agent.impl.plugin.f.j d = new com.networkbench.agent.impl.plugin.f.j();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f38127a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f38128b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    JSONObject f38129c;

    public i(com.networkbench.agent.impl.plugin.f.i iVar, com.networkbench.agent.impl.data.c.d dVar) {
        super(HarvestableType.OBJECT, iVar, dVar);
        this.f38125j = new f(dVar.d, (String) this.q.e().get(ConfigurationName.PLUGIN_HOSTNAME_CONTEXT));
        a(iVar.e());
    }

    @Override // com.networkbench.agent.impl.plugin.h
    public void a() {
        try {
            if (TextUtils.isEmpty(this.f38128b)) {
                this.l = false;
            } else {
                this.l = true;
            }
        } catch (Throwable th) {
            try {
                h.f38121f.f("RequestHeadPlugin error: " + th.getMessage());
            } finally {
                this.q.a(this.f38124i.f36846a);
            }
        }
    }

    @Override // com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonObject asJsonObject() {
        if (TextUtils.isEmpty(this.f38128b)) {
            this.l = false;
        }
        JsonObject jsonObject = new JsonObject();
        String str = this.f38127a;
        String str2 = this.f38128b;
        if (str2 == null) {
            str2 = "";
        }
        jsonObject.add(str, new JsonPrimitive(str2));
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
    public void a(Map<String, Object> map) {
        try {
            JSONObject jSONObject = this.f38124i.d;
            this.f38129c = jSONObject;
            this.f38127a = jSONObject.optString(ConfigurationName.KEY, "");
            HashMap map2 = (HashMap) map.get(ConfigurationName.REQUEST_HEADERS);
            if (map2 != null) {
                this.f38128b = (String) map2.get(String.valueOf(this.f38127a).toLowerCase());
            }
        } catch (Throwable unused) {
            this.l = false;
        }
    }
}
