package com.networkbench.agent.impl.n;

import android.content.Context;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.harvest.HarvestConnection;
import com.networkbench.agent.impl.harvest.a.r;
import com.networkbench.agent.impl.harvest.type.HarvestableObject;
import com.networkbench.com.google.gson.JsonObject;
import defpackage.z81;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes2.dex */
public abstract class d extends HarvestableObject {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected static final com.networkbench.agent.impl.c.e f37542a = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected Context f37543b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public AtomicBoolean f37544c = new AtomicBoolean(false);
    protected String d = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected int f37545e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected HarvestConnection f37546f;
    protected r g;

    public boolean a(String str) {
        if (this.f37544c.get()) {
            return false;
        }
        try {
            this.f37544c.set(true);
            if (str == null) {
                this.f37544c.set(false);
                return false;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            com.networkbench.agent.impl.harvest.d.c response = Harvest.getInstance().getHarvestConnection().getResponse(str, this.g);
            com.networkbench.agent.impl.c.g.v("harvestResponse :" + response.toString());
            if (!response.h() && response.j().s != -1 && response.j().s != 460 && response.j().s != 462) {
                (this.g == r.USER_ACTION ? new com.networkbench.agent.impl.m.a(com.networkbench.agent.impl.util.r.u().J(), ConfigurationName.USERACTION_DATA_STORE_PATH) : new com.networkbench.agent.impl.m.a(com.networkbench.agent.impl.util.r.u().J(), ConfigurationName.PROFILE_DATA_STORE_PATH)).a(str, jCurrentTimeMillis);
            }
        } catch (Throwable unused) {
        }
        this.f37544c.set(false);
        return true;
    }

    public abstract void b();

    public abstract boolean c();

    public void d() {
        if (com.networkbench.agent.impl.util.r.u().k() && com.networkbench.agent.impl.harvest.b.b.a().i() && Harvest.getInstance().getHarvester() != null) {
            if (!Harvest.getInstance().getHarvester().isConnect()) {
                com.networkbench.agent.impl.c.g.p("sdk 初始化还没有完成,暂时不上传userAction数据...");
                return;
            }
            com.networkbench.agent.impl.c.g.p("harvestData  send onEvent data : .....");
            com.networkbench.agent.impl.c.g.l("useraction  harvestData gather  begin !!");
            if (c()) {
                f37542a.a("the user action data is empty!");
            } else {
                g();
            }
        }
    }

    public void f() {
        com.networkbench.agent.impl.c.g.p("harvestData  send onEvent data : .....1111");
        if (com.networkbench.agent.impl.util.r.u().k()) {
            if (!com.networkbench.agent.impl.harvest.b.b.a().i()) {
                com.networkbench.agent.impl.c.g.p("harvestData  send onEvent data : return !!");
                return;
            }
            com.networkbench.agent.impl.c.g.p("harvestData  send onEvent data : .....2222 !!");
            if (c()) {
                f37542a.a("the user action data is empty!");
            } else {
                g();
            }
        }
    }

    public void g() {
        if (HarvestConnection.isSoDisable()) {
            if (a(asJsonObject().toString())) {
                reset();
                return;
            } else {
                f37542a.a("flushInternal failed");
                return;
            }
        }
        if (!a(asJsonObject())) {
            f37542a.a("flushInternal failed");
        } else {
            f37542a.a("flushInternal success and reset!");
            reset();
        }
    }

    public abstract void reset();

    public void a(HarvestConnection harvestConnection) {
        f37542a.a("stop : //////// ");
        this.f37546f = harvestConnection;
        com.networkbench.agent.impl.util.c.a.a().a(new Runnable() { // from class: com.networkbench.agent.impl.n.d.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    d.this.f();
                } catch (Throwable th) {
                    z81.k(new StringBuilder("HarvestTimer userActions stop has an error : "), th);
                }
            }
        });
    }

    private boolean a(JsonObject jsonObject) {
        if (jsonObject == null) {
            return false;
        }
        if (this.f37546f == null) {
            this.f37546f = Harvest.getInstance().getHarvestConnection();
        }
        HarvestConnection harvestConnection = this.f37546f;
        if (harvestConnection == null) {
            f37542a.a("flushInternal harvest connection is null and stop!");
            return false;
        }
        com.networkbench.agent.impl.harvest.d.c cVarSendDataPb = harvestConnection.sendDataPb(jsonObject.toString(), this.f37545e, this.f37546f.getApplicationToken(), "token=");
        if (cVarSendDataPb == null) {
            return false;
        }
        int i2 = cVarSendDataPb.i();
        com.networkbench.agent.impl.c.e eVar = f37542a;
        eVar.a("send user base data response status code:" + i2);
        if (i2 != 0) {
            eVar.a("socket error code is 1000, send failed!");
            return false;
        }
        eVar.a("send success NBSUserBase~~~");
        return true;
    }
}
