package com.networkbench.agent.impl.performance.a.c;

import com.batch.android.v0.l;
import com.networkbench.agent.impl.c.j;
import com.networkbench.agent.impl.harvest.type.HarvestableObject;
import com.networkbench.agent.impl.session.screen.NBSBitmapBeansControl;
import com.networkbench.agent.impl.util.r;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.nbslens.nbsnativecrashlib.m;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class b extends HarvestableObject {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f37687a = System.currentTimeMillis();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private double f37688b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private double f37689c;
    private double d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private double f37690e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f37691f;
    private String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f37692h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f37693i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f37694j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private List<g> f37695k;

    public b(double d, double d2, double d3, double d4, List<g> list, String str) {
        this.f37688b = d;
        this.f37689c = d2;
        this.d = d3;
        this.f37690e = d4;
        this.f37694j = str;
        this.f37695k = new ArrayList(list);
    }

    private JsonArray c() {
        JsonArray jsonArray = new JsonArray();
        jsonArray.add(a("avg_process_cpu_usage_speed", String.valueOf(Double.parseDouble(String.format("%.4f", Double.valueOf(this.f37688b))))));
        jsonArray.add(a("max_process_cpu_usage_speed", String.valueOf(Double.parseDouble(String.format("%.4f", Double.valueOf(this.f37689c))))));
        jsonArray.add(a("avg_process_cpu_usage_rate", String.valueOf(Double.parseDouble(String.format("%.4f", Double.valueOf(this.d))))));
        jsonArray.add(a("max_process_cpu_usage_rate", String.valueOf(Double.parseDouble(String.format("%.4f", Double.valueOf(this.f37690e))))));
        jsonArray.add(a("page.name", this.f37694j));
        jsonArray.add(a("mem_total", this.f37691f));
        jsonArray.add(a("mem_used", this.g));
        jsonArray.add(a("mem_free", this.f37692h));
        jsonArray.add(a("sp_free", this.f37693i));
        jsonArray.add(a("bname", r.u().d()));
        jsonArray.add(a("session_id", NBSBitmapBeansControl.getInstance().getSessionId()));
        jsonArray.add(a("stacks", d()));
        return jsonArray;
    }

    private String d() {
        JsonArray jsonArray = new JsonArray();
        for (g gVar : this.f37695k) {
            if (gVar != null) {
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty(com.batch.android.s.b.a.f24015b, Integer.valueOf(gVar.f37716a));
                jsonObject.addProperty("name", gVar.f37717b);
                jsonObject.addProperty(m.C, gVar.f37720f);
                jsonObject.addProperty("nice", Integer.valueOf(gVar.f37721h));
                jsonObject.addProperty("weight", Double.valueOf(gVar.f37719e));
                jsonObject.addProperty("cpu_usage_rate", Double.valueOf(Double.parseDouble(String.format("%.4f", Double.valueOf(gVar.d)))));
                jsonArray.add(jsonObject);
            }
        }
        return jsonArray.toString();
    }

    public boolean a() {
        List<g> list = this.f37695k;
        return list != null && !list.isEmpty() && this.f37688b > 0.0d && this.f37689c > 0.0d;
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableObject, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonObject asJsonObject() {
        return b();
    }

    public JsonObject b() {
        JsonObject jsonObject = new JsonObject();
        try {
            jsonObject.addProperty("timestamp", r.u().f(this.f37687a) + "");
            jsonObject.addProperty("name", "cpu_exception");
            jsonObject.add(l.f24145h, c());
        } catch (Throwable unused) {
        }
        j.a("cpu exception data: " + jsonObject);
        return jsonObject;
    }

    public void a(String str) {
        this.f37691f = str;
    }

    private JsonObject a(String str, String str2) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("name", str);
        jsonObject.addProperty("value", str2);
        return jsonObject;
    }

    public void b(String str) {
        this.g = str;
    }

    public void d(String str) {
        this.f37692h = str;
    }

    public void c(String str) {
        this.f37693i = str;
    }
}
