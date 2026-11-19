package com.networkbench.agent.impl.performance.b;

import com.networkbench.agent.impl.session.SpanFormat;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonElement;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class g implements SpanFormat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f37780a = "MetricsInfo";
    private static String d = "metric";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Map<String, String> f37781b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Map<String, b> f37782c = new ConcurrentHashMap();

    public g() {
        try {
            this.f37781b = com.networkbench.agent.impl.performance.c.a();
        } catch (Throwable th) {
            Logger.error(f37780a, "init metric info error", th);
        }
    }

    private void a(JsonArray jsonArray, Map<String, b> map) {
        List<a> listA;
        if (map == null || map.isEmpty()) {
            return;
        }
        for (Map.Entry<String, b> entry : map.entrySet()) {
            b value = entry.getValue();
            if (value != null && (listA = value.a()) != null && !listA.isEmpty()) {
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty("name", "fps");
                jsonObject.addProperty("unit", "frame");
                com.networkbench.agent.impl.c.g.p("MetricsInfo  labels  key : " + entry.getKey());
                JsonElement jsonElementA = a(entry.getKey());
                jsonObject.add("labels", jsonElementA);
                JsonArray jsonArray2 = new JsonArray();
                JsonObject jsonObject2 = new JsonObject();
                jsonObject2.addProperty("name", "drop_frame");
                jsonObject2.addProperty("unit", "");
                jsonObject2.add("labels", jsonElementA);
                JsonArray jsonArray3 = new JsonArray();
                for (a aVar : listA) {
                    JsonObject jsonObject3 = new JsonObject();
                    jsonObject3.addProperty("timestamp", Long.valueOf(aVar.d));
                    jsonObject3.addProperty("value", Double.valueOf(aVar.f37745b));
                    jsonArray2.add(jsonObject3);
                    JsonObject jsonObject4 = new JsonObject();
                    jsonObject4.addProperty("timestamp", Long.valueOf(aVar.d));
                    jsonObject4.addProperty("value", Double.valueOf(aVar.f37746c));
                    jsonArray3.add(jsonObject4);
                }
                jsonObject.add("metricPoints", jsonArray2);
                jsonObject2.add("metricPoints", jsonArray3);
                jsonArray.add(jsonObject);
                jsonArray.add(jsonObject2);
            }
        }
    }

    public int b() {
        return this.f37782c.size();
    }

    public JsonObject c() {
        HashMap map;
        if (b() == 0) {
            return null;
        }
        JsonObject jsonObject = new JsonObject();
        JsonArray jsonArray = new JsonArray();
        for (Map.Entry<String, String> entry : this.f37781b.entrySet()) {
            JsonObject jsonObject2 = new JsonObject();
            jsonObject2.add("name", new JsonPrimitive((Object) entry.getKey()));
            jsonObject2.add("value", new JsonPrimitive((Object) entry.getValue()));
            jsonArray.add(jsonObject2);
        }
        jsonObject.add("resource", jsonArray);
        JsonArray jsonArray2 = new JsonArray();
        synchronized (this.f37782c) {
            map = new HashMap(this.f37782c);
            a();
        }
        a(jsonArray2, map);
        jsonObject.add("metrics", jsonArray2);
        com.networkbench.agent.impl.c.g.p("MetricsInfo  metrics asJsonObject" + jsonObject.toString());
        return jsonObject;
    }

    @Override // com.networkbench.agent.impl.session.SpanFormat
    public boolean checkData() {
        return this.f37782c.isEmpty();
    }

    @Override // com.networkbench.agent.impl.session.SpanFormat
    public String formatInfo() {
        JsonObject jsonObjectC = c();
        if (jsonObjectC == null) {
            return "";
        }
        return d + jsonObjectC.toString() + "\n";
    }

    @Override // com.networkbench.agent.impl.session.SpanFormat
    public void reset() {
    }

    public void a() {
        this.f37782c.clear();
    }

    public void a(String str, a aVar) {
        b bVar = this.f37782c.get(str);
        if (bVar == null) {
            bVar = new b(str);
            this.f37782c.put(str, bVar);
        }
        bVar.a(aVar);
    }

    private JsonArray a(String str) {
        JsonArray jsonArray = new JsonArray();
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("name", "route");
        jsonObject.addProperty("value", str);
        jsonArray.add(jsonObject);
        return jsonArray;
    }
}
