package com.networkbench.agent.impl.webview;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.com.google.gson.GsonBuilder;
import com.networkbench.com.google.gson.reflect.TypeToken;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f38495a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f38496b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    String f38497c;
    Map d;

    public c(String str) throws JSONException {
        this.f38496b = str;
        JSONObject jSONObject = new JSONObject(str).getJSONObject("params").getJSONObject("ri");
        this.f38495a = jSONObject.getString(ConfigurationName.DOWNLOAD_PLUGIN_URL);
        this.f38497c = jSONObject.getString("body");
        this.d = a(jSONObject.getJSONObject("header").toString());
    }

    public static Map<String, Object> a(String str) {
        return (Map) new GsonBuilder().create().fromJson(str, new TypeToken<Map<String, Object>>() { // from class: com.networkbench.agent.impl.webview.c.1
        }.getType());
    }
}
