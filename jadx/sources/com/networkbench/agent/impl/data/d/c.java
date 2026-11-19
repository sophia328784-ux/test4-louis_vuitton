package com.networkbench.agent.impl.data.d;

import com.networkbench.agent.impl.harvest.type.HarvestableObject;
import com.networkbench.agent.impl.util.ab;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.com.google.gson.JsonObject;
import defpackage.n00;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class c extends HarvestableObject {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected d f36862a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected d f36863b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected String f36864c;
    protected boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected long f36865e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected String f36866f;
    private String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f36867h;

    public c(String str, String str2, String str3, int i2) {
        this.d = false;
        this.f36865e = System.currentTimeMillis();
        d dVar = new d(str, str2, str3, i2);
        this.f36862a = dVar;
        this.f36863b = dVar;
        this.g = new UUID(ak.a().nextLong(), ak.a().nextLong()).toString().replace("-", "");
        this.f36864c = "";
        com.networkbench.agent.impl.c.g.A("FeaturesData create : " + str + " " + str2);
    }

    public void a(String str, long j2) {
        if (j2 < this.f36865e || this.d) {
            return;
        }
        this.f36864c = str;
        this.f36867h = new UUID(ak.a().nextLong(), ak.a().nextLong()).toString().replace("-", "");
        this.f36866f = new UUID(ak.a().nextLong(), ak.a().nextLong()).toString().replace("-", "");
        this.f36863b = this.f36862a;
        this.d = true;
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableObject, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonObject asJsonObject() {
        JsonObject jsonObject = new JsonObject();
        if (this.d) {
            jsonObject.addProperty("function", this.f36862a.f36868a);
            jsonObject.addProperty(com.batch.android.s.b.a.f24015b, this.f36862a.f36869b);
            jsonObject.addProperty("text", this.f36862a.f36870c);
            if (!ab.c(this.f36862a.d)) {
                jsonObject.addProperty("col", this.f36862a.d);
            }
        } else {
            jsonObject.addProperty("function", this.f36863b.f36868a);
            jsonObject.addProperty(com.batch.android.s.b.a.f24015b, this.f36863b.f36869b);
            jsonObject.addProperty("text", this.f36863b.f36870c);
            if (!ab.c(this.f36863b.d)) {
                jsonObject.addProperty("col", this.f36863b.d);
            }
        }
        jsonObject.addProperty("firstVc", com.networkbench.agent.impl.data.a.b.f36766a.a(this.f36864c));
        return jsonObject;
    }

    public String b() {
        return this.f36862a.f36868a;
    }

    public String c() {
        String str = this.f36867h;
        return str == null ? "" : str;
    }

    public String d() {
        return this.f36864c;
    }

    public String e() {
        return asJsonObject().toString();
    }

    public String f() {
        return this.f36866f;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("FeaturesData{function='");
        sb.append(this.f36862a.toString());
        sb.append("', firstVc='");
        sb.append(this.f36864c);
        sb.append("', nextFunction='");
        sb.append(this.f36863b.toString());
        sb.append("', viewId='");
        return n00.r(this.f36866f, "'} ", sb);
    }

    public c(c cVar) {
        this.d = false;
        if (cVar != null) {
            this.f36863b = cVar.f36863b;
            this.f36862a = cVar.f36862a;
            this.f36864c = cVar.f36864c;
            this.g = cVar.g;
            this.f36867h = cVar.f36867h;
            this.d = cVar.d;
            this.f36866f = cVar.f36866f;
        }
    }

    public void a(d dVar) {
        this.f36862a = dVar;
    }

    public String a() {
        String str = this.g;
        return str == null ? "" : str;
    }

    public void a(String str) {
        if (ab.c(str)) {
            return;
        }
        this.f36864c = str;
        this.f36867h = new UUID(ak.a().nextLong(), ak.a().nextLong()).toString().replace("-", "");
    }

    public void a(d dVar, boolean z) {
        this.d = false;
        this.g = new UUID(ak.a().nextLong(), ak.a().nextLong()).toString().replace("-", "");
        this.f36862a = dVar;
        this.f36865e = System.currentTimeMillis();
    }

    public void a(h hVar) {
        if (hVar == null || this.f36864c.equals(hVar.h())) {
            return;
        }
        this.f36864c = hVar.h();
        this.f36866f = new UUID(ak.a().nextLong(), ak.a().nextLong()).toString().replace("-", "");
        hVar.g().f36866f = this.f36866f;
        this.f36863b = this.f36862a;
        hVar.d().f37422b = hVar.g().f36866f;
    }
}
