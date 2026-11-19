package com.networkbench.agent.impl.harvest.a;

import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.harvest.HarvestConfiguration;
import com.networkbench.agent.impl.util.ab;
import com.networkbench.com.google.gson.GsonBuilder;
import com.networkbench.com.google.gson.reflect.TypeToken;
import defpackage.z81;
import java.net.HttpURLConnection;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class e extends h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f37257a = "SymmetryKey";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static String f37258b = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String f37259c = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.networkbench.agent.impl.c.e f37260f;

    public e(String str, boolean z) {
        super(str, z);
        this.f37260f = com.networkbench.agent.impl.c.f.a();
        b("ConnectionUrl");
    }

    public void a(com.networkbench.agent.impl.harvest.d.c cVar, String str) {
        com.networkbench.agent.impl.c.j.b("initMobileApp resp: " + str);
        if (cVar.e()) {
            try {
                if (ab.c(str)) {
                    cVar.a(86400000L);
                    return;
                } else {
                    cVar.a(TimeUnit.MINUTES.toMillis(new JSONObject(str).getLong("disabledTimeout")));
                    return;
                }
            } catch (Throwable unused) {
                z81.j("init disabledTimeout error:", str, this.f37260f);
                cVar.a(86400000L);
            }
        }
        if (ab.c(str)) {
            return;
        }
        cVar.d(str);
        synchronized (this) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                String string = jSONObject.getString("status");
                if (string.equals("success")) {
                    cVar.a(new HarvestConfiguration().parseHarvestConfigFromResult(jSONObject.getJSONObject("result")));
                    cVar.a(com.networkbench.agent.impl.data.c.a.a());
                } else if (string.equals("error")) {
                    Map map = (Map) new GsonBuilder().create().fromJson(str, new TypeToken<Map<String, Object>>() { // from class: com.networkbench.agent.impl.harvest.a.e.1
                    }.getType());
                    cVar.c("error");
                    if (map.get("result") instanceof Map) {
                        Map map2 = (Map) map.get("result");
                        cVar.b(((Double) map2.get("errorCode")).intValue());
                        cVar.b(map2.get("errorMessage").toString());
                    }
                    this.f37260f.a(cVar.toString());
                }
            } catch (Throwable th) {
                this.f37260f.e("Error while unpacking JSON response during connect" + th.toString());
            }
        }
    }

    @Override // com.networkbench.agent.impl.harvest.a.h
    public void b(HttpURLConnection httpURLConnection) {
    }

    @Override // com.networkbench.agent.impl.harvest.a.h
    public com.networkbench.agent.impl.harvest.d.c a(String str, com.networkbench.agent.impl.harvest.d.c cVar) {
        a(cVar, str);
        return cVar;
    }

    @Override // com.networkbench.agent.impl.harvest.a.h
    public void a(long j2) {
        long jCurrentTimeMillis = System.currentTimeMillis() - j2;
        if (Math.abs(jCurrentTimeMillis) >= com.networkbench.agent.impl.util.r.x) {
            com.networkbench.agent.impl.util.r.u().h(jCurrentTimeMillis);
        } else {
            com.networkbench.agent.impl.util.r.u().h(0L);
        }
    }

    @Override // com.networkbench.agent.impl.harvest.a.h
    public String a() {
        return a("/initMobileApp?version=" + NBSAgent.getHttpDataVersion());
    }
}
