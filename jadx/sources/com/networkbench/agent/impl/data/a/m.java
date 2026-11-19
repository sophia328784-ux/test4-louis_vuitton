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
public class m extends c {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public o f36819h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f36820i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    long f36821j;
    private long l;
    private int m;
    private int n;
    private int o;
    private int p;
    private String s;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public m f36817e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public m f36818f = null;
    public Map<String, Object> g = new ConcurrentHashMap();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f36822k = "";
    private int q = 0;
    private int r = 0;

    public m(long j2, int i2, String str) {
        this.f36769a = j2;
        long j3 = i2;
        this.f36771c = j3;
        this.f36820i = str;
        this.f36819h = new o(j2, j3, str);
        this.n = 0;
        this.f36770b = new UUID(ak.a().nextLong(), ak.a().nextLong()).toString().replace("-", "");
        com.networkbench.agent.impl.k.b bVarQ = ak.q();
        this.d = bVarQ;
        bVarQ.f37423c = this.f36770b;
    }

    private void d(long j2) {
        r.A.a("slowUserAction threshold:" + Harvest.getInstance().getConfiguration().getSlowUserActionThreshold());
        if (j2 > Harvest.getInstance().getConfiguration().getSlowUserActionThreshold()) {
            this.m |= g.a.slowAction.a();
        }
    }

    private JsonObject e() {
        JsonObject jsonObject = new JsonObject();
        jsonObject.add("cpu", new JsonArray());
        jsonObject.add("mem", new JsonArray());
        jsonObject.add("stacks", c(this));
        return jsonObject;
    }

    private long f() {
        long j2 = this.f36821j;
        return j2 != 0 ? j2 : this.f36769a;
    }

    private void g() {
        if (this.o > 0) {
            r.A.a("countAvailability  ActionFailureThreshold: " + Harvest.getActionFailureThreshold());
            if ((this.p * 100) / this.o >= Harvest.getActionFailureThreshold()) {
                this.m |= g.a.networkError.a();
            }
        }
    }

    private String h() {
        return j() ? this.s : "";
    }

    private String i() {
        return j() ? ak.a(r.u().J(), false) : "";
    }

    private boolean j() {
        return ((this.m & g.a.networkError.a()) == 0 && (this.m & g.a.kartun.a()) == 0 && (this.m & g.a.slowAction.a()) == 0) ? false : true;
    }

    private int k() {
        int i2 = this.m;
        int iA = g.a.normal.a();
        int i3 = this.m;
        if (i2 == iA) {
            return i3;
        }
        g.a aVar = g.a.networkError;
        if ((aVar.a() & i3) != 0) {
            int iA2 = aVar.a();
            this.m = iA2;
            return iA2;
        }
        int i4 = this.m;
        g.a aVar2 = g.a.kartun;
        if ((i4 & aVar2.a()) != 0) {
            int iA3 = aVar2.a();
            this.m = iA3;
            return iA3;
        }
        int i5 = this.m;
        g.a aVar3 = g.a.slowAction;
        if ((i5 & aVar3.a()) == 0) {
            return this.m;
        }
        int iA4 = aVar3.a();
        this.m = iA4;
        return iA4;
    }

    private long l() {
        long jC = this.f36819h.c() - this.f36769a;
        com.networkbench.agent.impl.c.e eVar = r.A;
        StringBuilder sbQ = pq0.q(jC, "contentTime:", ", endTime:");
        sbQ.append(this.f36771c);
        sbQ.append(", blockTime:");
        sbQ.append(this.l);
        sbQ.append(", startTime:");
        sbQ.append(this.f36769a);
        eVar.a(sbQ.toString());
        return (jC < 0 || jC < this.l) ? this.l : jC;
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

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableArray, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonArray asJsonArray() {
        JsonArray jsonArray = new JsonArray();
        o oVar = this.f36819h;
        if (oVar != null) {
            oVar.a();
            this.s = e().toString();
            o oVar2 = this.f36819h;
            this.o = oVar2.f36829e;
            this.p = oVar2.f36828c;
            this.q = oVar2.d;
            this.r = oVar2.f36827b;
        }
        r.A.a("request_count:" + this.o + ", nbsSlowStartTraceString : " + this.s);
        g();
        long jL = l();
        d(jL);
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.n)));
        jsonArray.add(new JsonPrimitive(this.f36820i));
        jsonArray.add(new JsonPrimitive((Number) Long.valueOf(jL)));
        jsonArray.add(new JsonPrimitive((Number) Long.valueOf(this.l)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(k())));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.o)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.p)));
        jsonArray.add(new JsonPrimitive(i()));
        jsonArray.add(new JsonPrimitive(h()));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.q)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.r)));
        if (this.f36819h != null) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.add("reqs", this.f36819h.g);
            jsonArray.add(new JsonPrimitive(jsonObject.toString()));
        } else {
            jsonArray.add(new JsonPrimitive(""));
        }
        JsonObject jsonObject2 = new JsonObject();
        jsonObject2.add("name", new JsonPrimitive(b(this.f36820i)));
        jsonObject2.add("tag", new JsonPrimitive(this.f36822k));
        jsonObject2.add("cust", new JsonPrimitive(ak.a(this.g).toString()));
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

    public JsonArray c(m mVar) {
        JsonArray jsonArray = new JsonArray();
        if (mVar == null) {
            return jsonArray;
        }
        if (mVar.f36818f != null) {
            jsonArray.add(new JsonPrimitive((Number) 0));
            jsonArray.add(new JsonPrimitive((Number) Long.valueOf(mVar.d() - f())));
        } else {
            jsonArray.add(new JsonPrimitive((Number) 0));
            jsonArray.add(new JsonPrimitive((Number) 0));
        }
        jsonArray.add(new JsonPrimitive((Number) Long.valueOf(mVar.f36771c - f())));
        jsonArray.add(new JsonPrimitive(mVar.f36820i));
        jsonArray.add(new JsonPrimitive((Number) 0));
        jsonArray.add(new JsonPrimitive((Number) 1));
        jsonArray.add(a(2L, "main"));
        jsonArray.add(new JsonObject());
        jsonArray.add(this.f36819h.a(this.f36817e));
        jsonArray.add(new JsonArray());
        jsonArray.add(new JsonPrimitive((Number) 0));
        return jsonArray;
    }

    public long b(m mVar) {
        m mVar2 = mVar.f36818f;
        if (mVar2 != null) {
            b(mVar2);
        }
        return mVar.f36769a;
    }

    public void b(long j2) {
        this.f36821j = j2;
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f36822k = str;
    }

    public void a(long j2) {
        this.f36771c = j2;
        this.f36819h.a(j2);
        this.l = j2 - this.f36769a;
    }

    public void a(m mVar, m mVar2) {
        m mVar3 = mVar.f36817e;
        if (mVar3 == null) {
            mVar.f36817e = mVar2;
            mVar2.a(mVar);
        } else {
            mVar3.a(mVar3, mVar2);
        }
    }

    public void a(m mVar) {
        this.f36818f = mVar;
    }

    public long d() {
        return this.f36769a;
    }

    public long c() {
        return this.l;
    }

    private long c(long j2) {
        return j2 == -1 ? j2 : j2 - this.f36769a;
    }
}
