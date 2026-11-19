package com.networkbench.agent.impl.data.a;

import android.text.TextUtils;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.r;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;
import defpackage.pq0;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class j extends c {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public o f36810f;
    public String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    long f36811h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f36813j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f36814k;
    private int l;
    private int m;
    private int n;
    private String q;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Map<String, Object> f36809e = new ConcurrentHashMap();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f36812i = "";
    private int o = 0;
    private int p = 0;

    public j(long j2, int i2, String str) {
        this.f36769a = j2;
        long j3 = i2;
        this.f36771c = j3;
        this.g = str;
        this.f36810f = new o(j2, j3, str);
        this.l = 0;
        this.f36770b = new UUID(ak.a().nextLong(), ak.a().nextLong()).toString().replace("-", "");
        com.networkbench.agent.impl.k.b bVarQ = ak.q();
        this.d = bVarQ;
        bVarQ.f37423c = this.f36770b;
    }

    private long c(long j2) {
        return j2 == -1 ? j2 : j2 - this.f36769a;
    }

    private void d(long j2) {
        r.A.a("slowUserAction threshold:" + Harvest.getInstance().getConfiguration().getSlowUserActionThreshold());
        if (j2 > Harvest.getInstance().getConfiguration().getSlowUserActionThreshold()) {
            this.f36814k |= g.a.slowAction.a();
        }
    }

    private JsonObject e() {
        JsonObject jsonObject = new JsonObject();
        jsonObject.add("cpu", new JsonArray());
        jsonObject.add("mem", new JsonArray());
        jsonObject.add("stacks", a(this));
        return jsonObject;
    }

    private long f() {
        long j2 = this.f36811h;
        return j2 != 0 ? j2 : this.f36769a;
    }

    private void g() {
        if (this.m > 0) {
            r.A.a("countAvailability  ActionFailureThreshold: " + Harvest.getActionFailureThreshold());
            if ((this.n * 100) / this.m >= Harvest.getActionFailureThreshold()) {
                this.f36814k |= g.a.networkError.a();
            }
        }
    }

    private String h() {
        return j() ? this.q : "";
    }

    private String i() {
        return j() ? ak.a(r.u().J(), false) : "";
    }

    private boolean j() {
        return (!r.u().m() && (this.f36814k & g.a.networkError.a()) == 0 && (this.f36814k & g.a.kartun.a()) == 0 && (this.f36814k & g.a.slowAction.a()) == 0) ? false : true;
    }

    private int k() {
        int i2 = this.f36814k;
        int iA = g.a.normal.a();
        int i3 = this.f36814k;
        if (i2 == iA) {
            return i3;
        }
        g.a aVar = g.a.networkError;
        if ((aVar.a() & i3) != 0) {
            int iA2 = aVar.a();
            this.f36814k = iA2;
            return iA2;
        }
        int i4 = this.f36814k;
        g.a aVar2 = g.a.kartun;
        if ((i4 & aVar2.a()) != 0) {
            int iA3 = aVar2.a();
            this.f36814k = iA3;
            return iA3;
        }
        int i5 = this.f36814k;
        g.a aVar3 = g.a.slowAction;
        if ((i5 & aVar3.a()) == 0) {
            return this.f36814k;
        }
        int iA4 = aVar3.a();
        this.f36814k = iA4;
        return iA4;
    }

    private long l() {
        long jC = this.f36810f.c() - this.f36769a;
        com.networkbench.agent.impl.c.e eVar = r.A;
        StringBuilder sbQ = pq0.q(jC, "contentTime:", ", endTime:");
        sbQ.append(this.f36771c);
        sbQ.append(", blockTime:");
        sbQ.append(this.f36813j);
        sbQ.append(", startTime:");
        sbQ.append(this.f36769a);
        eVar.a(sbQ.toString());
        return (jC < 0 || jC < this.f36813j) ? this.f36813j : jC;
    }

    public JsonArray a(j jVar) {
        JsonArray jsonArray = new JsonArray();
        if (jVar == null) {
            return jsonArray;
        }
        jsonArray.add(new JsonPrimitive((Number) 0));
        jsonArray.add(new JsonPrimitive((Number) 0));
        jsonArray.add(new JsonPrimitive((Number) Long.valueOf(jVar.f36771c - f())));
        jsonArray.add(new JsonPrimitive(jVar.g));
        jsonArray.add(new JsonPrimitive((Number) 0));
        jsonArray.add(new JsonPrimitive((Number) 1));
        jsonArray.add(a(2L, "main"));
        jsonArray.add(new JsonObject());
        jsonArray.add(this.f36810f.a((m) null));
        jsonArray.add(new JsonArray());
        jsonArray.add(new JsonPrimitive((Number) 0));
        return jsonArray;
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableArray, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonArray asJsonArray() {
        JsonArray jsonArray = new JsonArray();
        o oVar = this.f36810f;
        if (oVar != null) {
            oVar.a();
            this.q = e().toString();
            o oVar2 = this.f36810f;
            this.m = oVar2.f36829e;
            this.n = oVar2.f36828c;
            this.o = oVar2.d;
            this.p = oVar2.f36827b;
        }
        r.A.a("request_count:" + this.m + ", nbsSlowStartTraceString : " + this.q);
        g();
        long jL = l();
        d(jL);
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.l)));
        jsonArray.add(new JsonPrimitive(this.g));
        jsonArray.add(new JsonPrimitive((Number) Long.valueOf(jL)));
        jsonArray.add(new JsonPrimitive((Number) Long.valueOf(this.f36813j)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(k())));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.m)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.n)));
        jsonArray.add(new JsonPrimitive(i()));
        jsonArray.add(new JsonPrimitive(h()));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.o)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.p)));
        if (this.f36810f != null) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.add("reqs", this.f36810f.g);
            jsonArray.add(new JsonPrimitive(jsonObject.toString()));
        } else {
            jsonArray.add(new JsonPrimitive(""));
        }
        JsonObject jsonObject2 = new JsonObject();
        jsonObject2.add("name", new JsonPrimitive(b(this.g)));
        jsonObject2.add("tag", new JsonPrimitive(this.f36812i));
        jsonObject2.add("cust", new JsonPrimitive(ak.a(this.f36809e).toString()));
        jsonArray.add(new JsonPrimitive(jsonObject2.toString()));
        jsonArray.add(new JsonPrimitive(""));
        jsonArray.add(new JsonPrimitive(new com.networkbench.agent.impl.data.a(r.u(), this.d, this.f36769a).asJsonObject().toString()));
        jsonArray.add(new JsonPrimitive(""));
        return jsonArray;
    }

    public String b(String str) {
        String[] strArrSplit;
        return (TextUtils.isEmpty(str) || (strArrSplit = str.split("#", 2)) == null || strArrSplit.length != 2) ? str : strArrSplit[1];
    }

    public long c() {
        return this.f36769a;
    }

    public void b(long j2) {
        this.f36811h = j2;
    }

    public long d() {
        return this.f36813j;
    }

    public void a(long j2) {
        this.f36771c = j2;
        this.f36810f.a(j2);
        this.f36813j = j2 - this.f36769a;
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f36812i = str;
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
}
