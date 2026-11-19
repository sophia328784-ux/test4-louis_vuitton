package com.networkbench.agent.impl.b;

import android.content.Context;
import com.appsflyer.sdk_base.referrer.Payload;
import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.NBSAppAgent;
import com.networkbench.agent.impl.crash.anomalous.AnomalousCallBackControl;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.harvest.HarvestConnection;
import com.networkbench.agent.impl.harvest.NBSUploadDataInterface;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.p;
import com.networkbench.agent.impl.util.r;
import com.networkbench.agent.impl.util.s;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonParseException;
import com.networkbench.com.google.gson.JsonParser;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.md;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class m implements NBSUploadDataInterface {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static m f36530c = null;
    private static final String d = "NBSAnrStore";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ConcurrentHashMap<String, j> f36532a = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.networkbench.agent.impl.crash.h f36533e;
    private Context g;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final com.networkbench.agent.impl.c.e f36529b = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final AtomicBoolean f36531f = new AtomicBoolean(false);

    private m(Context context) {
        if (context != null) {
            this.f36533e = new com.networkbench.agent.impl.crash.j(context, d);
        }
        this.g = context;
    }

    private JsonArray c(k kVar) {
        return ak.j(kVar.f36523f);
    }

    private void d(k kVar) {
        j jVar = this.f36532a.get(kVar.d());
        if (jVar != null) {
            kVar.d = jVar.f36516a;
            kVar.f36522e = jVar.f36517b;
            kVar.f36520b = 2;
        }
    }

    public JsonObject a(String str, String str2) throws JsonParseException {
        if (str == null) {
            md.n("anr message error");
            return null;
        }
        JsonObject jsonObject = new JsonObject();
        JsonArray asJsonArray = new JsonParser().parse(str).getAsJsonArray();
        JsonArray jsonArray = new JsonArray();
        jsonArray.add(asJsonArray);
        jsonObject.add(DbParams.KEY_DATA, jsonArray);
        if (HarvestConnection.isSoDisable()) {
            jsonObject.addProperty("did", NBSAgent.getImpl().o());
            jsonObject.add("dev", NBSAgent.getDeviceInformation().asJsonArray());
            jsonObject.add(Payload.TYPE_APP, NBSAgent.getApplicationInformation().asJsonArray());
            return jsonObject;
        }
        jsonObject.addProperty("did", NBSAgent.getImpl().o());
        jsonObject.add("dev", NBSAgent.getDeviceInformation().asSocketJsonArray());
        jsonObject.add(Payload.TYPE_APP, NBSAgent.getApplicationInformation().asSocketJsonArray());
        return jsonObject;
    }

    public void b() {
        try {
            if (this.g == null) {
                f36529b.a("user close anr report ");
                return;
            }
            if (!Harvest.isAnr_enabled()) {
                f36529b.f("ANR_enabled() is " + Harvest.isAnr_enabled() + ",stop report ANR!");
                return;
            }
            AtomicBoolean atomicBoolean = f36531f;
            int i2 = 0;
            if (!atomicBoolean.compareAndSet(false, true)) {
                atomicBoolean.set(true);
                return;
            }
            Map<String, ?> mapB = this.f36533e.b();
            if (mapB != null) {
                f36529b.a("report all stored anr ,anrStore size is " + mapB.size());
                for (Map.Entry<String, ?> entry : mapB.entrySet()) {
                    if (com.networkbench.agent.impl.crash.e.a(entry.getKey())) {
                        f36529b.a("Anr has reported, timestamp is " + entry.getKey());
                        return;
                    }
                    String strC = p.c((String) entry.getValue());
                    if (strC != null) {
                        try {
                            JsonObject jsonObjectA = a(strC, r.u().K());
                            if (HarvestConnection.isSoDisable()) {
                                com.networkbench.agent.impl.util.c.a.a().a(new a(jsonObjectA.toString(), this.f36533e, p.c(entry.getKey()), s.f38398a, com.networkbench.agent.impl.j.d.ANR_DATA, ""));
                            } else {
                                com.networkbench.agent.impl.util.c.a.a().a(new com.networkbench.agent.impl.crash.a(jsonObjectA, this.f36533e, p.c(entry.getKey()), com.networkbench.agent.impl.j.d.ANR_DATA.a(), r.u().t()));
                            }
                            com.networkbench.agent.impl.crash.e.b(entry.getKey());
                            com.networkbench.agent.impl.c.e eVar = f36529b;
                            StringBuilder sb = new StringBuilder();
                            sb.append("ThreadPool submit store Anr report Runnable ,Anr num is ");
                            i2++;
                            sb.append(i2);
                            eVar.a(sb.toString());
                        } catch (JsonParseException unused) {
                            f36529b.f("invaild json str for anr");
                            this.f36533e.b(entry.getKey());
                        }
                    }
                }
            }
        } catch (Exception e2) {
            f36529b.a("Exception occur while send stored anr", e2);
        }
    }

    @Override // com.networkbench.agent.impl.harvest.NBSUploadDataInterface
    public boolean isEnableUpload() {
        return r.u().aB();
    }

    public void a(k kVar, boolean z) {
        AnomalousCallBackControl.getInstance().answerAnomalousCallBack(2, kVar.c(), c(kVar), "");
        b(kVar);
        if (isEnableUpload()) {
            f36529b.a("report anr start");
            com.networkbench.agent.impl.crash.e.b(p.b(kVar.d()));
            if (com.networkbench.agent.impl.plugin.f.h.f38058e) {
                com.networkbench.agent.impl.plugin.f.a aVar = new com.networkbench.agent.impl.plugin.f.a(kVar, z);
                com.networkbench.agent.impl.plugin.f.h.a(aVar);
                aVar.d();
            } else {
                try {
                    if (r.u().aC()) {
                        NBSAppAgent.debugLog(kVar.toJsonString(), "TingyunSDK_anr");
                    }
                } catch (Throwable th) {
                    f36529b.a("error reportAnr", th);
                }
                Harvest.getInstance().getHarvestData().blockInfos.add(kVar);
            }
        }
    }

    private void a(Runnable runnable, boolean z) {
        com.networkbench.agent.impl.util.c.a.a().a(runnable);
    }

    public void a(k kVar) {
        try {
            if (Harvest.isAnr_enabled()) {
                f36530c.a(kVar, false);
            }
        } catch (Exception e2) {
            f36529b.a("report failed:", e2);
        }
    }

    public static m a() {
        if (f36530c == null) {
            f36530c = new m(r.u().J());
        }
        return f36530c;
    }

    private String a(String str) {
        return new JsonParser().parse(str).getAsJsonObject().get(DbParams.KEY_DATA).getAsJsonArray().get(0).getAsJsonArray().get(0).getAsString();
    }

    public void b(k kVar, boolean z) {
        d(kVar);
        JsonObject jsonObjectA = a(kVar.asJsonArray().toString(), r.u().K());
        if (HarvestConnection.isSoDisable()) {
            try {
                a(new a(jsonObjectA.toString(), this.f36533e, kVar.d(), s.f38398a, com.networkbench.agent.impl.j.d.ANR_DATA, ""), z);
                return;
            } catch (Exception e2) {
                f36529b.a("error reportAnr", e2);
                return;
            }
        }
        a(new com.networkbench.agent.impl.crash.a(jsonObjectA, this.f36533e, kVar.d(), com.networkbench.agent.impl.j.d.ANR_DATA.a(), r.u().t()), z);
    }

    private void b(k kVar) {
        this.f36533e.a(kVar.d(), kVar.asJson().toString());
    }
}
