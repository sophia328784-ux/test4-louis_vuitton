package com.networkbench.agent.impl.harvest.a;

import com.dynatrace.android.callback.Callback;
import com.networkbench.agent.impl.harvest.HarvestConnection;
import com.networkbench.agent.impl.util.ab;
import com.networkbench.agent.impl.util.af;
import com.networkbench.com.google.gson.GsonBuilder;
import com.networkbench.com.google.gson.reflect.TypeToken;
import defpackage.z81;
import java.net.HttpURLConnection;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class n extends h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f37278a = "Date";

    public n(String str, boolean z) {
        super(str, z);
        b("RedirectUrl");
    }

    private void a(com.networkbench.agent.impl.harvest.d.c cVar, String str) {
        cVar.d(str);
        com.networkbench.agent.impl.c.j.b("redirect resp: " + str);
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
                z81.j("init disabledTimeout error:", str, this.d);
                try {
                    cVar.a(86400000L);
                } catch (Throwable unused2) {
                    z81.j("setDisabledTime disabledTimeout error:", str, this.d);
                }
            }
        }
        Map<String, Object> map = (Map) new GsonBuilder().create().fromJson(str, new TypeToken<Map<String, Object>>() { // from class: com.networkbench.agent.impl.harvest.a.n.1
        }.getType());
        if (map == null || map.size() == 0) {
            this.d.a("Failed to retrieve collector response: cause responseResult is null");
            return;
        }
        String str2 = (String) map.get("status");
        if ("success".equals(str2)) {
            c(str);
            a(cVar, map);
        } else if ("error".equals(str2)) {
            b(cVar, map);
        }
    }

    private void b(com.networkbench.agent.impl.harvest.d.c cVar, Map<String, Object> map) {
        cVar.c("error");
        if (map.get("result") instanceof Map) {
            Map map2 = (Map) map.get("result");
            cVar.b(((Double) map2.get("errorCode")).intValue());
            cVar.b(map2.get("errorMessage").toString());
        }
    }

    private void c(String str) {
        if (ab.c(str)) {
            return;
        }
        new af(com.networkbench.agent.impl.util.r.u().J()).a(HarvestConnection.INIT_SP_TAG, str);
    }

    @Override // com.networkbench.agent.impl.harvest.a.h
    public void c(HttpURLConnection httpURLConnection) {
        if (Callback.e(f37278a, httpURLConnection) != null) {
            m.a().a(Callback.e(f37278a, httpURLConnection));
        }
    }

    @Override // com.networkbench.agent.impl.harvest.a.h
    public void b(HttpURLConnection httpURLConnection) {
    }

    @Override // com.networkbench.agent.impl.harvest.a.h
    public com.networkbench.agent.impl.harvest.d.c a(String str, com.networkbench.agent.impl.harvest.d.c cVar) {
        try {
            a(cVar, str);
            return cVar;
        } catch (Exception e2) {
            this.d.a("error redirect getHarvestResponse", e2);
            return cVar;
        }
    }

    @Override // com.networkbench.agent.impl.harvest.a.h
    public String a() {
        return a("/getMobileRedirectHost");
    }

    private void a(com.networkbench.agent.impl.harvest.d.c cVar, Map<String, Object> map) {
        cVar.c("success");
        this.d.a("result content:" + map.get("result"));
        cVar.b(map.containsKey("result") ? map.get("result").toString() : "");
        a(map);
    }

    private void a(Map<String, Object> map) {
        m.a().a(map);
    }
}
