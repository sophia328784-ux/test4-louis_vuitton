package com.networkbench.agent.impl.data.a;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.agent.impl.util.v;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;
import java.util.List;
import java.util.Vector;

/* JADX INFO: loaded from: classes2.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public List<com.networkbench.agent.impl.d.b.a> f36781a = new Vector();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f36782b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f36783c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f36784e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f36785f;
    private long g;

    public f(long j2) {
        this.f36785f = j2;
    }

    private long d(com.networkbench.agent.impl.d.b.a aVar) {
        return aVar.b() + ((long) aVar.c().C());
    }

    private JsonArray e() {
        JsonArray jsonArray = new JsonArray();
        for (com.networkbench.agent.impl.d.b.a aVar : this.f36781a) {
            if (aVar.b() >= this.f36785f && aVar.b() <= this.g) {
                jsonArray.add(c(aVar));
            }
        }
        return jsonArray;
    }

    public JsonArray a(long j2, String str) {
        JsonArray jsonArray = new JsonArray();
        jsonArray.add(new JsonPrimitive((Number) Long.valueOf(j2)));
        if (str == null) {
            str = "";
        }
        jsonArray.add(new JsonPrimitive(str));
        return jsonArray;
    }

    public JsonObject b(com.networkbench.agent.impl.d.b.a aVar) {
        JsonObject jsonObject = new JsonObject();
        if (aVar == null) {
            return jsonObject;
        }
        if (aVar.c().s() > 600 || aVar.c().s() == -1 || aVar.c().u() == -1) {
            this.f36782b++;
            this.f36783c++;
        } else if (v.d(aVar.c().s())) {
            this.d++;
            this.f36783c++;
        }
        this.f36784e++;
        jsonObject.add("offset", new JsonPrimitive((Number) Long.valueOf(aVar.c().B() - this.f36785f)));
        jsonObject.add(ConfigurationName.DOWNLOAD_PLUGIN_URL, new JsonPrimitive(aVar.f()));
        jsonObject.add("param", aVar.c().v() == null ? new JsonPrimitive("") : new JsonPrimitive(aVar.c().v()));
        jsonObject.add("method", new JsonPrimitive((Number) Integer.valueOf(aVar.c().q().ordinal())));
        jsonObject.add("hc", new JsonPrimitive((Number) Integer.valueOf(aVar.c().s())));
        jsonObject.add("ec", new JsonPrimitive((Number) Integer.valueOf(aVar.c().u())));
        jsonObject.add("du", new JsonPrimitive((Number) Integer.valueOf(aVar.c().C())));
        jsonObject.add("dns", new JsonPrimitive((Number) Integer.valueOf(aVar.c().k())));
        jsonObject.add("tcp", new JsonPrimitive((Number) Integer.valueOf(aVar.c().m())));
        jsonObject.add("ssl", new JsonPrimitive((Number) Integer.valueOf(aVar.c().n())));
        jsonObject.add("fp", new JsonPrimitive((Number) Integer.valueOf(aVar.c().o())));
        jsonObject.add("rp", new JsonPrimitive((Number) Integer.valueOf(aVar.c().b())));
        jsonObject.add("lq", new JsonPrimitive((Number) Integer.valueOf(aVar.c().c())));
        jsonObject.add("bs", new JsonPrimitive((Number) Long.valueOf(aVar.c().w())));
        jsonObject.add("br", new JsonPrimitive((Number) Long.valueOf(aVar.c().x())));
        jsonObject.add("tx", aVar.c().y() == null ? null : new JsonPrimitive(aVar.c().y()));
        jsonObject.add("txn", aVar.c().z() != null ? new JsonPrimitive(aVar.c().z()) : null);
        return jsonObject;
    }

    public JsonObject c() {
        JsonObject jsonObject = new JsonObject();
        jsonObject.add("reqs", d());
        return jsonObject;
    }

    private JsonObject c(com.networkbench.agent.impl.d.b.a aVar) {
        return b(aVar);
    }

    private JsonArray d() {
        return e();
    }

    private long c(long j2) {
        return j2 == -1 ? j2 : j2 - this.f36785f;
    }

    public long a() {
        return this.f36785f;
    }

    public void a(com.networkbench.agent.impl.d.b.a aVar) {
        if (this.f36781a.size() >= 100) {
            return;
        }
        this.f36781a.add(aVar);
    }

    public void a(long j2) {
        this.g = j2;
    }

    public long b() {
        return this.g;
    }

    private long b(long j2) {
        return j2 == -1 ? j2 : j2 - this.f36785f;
    }
}
