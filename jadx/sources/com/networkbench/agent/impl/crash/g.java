package com.networkbench.agent.impl.crash;

import android.content.Context;
import android.text.TextUtils;
import com.appsflyer.sdk_base.referrer.Payload;
import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.NBSAppAgent;
import com.networkbench.agent.impl.crash.anomalous.AnomalousCallBackControl;
import com.networkbench.agent.impl.harvest.HarvestConfiguration;
import com.networkbench.agent.impl.harvest.HarvestConnection;
import com.networkbench.agent.impl.harvest.NBSUploadDataInterface;
import com.networkbench.agent.impl.instrumentation.TingyunErrorEventFeedBack;
import com.networkbench.agent.impl.util.ab;
import com.networkbench.agent.impl.util.p;
import com.networkbench.agent.impl.util.r;
import com.networkbench.agent.impl.util.s;
import com.networkbench.agent.impl.util.v;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonElement;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonParseException;
import com.networkbench.com.google.gson.JsonParser;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.md;
import defpackage.z81;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class g implements f, NBSUploadDataInterface {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static Context f36653a;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static g f36656f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    TingyunErrorEventFeedBack f36657c;
    private h g = new j(f36653a, f36654b);
    private static final com.networkbench.agent.impl.c.e d = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final AtomicBoolean f36655e = new AtomicBoolean(false);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static String f36654b = "NBSCrashStore";

    private g() {
    }

    public void a(c cVar, boolean z) {
        AnomalousCallBackControl.getInstance().answerAnomalousCallBack(1, cVar.c(), cVar.d(), (JsonArray) null);
        if (f36653a == null) {
            return;
        }
        if (!ab.c(cVar.g()) || cVar.f() == 2) {
            try {
                if (r.u().aC()) {
                    NBSAppAgent.debugLog(cVar.asJsonArray().toString(), "TingyunSDK_OOM");
                }
            } catch (Throwable th) {
                com.networkbench.agent.impl.c.g.b("reportCrash debugLog has error", th);
            }
        } else {
            try {
                if (r.u().aC()) {
                    NBSAppAgent.debugLog(cVar.asJsonArray().toString(), "TingyunSDK_crash");
                }
            } catch (Throwable th2) {
                com.networkbench.agent.impl.c.g.b("reportCrash debugLog has error", th2);
            }
        }
        this.g.a(cVar.i(), cVar.asJsonArray().toString());
        if (r.u().k()) {
            if (NBSAgent.getImpl() == null) {
                d.a("not init the sdk, skip report");
                return;
            }
            if (isEnableUpload()) {
                com.networkbench.agent.impl.c.e eVar = d;
                eVar.a("report crash start");
                e.b(p.b(cVar.i()));
                if (!com.networkbench.agent.impl.plugin.f.h.f38059f) {
                    b(cVar, z);
                    return;
                }
                com.networkbench.agent.impl.plugin.f.b bVar = new com.networkbench.agent.impl.plugin.f.b(cVar, f36653a);
                com.networkbench.agent.impl.plugin.f.h.a(bVar);
                bVar.d();
                a(1000L);
                bVar.b();
                if (cVar.e().size() > 0) {
                    String string = cVar.asJsonArray().toString();
                    z81.j("scene store value:", string, eVar);
                    this.g.a(cVar.i(), string);
                }
                b(cVar, z);
            }
        }
    }

    public void b() {
        Map<String, ?> mapB;
        try {
            if (f36653a == null) {
                d.a("user close crash report ");
                return;
            }
            if (!com.networkbench.agent.impl.harvest.b.b.a().h()) {
                d.f("checkSwitchOfCrash is false stop report crash");
                return;
            }
            if (r.u().k()) {
                int i2 = 0;
                if (f36655e.compareAndSet(false, true) && (mapB = this.g.b()) != null) {
                    d.a("report all stored crash ,crashStore size is " + mapB.size());
                    for (Map.Entry<String, ?> entry : mapB.entrySet()) {
                        if (e.a(entry.getKey())) {
                            d.a("crash has reported, timestamp is " + p.c(entry.getKey()));
                            return;
                        }
                        String strC = p.c((String) entry.getValue());
                        if (strC != null) {
                            try {
                                JsonArray jsonArrayA = a(strC, r.u().K());
                                JsonObject jsonObjectA = a(jsonArrayA, r.u().K());
                                if (HarvestConnection.isSoDisable()) {
                                    com.networkbench.agent.impl.b.a aVar = new com.networkbench.agent.impl.b.a(jsonObjectA.toString(), this.g, p.c(entry.getKey()), s.f38398a, com.networkbench.agent.impl.j.d.CRASH_DATA, a(jsonArrayA));
                                    a(jsonArrayA, aVar);
                                    com.networkbench.agent.impl.util.c.a.b().a(aVar);
                                } else {
                                    com.networkbench.agent.impl.util.c.a.b().a(new a(jsonObjectA, this.g, p.c(entry.getKey() + ""), com.networkbench.agent.impl.j.d.CRASH_DATA.a(), a(jsonArrayA)));
                                }
                                e.b(entry.getKey());
                                com.networkbench.agent.impl.c.e eVar = d;
                                StringBuilder sb = new StringBuilder();
                                sb.append("ThreadPool submit store crash report Runnable ,crash num is ");
                                i2++;
                                sb.append(i2);
                                eVar.a(sb.toString());
                            } catch (JsonParseException unused) {
                                d.f("invaild json str for crash");
                                this.g.b(p.c(entry.getKey()));
                            }
                        }
                    }
                }
            }
        } catch (Throwable th) {
            d.a("Exception occur while send stored crash", th);
        }
    }

    @Override // com.networkbench.agent.impl.harvest.NBSUploadDataInterface
    public boolean isEnableUpload() {
        return r.u().aB();
    }

    @Override // com.networkbench.agent.impl.crash.f
    public boolean isSpan() {
        return false;
    }

    @Override // com.networkbench.agent.impl.crash.f
    public void notifyCrash(Thread thread, Throwable th, long j2) {
        try {
            String strD = r.u().d(System.currentTimeMillis());
            a(NBSErrorEventType.crash, strD);
            NBSAgent.getImpl().p().b(strD);
            f36656f.a(new c(th, j2, v.g(f36653a), v.c("1"), Thread.getAllStackTraces(), strD), true);
        } catch (Throwable th2) {
            com.networkbench.agent.impl.harvest.b.a.a().a(com.networkbench.agent.impl.harvest.b.a.f37290b, 0, true);
            d.a("catch an Exception during reporting an user crash ", th2);
        }
    }

    public static void a(Context context) {
        f36653a = context;
    }

    public static g a() {
        if (f36656f == null) {
            f36656f = new g();
        }
        return f36656f;
    }

    private void a(Runnable runnable, boolean z) {
        Thread thread = new Thread(runnable);
        thread.start();
        if (z) {
            try {
                thread.join(HarvestConfiguration.SLOW_USER_ACTION_THRESHOLD);
            } catch (InterruptedException e2) {
                thread.interrupt();
                d.a("Exception occur while waiting to send crash", e2);
            }
        }
    }

    private void a(long j2) {
        try {
            Thread.sleep(j2);
        } catch (Throwable th) {
            d.a("Exception occur in blockCrashHandlerForUpload while waiting to send crash", th);
        }
    }

    public JsonArray a(String str, String str2) throws JsonParseException {
        if (str != null) {
            return new JsonParser().parse(str).getAsJsonArray();
        }
        md.n("crash message error");
        return null;
    }

    public JsonObject a(JsonArray jsonArray, String str) throws JsonParseException {
        if (jsonArray != null) {
            JsonObject jsonObject = new JsonObject();
            JsonArray jsonArray2 = new JsonArray();
            jsonArray2.add(jsonArray);
            jsonObject.add(DbParams.KEY_DATA, jsonArray2);
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
        md.n("crash message error");
        return null;
    }

    private String a(JsonArray jsonArray) {
        if (jsonArray != null) {
            return a(jsonArray, 14).getAsString();
        }
        return "";
    }

    private String a(JsonArray jsonArray, com.networkbench.agent.impl.b.a aVar) {
        if (jsonArray != null) {
            try {
                String asString = a(jsonArray, 17).getAsString();
                if (!TextUtils.isEmpty(asString)) {
                    JsonObject asJsonObject = new JsonParser().parse(asString).getAsJsonObject();
                    JsonElement jsonElement = asJsonObject.get("session_id");
                    JsonElement jsonElement2 = asJsonObject.get("action_id");
                    JsonElement jsonElement3 = asJsonObject.get("features");
                    JsonElement jsonElement4 = asJsonObject.get("view_id");
                    if (jsonElement != null) {
                        com.networkbench.agent.impl.k.b bVar = new com.networkbench.agent.impl.k.b(jsonElement.getAsString());
                        if (jsonElement2 != null) {
                            bVar.f37423c = jsonElement2.getAsString();
                        }
                        if (jsonElement4 != null) {
                            bVar.f37422b = jsonElement4.getAsString();
                        }
                        if (jsonElement3 != null) {
                            bVar.f37424e = jsonElement3.getAsString();
                        }
                        aVar.a(bVar);
                        com.networkbench.agent.impl.c.g.A("NBSCrashReporter  seriesData :" + bVar.toString());
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return "";
    }

    private JsonElement a(JsonObject jsonObject, String str) {
        if (jsonObject != null && str != null) {
            return jsonObject.get(str);
        }
        md.n("error getElementFromJO");
        return null;
    }

    private JsonElement a(JsonArray jsonArray, int i2) throws IndexOutOfBoundsException {
        if (jsonArray != null && i2 >= 0) {
            return jsonArray.get(i2);
        }
        md.n("error");
        return null;
    }

    public void a(TingyunErrorEventFeedBack tingyunErrorEventFeedBack) {
        this.f36657c = tingyunErrorEventFeedBack;
    }

    public void a(NBSErrorEventType nBSErrorEventType, String str) {
        TingyunErrorEventFeedBack tingyunErrorEventFeedBack = this.f36657c;
        if (tingyunErrorEventFeedBack != null) {
            tingyunErrorEventFeedBack.errorEventFeedBack(nBSErrorEventType, str);
        }
    }

    public void b(c cVar, boolean z) {
        JsonObject jsonObjectA = a(cVar.asJsonArray(), r.u().K());
        if (HarvestConnection.isSoDisable()) {
            try {
                com.networkbench.agent.impl.b.a aVar = new com.networkbench.agent.impl.b.a(jsonObjectA.toString(), this.g, cVar.i(), s.f38398a, com.networkbench.agent.impl.j.d.CRASH_DATA, cVar.b());
                if (cVar.a() != null) {
                    aVar.a(cVar.a());
                }
                a(aVar, z);
            } catch (Exception e2) {
                d.a("reportCrash error", e2);
            }
        }
    }
}
