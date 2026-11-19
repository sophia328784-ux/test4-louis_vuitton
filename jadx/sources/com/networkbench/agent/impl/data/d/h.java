package com.networkbench.agent.impl.data.d;

import com.networkbench.agent.impl.data.type.SlowStartState;
import com.networkbench.agent.impl.data.type.p;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.harvest.type.HarvestableArray;
import com.networkbench.agent.impl.session.screen.NBSBitmapBeansControl;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.r;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonPrimitive;

/* JADX INFO: loaded from: classes2.dex */
public class h extends HarvestableArray implements com.networkbench.agent.impl.asyncaction.a.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static c f36878a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f36879b = "NBSPageData";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final com.networkbench.agent.impl.c.e f36880c = com.networkbench.agent.impl.c.f.a();
    private static final long d = 10000;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final long f36881e = 18000;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f36882f;
    private String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f36883h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private com.networkbench.agent.impl.k.b f36884i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f36885j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private c f36886k;
    private p l;
    private long m;
    private long n;

    public h(int i2, String str, p pVar) {
        this.f36883h = false;
        this.f36882f = i2;
        this.g = str;
        this.l = pVar;
        this.f36886k = b.a().c();
        com.networkbench.agent.impl.k.b bVar = new com.networkbench.agent.impl.k.b(NBSBitmapBeansControl.getInstance().getSessionId());
        this.f36884i = bVar;
        bVar.f37422b = this.f36886k.f36866f;
    }

    private boolean s() {
        return this.f36885j > 0;
    }

    private String t() {
        return u() ? ak.a(r.u().J(), false) : "";
    }

    private boolean u() {
        if (this.l == null) {
            return false;
        }
        if (r.u().m()) {
            return true;
        }
        return s();
    }

    private void v() {
        p pVar = this.l;
        if (pVar == null) {
            this.m = 0L;
        } else if (this.f36882f == 3) {
            this.m = pVar.t();
        } else {
            this.m = pVar.n();
        }
    }

    private void w() {
        p pVar = this.l;
        if (pVar == null) {
            this.n = 0L;
        } else if (this.f36882f == 3) {
            this.n = pVar.a(10);
        } else {
            this.n = pVar.o();
        }
        if (r.u().aK()) {
            c cVar = this.f36886k;
            com.networkbench.agent.impl.i.g gVarB = com.networkbench.agent.impl.i.f.a().b(cVar == null ? "" : cVar.a());
            if (gVarB == null) {
                return;
            }
            if (this.f36882f == 3) {
                this.n = gVarB.a() + this.m;
                return;
            }
            long jA = gVarB.a() + this.m;
            if (jA > this.n) {
                this.n = jA;
            }
        }
    }

    @Override // com.networkbench.agent.impl.asyncaction.a.a
    public void a(long j2, String str, boolean z) {
        if (!str.equals(this.g) || this.f36883h) {
            return;
        }
        this.l.a(j2, ConfigurationName.CUST_PAGE_LOADING_END_TAG, SlowStartState.CallType.ASYNC);
        this.l.a(z ? com.networkbench.agent.impl.i.e.PAGE_STATUS_INTERRUPT : com.networkbench.agent.impl.i.e.PAGE_STATUS_NORMAL);
        this.f36883h = true;
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableArray, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonArray asJsonArray() {
        JsonArray jsonArray = new JsonArray();
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.f36882f)));
        jsonArray.add(new JsonPrimitive(this.g));
        c cVar = this.f36886k;
        com.networkbench.agent.impl.i.g gVarB = r.u().aK() ? com.networkbench.agent.impl.i.f.a().b(cVar == null ? "" : cVar.a()) : null;
        jsonArray.add(new JsonPrimitive((Number) Long.valueOf(this.m)));
        jsonArray.add(new JsonPrimitive((Number) Long.valueOf(this.n)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(a(this.n))));
        jsonArray.add(new JsonPrimitive(i()));
        jsonArray.add(new JsonPrimitive(t()));
        if (!u()) {
            jsonArray.add(new JsonPrimitive(""));
        } else if (this.f36882f == 3) {
            jsonArray.add(new JsonPrimitive(this.l.v().toString()));
        } else {
            jsonArray.add(new JsonPrimitive(this.l.asJson().toString()));
        }
        jsonArray.add(new JsonPrimitive(""));
        com.networkbench.agent.impl.data.a aVar = new com.networkbench.agent.impl.data.a(r.u(), this.f36884i, l());
        if (this.f36882f == 3 && r.u().aK()) {
            if (gVarB != null) {
                aVar.a().add("view_coverage", new JsonPrimitive((Number) Integer.valueOf(gVarB.b())));
                aVar.a().add("view_state", new JsonPrimitive((Number) Integer.valueOf(gVarB.c())));
            } else {
                p pVar = this.l;
                if (pVar != null && pVar.x()) {
                    aVar.a().add("view_state", new JsonPrimitive((Number) Integer.valueOf(this.l.z().a())));
                } else if (gVarB == null) {
                    Logger.error(f36879b, "statusCalc == null, please check");
                }
            }
        }
        jsonArray.add(new JsonPrimitive(aVar.asJsonObject().toString()));
        return jsonArray;
    }

    @Override // com.networkbench.agent.impl.asyncaction.a.a
    public void b() {
        Harvest.getInstance().getHarvestData().getPageDatas().a(this);
        com.networkbench.agent.impl.asyncaction.r rVarC = com.networkbench.agent.impl.asyncaction.r.c();
        if (rVarC != null) {
            rVarC.b(this.l);
        }
    }

    @Override // com.networkbench.agent.impl.asyncaction.a.a
    public boolean c() {
        return this.l.l() < 0 || this.l.o() > f36881e || this.l.n() > d;
    }

    public com.networkbench.agent.impl.k.b d() {
        return this.f36884i;
    }

    public p e() {
        return this.l;
    }

    public int f() {
        return this.f36885j;
    }

    public c g() {
        return this.f36886k;
    }

    public String h() {
        return this.g;
    }

    public String i() {
        c cVar = this.f36886k;
        return cVar == null ? "" : cVar.toJsonString();
    }

    public void j() {
        String str = this.l.f36990h;
        c cVar = this.f36886k;
        if (str == null) {
            cVar.a(com.networkbench.agent.impl.data.a.b.f36766a.a(this.g));
        } else {
            cVar.a(com.networkbench.agent.impl.data.a.b.f36766a.a(str));
            this.f36886k.f36862a.f36868a = "setCustomPageName";
        }
    }

    public String k() {
        String str = this.l.f36990h;
        return str != null ? str : this.g;
    }

    public long l() {
        return this.l.g();
    }

    public long m() {
        return this.l.q();
    }

    public long n() {
        return this.l.u();
    }

    public boolean o() {
        return this.l.n() > d;
    }

    public boolean p() {
        p pVar = this.l;
        if (pVar == null) {
            return false;
        }
        return pVar.y();
    }

    public boolean q() {
        long j2 = this.m;
        if (j2 >= 0 && j2 <= d) {
            long j3 = this.n;
            if (j3 >= 0 && j3 <= f36881e) {
                return false;
            }
        }
        return true;
    }

    public void r() {
        v();
        w();
    }

    @Override // com.networkbench.agent.impl.asyncaction.a.a
    public boolean a() {
        return System.currentTimeMillis() - this.l.q() > 7000;
    }

    private int a(long j2) {
        int iCalcState = Harvest.getInstance().getConfiguration().calcState(this.m, j2);
        this.f36885j = iCalcState;
        return iCalcState;
    }

    public h(int i2, long j2, long j3, c cVar, p pVar, com.networkbench.agent.impl.k.b bVar) {
        this.f36883h = false;
        this.f36882f = i2;
        this.g = "OverLapPage";
        this.f36886k = cVar;
        this.l = pVar;
        this.f36884i = bVar;
    }
}
