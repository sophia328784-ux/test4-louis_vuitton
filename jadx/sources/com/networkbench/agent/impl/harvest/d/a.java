package com.networkbench.agent.impl.harvest.d;

import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.util.ab;
import defpackage.md;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class a extends c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Map<String, Object> f37302a;

    @Override // com.networkbench.agent.impl.harvest.d.c
    public void a(String str) throws Exception {
        if (e()) {
            try {
                if (ab.c(str)) {
                    a(86400000L);
                }
                a(TimeUnit.MINUTES.toMillis(new JSONObject(str).getLong("disabledTimeout")));
                return;
            } catch (Throwable unused) {
                g.p("parseResult disabledTimeout error:" + str);
                try {
                    a(86400000L);
                    return;
                } catch (Throwable unused2) {
                    g.p("setDisabledTime disabledTimeout error:" + str);
                    return;
                }
            }
        }
        if (str == null) {
            md.n("parseResult result is null");
            return;
        }
        Map<String, Object> mapE = e(str);
        if (mapE == null || mapE.size() == 0) {
            return;
        }
        String str2 = (String) mapE.get("status");
        this.f37304c = str2;
        if ("success".equals(str2)) {
            if (mapE.containsKey("result")) {
                this.f37302a = (Map) mapE.get("result");
                try {
                    a(com.networkbench.agent.impl.data.c.a.a().a(new JSONObject(str).getJSONObject("result")));
                    return;
                } catch (Throwable unused3) {
                    return;
                }
            }
            return;
        }
        if ("error".equals(this.f37304c) && (mapE.get("result") instanceof Map)) {
            Map map = (Map) mapE.get("result");
            this.d = ((Double) map.get("errorCode")).intValue();
            this.f37305e = map.get("errorMessage").toString();
        }
    }
}
