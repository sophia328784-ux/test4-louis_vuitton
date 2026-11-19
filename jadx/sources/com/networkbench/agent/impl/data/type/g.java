package com.networkbench.agent.impl.data.type;

import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.harvest.HarvestData;
import com.networkbench.agent.impl.harvest.type.HarvestableArray;
import com.networkbench.agent.impl.instrumentation.NBSUnit;
import com.networkbench.agent.impl.session.screen.NBSBitmapBeansControl;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonElement;
import com.networkbench.com.google.gson.JsonPrimitive;
import defpackage.pq0;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class g extends HarvestableArray implements com.networkbench.agent.impl.asyncaction.a.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f36961a = "AppStartData";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f36962b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f36963c;
    private long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f36964e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f36965f;
    private boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f36966h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f36967i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private com.networkbench.agent.impl.k.b f36968j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private p f36969k;

    public g(int i2, p pVar, String str) {
        this.f36962b = i2;
        this.f36969k = pVar;
        Logger.debug(f36961a, "appStartType is:" + i2);
        e();
        this.f36967i = System.currentTimeMillis();
        com.networkbench.agent.impl.k.b bVar = new com.networkbench.agent.impl.k.b(NBSBitmapBeansControl.getInstance().getSessionId());
        this.f36968j = bVar;
        bVar.f37423c = str;
    }

    private void a(Map<r, NBSUnit> map) {
        NBSUnit nBSUnitB = b(map);
        NBSUnit nBSUnit = map.get(r.ACTIVITY_ONRESUME);
        if (nBSUnitB == null || nBSUnit == null) {
            Logger.error(f36961a, "beginUnit unit or resume unit is null, please check");
        }
        if (nBSUnitB != null) {
            this.f36964e = nBSUnitB.getDuration();
        } else {
            Logger.error(f36961a, "not find beginUnit unit");
        }
        if (nBSUnit == null) {
            Logger.error(f36961a, "not find resume unit");
        }
        this.f36965f = a(nBSUnitB, nBSUnit);
    }

    private long b(long j2) {
        long j3;
        long j4;
        if (this.f36962b == 3) {
            j3 = this.f36964e;
            j4 = this.f36965f;
        } else {
            j3 = this.f36963c + this.d + this.f36964e;
            j4 = this.f36965f;
        }
        long j5 = j3 + j4;
        StringBuilder sbQ = pq0.q(j2, "checkTimes duraTime: ", ", mainActivityCreateTime:");
        sbQ.append(this.f36964e);
        sbQ.append(", mainActivityResumeTime:");
        sbQ.append(this.f36965f);
        Logger.debug(f36961a, sbQ.toString());
        if (j5 - j2 > 0) {
            long j6 = this.f36965f;
            if (j6 > j2) {
                j2 = (this.f36962b == 3 ? this.f36964e : this.f36963c + this.d + this.f36964e) + j6;
            }
        }
        if (j2 >= Harvest.getInstance().getConfiguration().getSlowStartThreshold()) {
            this.g = true;
        }
        return j2;
    }

    private void c(Map<r, NBSUnit> map) {
        NBSUnit nBSUnit = map.get(r.APPLICATION_ATTACH_BASE_CONTEXT);
        NBSUnit nBSUnit2 = map.get(r.APPLICATION_ONCREATE);
        NBSUnit nBSUnit3 = map.get(r.ACTIVITY_ONCREATE);
        NBSUnit nBSUnit4 = map.get(r.ACTIVITY_ONRESUME);
        if (nBSUnit == null || nBSUnit2 == null || nBSUnit3 == null || nBSUnit4 == null) {
            Logger.error(f36961a, "attachBaseContext or appCreate or activityCreate or activityResume unit is null, please check");
        }
        if (nBSUnit != null) {
            this.f36963c = nBSUnit.getDuration();
        }
        this.d = a(nBSUnit, nBSUnit2);
        this.f36964e = a(nBSUnit2, nBSUnit3);
        if (nBSUnit4 == null) {
            Logger.error(f36961a, "app start data not find resume unit");
        }
        this.f36965f = a(nBSUnit3, nBSUnit4);
    }

    private void e() {
        Map<r, NBSUnit> mapW = this.f36969k.w();
        if (this.f36962b == 3) {
            a(mapW);
        } else {
            c(mapW);
        }
    }

    private boolean f() {
        if (com.networkbench.agent.impl.util.r.u().m()) {
            return true;
        }
        return this.g;
    }

    private long g() {
        p pVar = this.f36969k;
        if (pVar != null) {
            return pVar.l();
        }
        return -1L;
    }

    private boolean h() {
        return g() >= Harvest.getInstance().getConfiguration().getSlowStartThreshold();
    }

    private long i() {
        return this.f36963c + this.d + this.f36964e + this.f36965f;
    }

    private String j() {
        p pVar = this.f36969k;
        if (pVar == null) {
            return null;
        }
        if (this.f36962b != 3) {
            return pVar.e().toString();
        }
        try {
            return pVar.d().toString();
        } catch (Throwable th) {
            Logger.error(f36961a, "error process hot launch", th);
            return this.f36969k.e().toString();
        }
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableArray, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonArray asJsonArray() {
        JsonArray jsonArray = new JsonArray();
        this.g = h();
        long jB = b(g());
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.f36962b)));
        jsonArray.add(new JsonPrimitive((Number) Long.valueOf(jB)));
        jsonArray.add(new JsonPrimitive((Number) Long.valueOf(this.f36963c)));
        jsonArray.add(new JsonPrimitive((Number) Long.valueOf(this.d)));
        jsonArray.add(new JsonPrimitive((Number) Long.valueOf(this.f36964e)));
        jsonArray.add(new JsonPrimitive((Number) Long.valueOf(this.f36965f)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.g ? 1 : 0)));
        try {
            if (f()) {
                this.f36966h = ak.a(com.networkbench.agent.impl.util.r.u().J(), false);
            }
        } catch (Exception unused) {
            this.f36966h = "";
        }
        JsonElement jsonPrimitive = null;
        jsonArray.add(!f() ? null : new JsonPrimitive(this.f36966h));
        if (f() && this.f36969k != null) {
            jsonPrimitive = new JsonPrimitive(j());
        }
        jsonArray.add(jsonPrimitive);
        if (this.f36969k != null) {
            jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.f36969k.h())));
            jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.f36969k.i())));
            jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.f36969k.j())));
        } else {
            jsonArray.add(new JsonPrimitive((Number) 0));
            jsonArray.add(new JsonPrimitive((Number) 0));
            jsonArray.add(new JsonPrimitive((Number) 0));
        }
        jsonArray.add(new JsonPrimitive(""));
        com.networkbench.agent.impl.util.r rVarU = com.networkbench.agent.impl.util.r.u();
        com.networkbench.agent.impl.k.b bVar = this.f36968j;
        p pVar = this.f36969k;
        jsonArray.add(new JsonPrimitive(new com.networkbench.agent.impl.data.a(rVarU, bVar, pVar == null ? this.f36967i - jB : pVar.g()).asJsonObject().toString()));
        return jsonArray;
    }

    public int d() {
        return this.f36962b;
    }

    @Override // com.networkbench.agent.impl.asyncaction.a.a
    public void a(long j2, String str, boolean z) {
    }

    private long a(NBSUnit nBSUnit, NBSUnit nBSUnit2) {
        if (nBSUnit != null && nBSUnit2 != null) {
            return nBSUnit2.calcDurationWithEndStamp(nBSUnit);
        }
        if (nBSUnit2 != null) {
            return nBSUnit2.getDuration();
        }
        return 0L;
    }

    public void a(p pVar) {
        this.f36969k = pVar;
    }

    @Override // com.networkbench.agent.impl.asyncaction.a.a
    public boolean a() {
        return System.currentTimeMillis() - this.f36969k.q() > 7000;
    }

    public void a(long j2) {
        this.f36965f = this.f36969k.f(j2) + this.f36965f;
        this.f36969k.a(j2, "setAppLaunchEndTime", SlowStartState.CallType.SYNC);
    }

    public void a(int i2) {
        this.f36962b = i2;
    }

    @Override // com.networkbench.agent.impl.asyncaction.a.a
    public boolean c() {
        return g() > 18000 || i() > 18000 || g() <= 0;
    }

    private NBSUnit b(Map<r, NBSUnit> map) {
        NBSUnit nBSUnit = map.get(r.ACTIVITY_ONRESTART);
        if (nBSUnit != null) {
            return nBSUnit;
        }
        Logger.debug(f36961a, "not find restart unit, continue to find onCreate");
        return map.get(r.ACTIVITY_ONCREATE);
    }

    @Override // com.networkbench.agent.impl.asyncaction.a.a
    public void b() {
        HarvestData.getAppStartDatas().a(this);
        com.networkbench.agent.impl.asyncaction.r rVarC = com.networkbench.agent.impl.asyncaction.r.c();
        if (rVarC != null) {
            rVarC.b(this.f36969k);
        }
    }
}
