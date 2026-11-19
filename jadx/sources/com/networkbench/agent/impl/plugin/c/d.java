package com.networkbench.agent.impl.plugin.c;

import com.networkbench.agent.impl.NBSLogger;
import com.networkbench.agent.impl.harvest.type.HarvestableType;
import com.networkbench.agent.impl.plugin.f.i;
import com.networkbench.agent.impl.plugin.h;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.ab;
import com.networkbench.agent.impl.util.r;
import com.networkbench.agent.impl.util.v;
import com.networkbench.com.google.gson.JsonObject;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class d extends h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f37978a = "LogTrackPlugin";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private JSONObject f37979b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f37980c;
    private long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f37981e;
    private boolean r;

    public class a implements Runnable {
        public a() {
        }

        /* JADX WARN: Code duplicated, block: B:40:0x001e A[ExcSplitCross -> B:10:0x001e, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:9:0x001a A[DONT_GENERATE] */
        @Override // java.lang.Runnable
        public void run() {
            try {
                if (d.this.r) {
                    Logger.debug(d.f37978a, "startTime:" + d.this.d + ", endTime:" + d.this.f37981e + ", taskId:" + d.this.f37980c);
                    if (NBSLogger.getLogTraceWrapper() == null) {
                        Logger.warning(d.f37978a, "logTraceWrapper is not init success");
                        if (com.networkbench.agent.impl.util.c.c.c()) {
                        }
                    } else {
                        NBSLogger.getLogTraceWrapper().a(d.this.d, d.this.f37981e, d.this.f37980c);
                        if (com.networkbench.agent.impl.util.c.c.c()) {
                        }
                    }
                } else {
                    Logger.debug(d.f37978a, "logTrack is not allow upload");
                    if (com.networkbench.agent.impl.util.c.c.c()) {
                    }
                }
            } catch (Throwable th) {
                try {
                    boolean z = th instanceof InterruptedException;
                    d dVar = d.this;
                    if (z) {
                        dVar.l = false;
                    } else {
                        dVar.l = true;
                        h.f38121f.f("LogTrackRunnable error: " + th.getMessage());
                    }
                } finally {
                    if (com.networkbench.agent.impl.util.c.c.c()) {
                        d.this.l = false;
                    }
                    ((h) d.this).q.a(d.this.f38124i.f36846a);
                }
            }
        }
    }

    public d(i iVar, com.networkbench.agent.impl.data.c.d dVar) {
        super(HarvestableType.OBJECT, iVar, dVar);
        this.r = false;
        this.f37979b = new JSONObject();
        this.f37980c = "";
        a(iVar.e());
    }

    @Override // com.networkbench.agent.impl.plugin.h
    public void a(Map<String, Object> map) {
        try {
            this.f37979b = this.f38124i.d;
            Logger.debug(f37978a, "logTrackPlugin params:" + this.f37979b + ", taskId:" + this.f38124i.f36846a);
            this.d = this.f37979b.getLong("startTime");
            this.f37981e = this.f37979b.getLong("endTime");
            int i2 = this.f37979b.getInt("uploadType");
            this.f37980c = this.f38124i.f36846a;
            this.r = a(i2);
        } catch (Throwable th) {
            this.l = false;
            Logger.error(f37978a, "parseEnvironment", th);
        }
    }

    @Override // com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonObject asJsonObject() {
        return new JsonObject();
    }

    @Override // com.networkbench.agent.impl.plugin.h
    public boolean b() {
        return false;
    }

    private boolean a(int i2) {
        if (ab.c(this.f37980c)) {
            Logger.warning(f37978a, "logTrackPlugin is empty, please check");
            return false;
        }
        boolean zB = v.b(r.u().J());
        if ((i2 == 0 || i2 == 2) && zB) {
            return true;
        }
        return (i2 == 1 || i2 == 2) && !zB;
    }

    @Override // com.networkbench.agent.impl.plugin.h
    public void a() {
        try {
            com.networkbench.agent.impl.util.c.a.a().a(new a());
        } catch (Throwable th) {
            Logger.error(f37978a, "error execute runnable", th);
        }
    }
}
