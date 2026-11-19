package com.networkbench.agent.impl.performance.a.c;

import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.NBSAppAgent;
import com.networkbench.agent.impl.session.SpanFormat;
import com.networkbench.agent.impl.util.r;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.pq0;
import defpackage.z81;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class a implements SpanFormat {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f37684c;
    private Map<String, String> d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<b> f37685e = pq0.v();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List<b> f37686f = pq0.v();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f37682a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f37683b = "cpuEvents";

    public a(int i2) {
        this.f37684c = i2;
        HashMap map = new HashMap();
        this.d = map;
        map.put("build_id", NBSAgent.getBuildId());
    }

    private JsonArray d() {
        JsonArray jsonArray = new JsonArray();
        for (Map.Entry<String, String> entry : this.d.entrySet()) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.add("name", new JsonPrimitive((Object) entry.getKey()));
            jsonObject.add("value", new JsonPrimitive((Object) entry.getValue()));
            jsonArray.add(jsonObject);
        }
        return jsonArray;
    }

    public JsonObject a() {
        JsonObject jsonObject = new JsonObject();
        jsonObject.add("type", new JsonPrimitive(this.f37683b));
        jsonObject.add("interval", new JsonPrimitive((Number) Long.valueOf(r.u().r())));
        jsonObject.add("resource", d());
        jsonObject.add(DbParams.TABLE_EVENTS, b());
        return jsonObject;
    }

    public JsonArray b() {
        JsonArray jsonArray = new JsonArray();
        Iterator<b> it = this.f37685e.iterator();
        while (it.hasNext()) {
            jsonArray.add(it.next().asJsonObject());
        }
        return jsonArray;
    }

    public synchronized void c() {
        this.f37685e.addAll(this.f37686f);
        this.f37686f.clear();
    }

    @Override // com.networkbench.agent.impl.session.SpanFormat
    public boolean checkData() {
        return this.f37685e.isEmpty();
    }

    @Override // com.networkbench.agent.impl.session.SpanFormat
    public String formatInfo() {
        try {
            if (checkData()) {
                return "";
            }
            this.f37682a = true;
            return "otelEvent" + a().toString() + "\n";
        } finally {
            this.f37682a = false;
        }
    }

    @Override // com.networkbench.agent.impl.session.SpanFormat
    public void reset() {
        synchronized (this.f37685e) {
            this.f37685e.clear();
        }
    }

    public void a(b bVar) {
        if (this.f37682a) {
            this.f37686f.add(bVar);
        } else {
            this.f37685e.add(bVar);
        }
        try {
            if (r.u().aC()) {
                NBSAppAgent.debugLog(bVar.asJsonObject().toString(), "TingyunSDK_customError");
            }
        } catch (Throwable th) {
            z81.k(new StringBuilder("addErrorInfo debuglog has error :"), th);
        }
    }
}
