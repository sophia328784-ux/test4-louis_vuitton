package com.networkbench.agent.impl.b;

import android.text.TextUtils;
import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.NBSAppAgent;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.harvest.HarvestConnectionInterface;
import com.networkbench.agent.impl.harvest.HarvestURLConnection;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.r;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class a implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final com.networkbench.agent.impl.c.e f36463b = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f36464a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.networkbench.agent.impl.crash.h f36465c;
    private String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f36466e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.networkbench.agent.impl.j.d f36467f;
    private String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private HarvestConnectionInterface f36468h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private com.networkbench.agent.impl.k.b f36469i;

    public a(String str, com.networkbench.agent.impl.crash.h hVar, String str2, String str3, com.networkbench.agent.impl.j.d dVar, String str4) throws com.networkbench.agent.impl.util.d {
        if (str == null || TextUtils.isEmpty(str3)) {
            throw new com.networkbench.agent.impl.util.d("error param in anrSender");
        }
        this.f36464a = str;
        this.f36465c = hVar;
        this.d = str2;
        this.f36466e = str3;
        this.f36467f = dVar;
        this.g = str4;
        this.f36468h = new HarvestURLConnection(ak.i(), NBSAgent.getDeviceInformation().initUserHeaderValue(), r.u().z());
    }

    private void a() {
        try {
            this.f36465c.b(this.d);
            if (this.f36467f == com.networkbench.agent.impl.j.d.CRASH_DATA) {
                try {
                    f36463b.a("deleteStoreInfo--- userActionId : " + this.g);
                    if (TextUtils.isEmpty(this.g) || this.f36469i == null) {
                        return;
                    }
                    Harvest.getInstance().getHarvester().sendForgeUserActionItemHttp(this.g, this.f36469i);
                } catch (Throwable unused) {
                }
            }
        } catch (Throwable unused2) {
            this.f36465c.d();
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            com.networkbench.agent.impl.harvest.a.r rVar = com.networkbench.agent.impl.harvest.a.r.CRASH_DATA;
            if (com.networkbench.agent.impl.j.d.ANR_DATA == this.f36467f) {
                rVar = com.networkbench.agent.impl.harvest.a.r.ANR_DATA;
            }
            com.networkbench.agent.impl.c.j.b("send type: " + rVar.name() + ", content: " + this.f36464a);
            com.networkbench.agent.impl.harvest.d.c cVarSendDataStr = this.f36468h.sendDataStr(this.f36464a, com.networkbench.agent.impl.harvest.a.l.a(rVar, this.f36466e, r.u().Q()));
            StringBuilder sb = new StringBuilder("harvestResponse : ");
            sb.append(cVarSendDataStr.toString());
            com.networkbench.agent.impl.c.g.v(sb.toString());
            if (cVarSendDataStr.e()) {
                NBSAppAgent.disableTimeUnit(TimeUnit.MILLISECONDS, cVarSendDataStr.a());
            }
            if (cVarSendDataStr.h()) {
                com.networkbench.agent.impl.c.g.v("harvestResponse.isOK()");
                a();
            } else if (cVarSendDataStr.j().s == 464 || cVarSendDataStr.j().s == -1 || cVarSendDataStr.j().s == 460 || cVarSendDataStr.j().s == 462) {
                com.networkbench.agent.impl.c.g.v("harvestResponse  code  : " + cVarSendDataStr.j().s);
                a();
            }
        } catch (Throwable unused) {
        }
    }

    public void a(com.networkbench.agent.impl.k.b bVar) {
        this.f36469i = bVar;
    }
}
