package com.networkbench.agent.impl.performance;

import com.networkbench.agent.impl.harvest.type.HarvestableObject;
import com.networkbench.agent.impl.performance.coulometry.a.b.f;
import com.networkbench.agent.impl.session.SpanFormat;
import com.networkbench.agent.impl.util.r;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;

/* JADX INFO: loaded from: classes2.dex */
public class b extends HarvestableObject implements SpanFormat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f37740a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f37741b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private f f37742c = new f();
    private com.networkbench.agent.impl.performance.coulometry.a.b.c d = new com.networkbench.agent.impl.performance.coulometry.a.b.c();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f37743e;

    public b(String str, int i2, String str2) {
        this.f37743e = "";
        this.f37740a = str;
        this.f37741b = i2;
        this.f37743e = str2;
    }

    public String a() {
        return this.f37740a;
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableObject, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonObject asJsonObject() {
        JsonObject jsonObject = new JsonObject();
        jsonObject.add("type", new JsonPrimitive(this.f37740a));
        jsonObject.add("interval", new JsonPrimitive((Number) Long.valueOf(r.u().r())));
        jsonObject.add("resource", this.f37742c.asJson());
        jsonObject.add("metrics", this.d.asJson());
        return jsonObject;
    }

    public int b() {
        return this.f37741b;
    }

    public f c() {
        return this.f37742c;
    }

    @Override // com.networkbench.agent.impl.session.SpanFormat
    public boolean checkData() {
        return this.d.b() == 0;
    }

    public com.networkbench.agent.impl.performance.coulometry.a.b.c d() {
        return this.d;
    }

    @Override // com.networkbench.agent.impl.session.SpanFormat
    public String formatInfo() {
        if (checkData()) {
            return "";
        }
        this.f37742c.a();
        return this.f37743e + asJsonObject().toString() + "\n";
    }

    @Override // com.networkbench.agent.impl.session.SpanFormat
    public void reset() {
        this.d.a();
        this.f37742c.b();
    }

    public void a(String str) {
        this.f37740a = str;
    }

    public void a(int i2) {
        this.f37741b = i2;
    }

    public void a(f fVar) {
        this.f37742c = fVar;
    }

    public void a(com.networkbench.agent.impl.performance.coulometry.a.b.c cVar) {
        this.d = cVar;
    }
}
