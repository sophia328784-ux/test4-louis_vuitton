package com.networkbench.agent.impl.data.a;

import com.networkbench.agent.impl.data.type.SlowStartState;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.agent.impl.util.r;
import com.networkbench.agent.impl.util.v;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;
import java.util.List;
import java.util.Vector;

/* JADX INFO: loaded from: classes2.dex */
public class o {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f36827b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f36828c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f36829e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    long f36830f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f36831h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f36832i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public List<com.networkbench.agent.impl.d.b.a> f36826a = new Vector();
    public JsonArray g = new JsonArray();

    public o(long j2, long j3, String str) {
        this.f36831h = j2;
        this.f36832i = j3;
    }

    private JsonArray c(com.networkbench.agent.impl.d.b.a aVar) {
        JsonArray jsonArray = new JsonArray();
        jsonArray.add(new JsonPrimitive((Number) Long.valueOf(b(aVar.b()))));
        jsonArray.add(new JsonPrimitive((Number) Long.valueOf(b(aVar.b()))));
        jsonArray.add(new JsonPrimitive((Number) Long.valueOf(c(d(aVar)))));
        jsonArray.add(new JsonPrimitive(aVar.d));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(SlowStartState.SegmentType.NETWORK.getValue())));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(SlowStartState.CallType.ASYNC.getValue())));
        jsonArray.add(a(aVar.f36708c, aVar.d));
        jsonArray.add(b(aVar));
        jsonArray.add(new JsonArray());
        jsonArray.add(new JsonPrimitive((Number) 0));
        return jsonArray;
    }

    private long d(com.networkbench.agent.impl.d.b.a aVar) {
        return aVar.c().e() == 0 ? aVar.b() + ((long) aVar.c().C()) : aVar.c().e();
    }

    public JsonArray a(m mVar) {
        JsonArray jsonArrayC;
        JsonArray jsonArray = new JsonArray();
        if (mVar != null && (jsonArrayC = mVar.c(mVar)) != null) {
            jsonArray.add(jsonArrayC);
        }
        for (com.networkbench.agent.impl.d.b.a aVar : this.f36826a) {
            if (aVar.b() >= this.f36831h && aVar.b() <= this.f36832i) {
                jsonArray.add(c(aVar));
            }
        }
        return jsonArray;
    }

    public JsonObject b(com.networkbench.agent.impl.d.b.a aVar) {
        JsonObject jsonObject = new JsonObject();
        if (aVar == null) {
            return jsonObject;
        }
        if (v.a(aVar.c().s(), aVar.f())) {
            aVar.c().f(200);
            aVar.a(0);
        }
        if (aVar.c().s() > 600 || aVar.c().s() == -1 || aVar.c().u() == -1) {
            this.f36827b++;
            this.f36828c++;
        } else if (v.d(aVar.c().s())) {
            this.d++;
            this.f36828c++;
        }
        this.f36829e++;
        jsonObject.add("host", new JsonPrimitive(aVar.c().l()));
        jsonObject.add(ConfigurationName.DOWNLOAD_PLUGIN_URL, new JsonPrimitive(aVar.f()));
        jsonObject.add("httpStatus", new JsonPrimitive((Number) Integer.valueOf(aVar.c().s())));
        jsonObject.add("errorCode", new JsonPrimitive((Number) Integer.valueOf(aVar.c().u())));
        jsonObject.add("bytesSent", new JsonPrimitive((Number) Long.valueOf(aVar.c().w())));
        jsonObject.add("bytesReceived", new JsonPrimitive((Number) Long.valueOf(aVar.c().x())));
        jsonObject.add("dns", new JsonPrimitive((Number) Integer.valueOf(aVar.c().k())));
        jsonObject.add("conn", new JsonPrimitive((Number) Integer.valueOf(aVar.c().m())));
        jsonObject.add("fp", new JsonPrimitive((Number) Integer.valueOf(aVar.c().o())));
        jsonObject.add("ssl", new JsonPrimitive((Number) Integer.valueOf(aVar.c().n())));
        JsonPrimitive jsonPrimitive = null;
        jsonObject.add("txData", aVar.c().y() == null ? null : new JsonPrimitive(aVar.c().y()));
        try {
            JsonObject jsonObject2 = new JsonObject();
            jsonObject2.add("offset", new JsonPrimitive((Number) Long.valueOf(aVar.c().B() - this.f36831h)));
            jsonObject2.add(ConfigurationName.DOWNLOAD_PLUGIN_URL, new JsonPrimitive(aVar.f() == null ? "" : aVar.f()));
            jsonObject2.add("param", aVar.c().v() == null ? new JsonPrimitive("") : new JsonPrimitive(aVar.c().v()));
            jsonObject2.add("method", new JsonPrimitive((Number) Integer.valueOf(aVar.c().q().ordinal())));
            jsonObject2.add("hc", new JsonPrimitive((Number) Integer.valueOf(aVar.c().s())));
            jsonObject2.add("ec", new JsonPrimitive((Number) Integer.valueOf(aVar.c().u())));
            jsonObject2.add("du", new JsonPrimitive((Number) Integer.valueOf(aVar.c().C())));
            jsonObject2.add("dns", new JsonPrimitive((Number) Integer.valueOf(aVar.c().k())));
            jsonObject2.add("tcp", new JsonPrimitive((Number) Integer.valueOf(aVar.c().m())));
            jsonObject2.add("ssl", new JsonPrimitive((Number) Integer.valueOf(aVar.c().n())));
            jsonObject2.add("fp", new JsonPrimitive((Number) Integer.valueOf(aVar.c().o())));
            jsonObject2.add("rp", new JsonPrimitive((Number) Integer.valueOf(aVar.c().b())));
            jsonObject2.add("lq", new JsonPrimitive((Number) Integer.valueOf(aVar.c().c())));
            jsonObject2.add("bs", new JsonPrimitive((Number) Long.valueOf(aVar.c().w())));
            jsonObject2.add("br", new JsonPrimitive((Number) Long.valueOf(aVar.c().x())));
            jsonObject2.add("tx", aVar.c().y() == null ? null : new JsonPrimitive(aVar.c().y()));
            jsonObject.add("txDataNew", aVar.c().z() == null ? null : new JsonPrimitive(aVar.c().z()));
            if (aVar.c().z() != null) {
                jsonPrimitive = new JsonPrimitive(aVar.c().z());
            }
            jsonObject2.add("txn", jsonPrimitive);
            this.g.add(jsonObject2);
            return jsonObject;
        } catch (Throwable th) {
            r.A.a("completeSegmentParams has an error ", th);
            return jsonObject;
        }
    }

    public long e() {
        return this.f36832i - this.f36831h;
    }

    public long d() {
        long jC = c() - this.f36831h;
        return jC < e() ? e() : jC;
    }

    public void a(long j2) {
        this.f36832i = j2;
    }

    public void a(com.networkbench.agent.impl.d.b.a aVar) {
        if (this.f36826a.size() >= 100) {
            return;
        }
        this.f36826a.add(aVar);
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

    public void a() {
        this.f36829e = 0;
        this.f36828c = 0;
        this.d = 0;
        this.f36827b = 0;
        this.g = new JsonArray();
    }

    public long c() {
        for (com.networkbench.agent.impl.d.b.a aVar : this.f36826a) {
            if (aVar.b() >= this.f36831h && aVar.b() <= this.f36832i) {
                long jD = d(aVar);
                if (jD > this.f36830f) {
                    this.f36830f = jD;
                }
            }
        }
        r.A.a("networkExitTimeStamp: " + this.f36830f);
        return this.f36830f;
    }

    private long c(long j2) {
        return j2 == -1 ? j2 : j2 - this.f36831h;
    }

    public long b() {
        return this.f36832i;
    }

    private long b(long j2) {
        return j2 == -1 ? j2 : j2 - this.f36831h;
    }
}
