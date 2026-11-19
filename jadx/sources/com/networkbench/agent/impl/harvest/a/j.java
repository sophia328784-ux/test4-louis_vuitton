package com.networkbench.agent.impl.harvest.a;

import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.util.ab;
import com.networkbench.com.google.gson.GsonBuilder;
import com.networkbench.com.google.gson.reflect.TypeToken;
import java.net.HttpURLConnection;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class j extends h {
    public j(String str, boolean z) {
        super(str, z);
        b("ExtensionUrl");
    }

    private void b(String str, com.networkbench.agent.impl.harvest.d.c cVar) {
        if (cVar == null || ab.c(str)) {
            return;
        }
        cVar.d(str);
        synchronized (this) {
            try {
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    try {
                        String string = jSONObject.getString("status");
                        if (string.equals("success")) {
                            try {
                                cVar.a(com.networkbench.agent.impl.data.c.a.a().a(jSONObject.getJSONObject("result")));
                            } catch (Throwable unused) {
                            }
                        } else if (string.equals("error")) {
                            Map map = (Map) new GsonBuilder().create().fromJson(str, new TypeToken<Map<String, Object>>() { // from class: com.networkbench.agent.impl.harvest.a.j.1
                            }.getType());
                            cVar.c("error");
                            if (map.get("result") instanceof Map) {
                                Map map2 = (Map) map.get("result");
                                cVar.b(((Double) map2.get("errorCode")).intValue());
                                cVar.b(map2.get("errorMessage").toString());
                            }
                            this.d.a(cVar.toString());
                        }
                    } catch (Throwable unused2) {
                    }
                } catch (Throwable th) {
                    this.d.a("Error while unpacking ExtensionUrl response during connect", th);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private String d() {
        return a("/getTaskDefs?version=" + NBSAgent.getTaskDataVersion() + "&token=" + com.networkbench.agent.impl.util.r.u().K());
    }

    @Override // com.networkbench.agent.impl.harvest.a.h
    public com.networkbench.agent.impl.harvest.d.c a(String str, com.networkbench.agent.impl.harvest.d.c cVar) {
        try {
            b(str, cVar);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return super.a(str, cVar);
    }

    @Override // com.networkbench.agent.impl.harvest.a.h
    public String a() {
        return d();
    }

    @Override // com.networkbench.agent.impl.harvest.a.h
    public void b(HttpURLConnection httpURLConnection) {
    }
}
