package com.networkbench.agent.impl.harvest.a;

import android.text.TextUtils;
import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.harvest.HarvestConfiguration;
import com.networkbench.com.google.gson.GsonBuilder;
import com.networkbench.com.google.gson.reflect.TypeToken;
import java.net.HttpURLConnection;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class i extends h {
    public i(String str, boolean z) {
        super(str, z);
        b("ExtensionSendUrl");
    }

    private String d() {
        return a("/reportTaskData?version=" + NBSAgent.getTaskDataVersion() + "&token=" + com.networkbench.agent.impl.util.r.u().K());
    }

    public void a(com.networkbench.agent.impl.harvest.d.c cVar, String str) {
        if (cVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        cVar.d(str);
        synchronized (this) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                String string = jSONObject.getString("status");
                if (string.equals("success")) {
                    cVar.a(new HarvestConfiguration().parseHarvestConfigFromResult(jSONObject.getJSONObject("result")));
                } else if (string.equals("error")) {
                    Map map = (Map) new GsonBuilder().create().fromJson(str, new TypeToken<Map<String, Object>>() { // from class: com.networkbench.agent.impl.harvest.a.i.1
                    }.getType());
                    cVar.c("error");
                    if (map.get("result") instanceof Map) {
                        Map map2 = (Map) map.get("result");
                        cVar.b(((Double) map2.get("errorCode")).intValue());
                        cVar.b(map2.get("errorMessage").toString());
                    }
                    this.d.a(cVar.toString());
                }
            } catch (Throwable th) {
                this.d.e("Error while unpacking JSON response during connect" + th.toString());
            }
        }
    }

    @Override // com.networkbench.agent.impl.harvest.a.h
    public void b(HttpURLConnection httpURLConnection) {
    }

    @Override // com.networkbench.agent.impl.harvest.a.h
    public com.networkbench.agent.impl.harvest.d.c a(String str, com.networkbench.agent.impl.harvest.d.c cVar) {
        cVar.a(0);
        a(cVar, str);
        return cVar;
    }

    @Override // com.networkbench.agent.impl.harvest.a.h
    public String a() {
        return d();
    }
}
