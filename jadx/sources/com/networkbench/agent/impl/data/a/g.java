package com.networkbench.agent.impl.data.a;

import com.networkbench.agent.impl.asyncaction.r;
import com.networkbench.agent.impl.asyncaction.s;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.harvest.type.HarvestableArray;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class g extends HarvestableArray implements com.networkbench.agent.impl.asyncaction.a.a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f36786f = "NBSEventAction";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public g f36787a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public g f36788b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f36789c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Map<String, Object> f36790e;
    private com.networkbench.agent.impl.k.b g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f36791h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f36792i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f36793j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f36794k;
    private long l;
    private long m;
    private long n;
    private int o;
    private s p;

    public enum a {
        normal(0),
        appCrash(1),
        networkError(2),
        kartun(4),
        slowAction(8);


        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final int f36799f;

        a(int i2) {
            this.f36799f = i2;
        }

        public int a() {
            return this.f36799f;
        }
    }

    public g(s sVar, String str, r rVar, com.networkbench.agent.impl.k.b bVar) {
        this.d = false;
        this.f36790e = new HashMap();
        this.f36793j = 0L;
        this.f36794k = 0L;
        this.l = 0L;
        this.f36793j = sVar.g();
        this.f36789c = str;
        this.f36791h = 0;
        this.g = bVar;
        if (rVar != null) {
            bVar.f37423c = rVar.a();
        }
        com.networkbench.agent.impl.c.g.A("NBSEventAction seriesData:" + bVar.toString());
    }

    private void c(long j2) {
        com.networkbench.agent.impl.util.r.A.a("slowUserAction threshold:" + Harvest.getInstance().getConfiguration().getSlowUserActionThreshold());
        if (j2 > Harvest.getInstance().getConfiguration().getSlowUserActionThreshold()) {
            this.o |= a.slowAction.a();
        }
    }

    private String f() {
        return j() ? ak.a(com.networkbench.agent.impl.util.r.u().J(), false) : "";
    }

    private boolean g() {
        return ((this.o & a.networkError.a()) == 0 && (this.o & a.kartun.a()) == 0 && (this.o & a.slowAction.a()) == 0) ? false : true;
    }

    private int h() {
        int i2 = this.o;
        int iA = a.normal.a();
        int i3 = this.o;
        if (i2 == iA) {
            return i3;
        }
        a aVar = a.networkError;
        if ((aVar.a() & i3) != 0) {
            int iA2 = aVar.a();
            this.o = iA2;
            return iA2;
        }
        int i4 = this.o;
        a aVar2 = a.kartun;
        if ((i4 & aVar2.a()) != 0) {
            int iA3 = aVar2.a();
            this.o = iA3;
            return iA3;
        }
        int i5 = this.o;
        a aVar3 = a.slowAction;
        if ((i5 & aVar3.a()) == 0) {
            return this.o;
        }
        int iA4 = aVar3.a();
        this.o = iA4;
        return iA4;
    }

    private String i() {
        s sVar;
        return (!j() || (sVar = this.p) == null) ? "" : sVar.asJson().toString();
    }

    private boolean j() {
        if (com.networkbench.agent.impl.util.r.u().m()) {
            return true;
        }
        return g();
    }

    public long a(long j2, long j3) {
        com.networkbench.agent.impl.util.r.A.a("blockTime threshold:" + Harvest.getInstance().getConfiguration().getSlowUserActionThreshold());
        long j4 = j3 - j2;
        if (j4 > Harvest.getInstance().getConfiguration().getSlowUserActionThreshold()) {
            this.o |= a.kartun.a();
        }
        return j4;
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableArray, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonArray asJsonArray() {
        int iH;
        int i2;
        int iJ;
        JsonArray jsonArray = new JsonArray();
        s sVar = this.p;
        if (sVar != null) {
            iH = sVar.h();
            i2 = this.p.i();
            iJ = this.p.j();
            a(iH, i2 + iJ);
        } else {
            iH = 0;
            i2 = 0;
            iJ = 0;
        }
        long jE = e();
        c(jE);
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.f36791h)));
        jsonArray.add(new JsonPrimitive(this.f36789c));
        jsonArray.add(new JsonPrimitive((Number) Long.valueOf(jE)));
        s sVar2 = this.p;
        jsonArray.add(new JsonPrimitive((Number) Long.valueOf(sVar2 == null ? 0L : sVar2.l())));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(h())));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(iH)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(i2 + iJ)));
        jsonArray.add(new JsonPrimitive(f()));
        jsonArray.add(new JsonPrimitive(i()));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(i2)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(iJ)));
        s sVar3 = this.p;
        if (sVar3 == null || !(sVar3 instanceof com.networkbench.agent.impl.asyncaction.a)) {
            jsonArray.add(new JsonPrimitive(""));
        } else {
            JsonObject jsonObject = new JsonObject();
            jsonObject.add("reqs", ((com.networkbench.agent.impl.asyncaction.a) this.p).a());
            jsonArray.add(new JsonPrimitive(jsonObject.toString()));
        }
        JsonObject jsonObject2 = new JsonObject();
        jsonObject2.add("name", new JsonPrimitive(this.f36789c));
        jsonObject2.add("cust", new JsonPrimitive(ak.a(this.f36790e).toString()));
        jsonArray.add(new JsonPrimitive(jsonObject2.toString()));
        jsonArray.add(new JsonPrimitive(""));
        jsonArray.add(new JsonPrimitive(new com.networkbench.agent.impl.data.a(com.networkbench.agent.impl.util.r.u(), this.g, this.f36793j).asJsonObject().toString()));
        String str = this.f36792i;
        jsonArray.add(new JsonPrimitive(str != null ? str : ""));
        return jsonArray;
    }

    @Override // com.networkbench.agent.impl.asyncaction.a.a
    public void b() {
        if (Harvest.getInstance().getHarvestData() != null) {
            Harvest.getInstance().getHarvestData().getNbsEventActions().a(this);
        }
        r rVarC = r.c();
        if (rVarC != null) {
            rVarC.b(this.p);
        }
    }

    public long d() {
        return this.f36793j;
    }

    public long e() {
        if (!this.d) {
            s sVar = this.p;
            if (sVar == null) {
                return 0L;
            }
            long jM = sVar.m();
            long j2 = this.n;
            return jM < j2 ? j2 : jM;
        }
        com.networkbench.agent.impl.util.r.A.a("countDuration:" + this.l + ", beginTimeStamp:" + this.f36793j);
        long j3 = this.l - this.f36793j;
        return (j3 < 0 || j3 < this.n) ? this.n : j3;
    }

    public void b(long j2) {
        this.n = j2;
    }

    @Override // com.networkbench.agent.impl.asyncaction.a.a
    public boolean c() {
        s sVar = this.p;
        if (sVar != null) {
            return sVar.l() <= 0 || this.p.m() > 18000 || this.p.l() > 18000;
        }
        Logger.error(f36786f, "nbsSlowStartTrace == null, please check");
        return true;
    }

    public void a(long j2) {
        this.f36794k = j2;
    }

    public void a(String str) {
        this.g.f37421a = str;
    }

    public void a(int i2) {
        this.o = i2;
    }

    public g(long j2, String str, String str2, com.networkbench.agent.impl.k.b bVar) {
        this.d = false;
        this.f36790e = new HashMap();
        this.f36793j = 0L;
        this.f36794k = 0L;
        this.l = 0L;
        this.n = a(j2, System.currentTimeMillis());
        this.f36793j = j2;
        this.f36794k = System.currentTimeMillis();
        this.f36789c = str;
        this.f36791h = 0;
        this.g = bVar;
        bVar.f37424e = "";
        bVar.d = "";
        this.f36792i = str2 == null ? "" : str2;
    }

    public void a(s sVar, String str) {
        this.n = a(sVar.g(), System.currentTimeMillis());
        this.f36794k = System.currentTimeMillis();
        if (str == null) {
            str = "";
        }
        this.f36792i = str;
        this.p = sVar;
    }

    @Override // com.networkbench.agent.impl.asyncaction.a.a
    public void a(long j2, String str, boolean z) {
    }

    @Override // com.networkbench.agent.impl.asyncaction.a.a
    public boolean a() {
        return System.currentTimeMillis() - this.f36794k > 7000;
    }

    private void a(int i2, int i3) {
        if (i2 > 0) {
            com.networkbench.agent.impl.util.r.A.a("countAvailability  ActionFailureThreshold: " + Harvest.getActionFailureThreshold());
            if ((i3 * 100) / i2 >= Harvest.getActionFailureThreshold()) {
                this.o |= a.networkError.a();
            }
        }
    }

    public g(long j2, long j3, String str, boolean z) {
        this.d = false;
        this.f36790e = new HashMap();
        this.f36793j = 0L;
        this.f36794k = 0L;
        this.l = 0L;
        this.n = a(j2, j3);
        this.f36789c = str;
        this.f36791h = 0;
        this.d = z;
        this.f36793j = j2;
        this.f36794k = j3;
        this.g = ak.q();
        this.f36792i = "";
    }
}
