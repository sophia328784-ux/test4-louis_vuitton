package com.networkbench.agent.impl.data.type;

import com.networkbench.agent.impl.NBSAppAgent;
import com.networkbench.agent.impl.harvest.type.HarvestableObject;
import com.networkbench.agent.impl.session.SpanFormat;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;

/* JADX INFO: loaded from: classes2.dex */
public class c extends HarvestableObject implements SpanFormat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f36943a = "AppHotStartData";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static c f36944b = new c();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f36945c;
    private long d;

    public static c a() {
        return f36944b;
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableObject, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public synchronized JsonObject asJsonObject() {
        JsonObject jsonObject;
        jsonObject = new JsonObject();
        jsonObject.add("type", new JsonPrimitive("hotStartMetrics"));
        jsonObject.add("interval", new JsonPrimitive((Number) Long.valueOf(com.networkbench.agent.impl.util.r.u().r())));
        jsonObject.add("timestamp", new JsonPrimitive((Number) Long.valueOf(com.networkbench.agent.impl.util.r.u().g(System.currentTimeMillis()))));
        jsonObject.add(com.batch.android.s.b.a.f24018f, new JsonPrimitive((Number) Integer.valueOf(this.f36945c)));
        jsonObject.add("timestampGener", new JsonPrimitive((Number) Long.valueOf(com.networkbench.agent.impl.util.r.u().e(this.d))));
        return jsonObject;
    }

    public void b() {
        this.f36945c = 0;
    }

    public synchronized void c() {
        try {
            this.f36945c++;
            this.d = System.currentTimeMillis();
            Logger.debug(f36943a, "driveCount:" + this.f36945c);
            try {
                if (com.networkbench.agent.impl.util.r.u().aC()) {
                    NBSAppAgent.debugLog(asJsonObject().toString(), "TingyunSDK_hotStart");
                }
            } catch (Throwable th) {
                Logger.error(f36943a, "driveCount error : ", th);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // com.networkbench.agent.impl.session.SpanFormat
    public boolean checkData() {
        return this.f36945c == 0;
    }

    public boolean d() {
        return this.f36945c > 0;
    }

    @Override // com.networkbench.agent.impl.session.SpanFormat
    public String formatInfo() {
        if (checkData()) {
            return "";
        }
        return "hotStart" + asJsonObject().toString() + "\n";
    }

    @Override // com.networkbench.agent.impl.session.SpanFormat
    public void reset() {
        b();
    }
}
