package com.networkbench.agent.impl.instrumentation;

import android.webkit.JavascriptInterface;
import com.networkbench.agent.impl.NBSAppAgent;
import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.harvest.HarvestConfiguration;
import com.networkbench.agent.impl.util.ai;
import com.networkbench.agent.impl.webview.m;
import com.networkbench.com.google.gson.Gson;
import com.sensorsdata.analytics.android.sdk.plugin.property.beans.SAPropertyFilter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes2.dex */
public class NBSJavaScriptBridge {
    private static e log = f.a();
    private static String METHOD = "method";
    private static String PARAMS = "params";

    public static class NBSWebViewResult {
        public String resultData;
        public String resultType;
    }

    public static Map<String, Object> JsonToHashMap(JSONObject jSONObject) {
        HashMap map = new HashMap();
        try {
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String strValueOf = String.valueOf(itKeys.next());
                map.put(strValueOf, jSONObject.get(strValueOf).toString());
            }
            return map;
        } catch (Throwable th) {
            g.b("JsonToHashMap has an error : ", th);
            return map;
        }
    }

    public static Map<String, Object> a(JSONObject jSONObject) {
        return JsonToHashMap(jSONObject);
    }

    @JavascriptInterface
    public static void logJsError(String str, String str2, String str3, String str4, int i2, int i3, String str5, String str6, int i4, int i5, String str7, long j2, int i6) {
        m.a(str, str2, str3, str4, i2, i3, str5, str6, i4, i5, str7, j2, i6);
    }

    @JavascriptInterface
    public static void logJsResult(String str) {
        try {
            NBSWebViewResult nBSWebViewResult = new NBSWebViewResult();
            nBSWebViewResult.resultType = "pageInfo";
            nBSWebViewResult.resultData = str;
            ai.a(nBSWebViewResult);
        } catch (Throwable th) {
            g.b("logJsResult has an error : ", th);
        }
    }

    @JavascriptInterface
    public static void logRes(String str) {
        try {
            log.a("NBSJavascriptBrige logRes:" + str);
            m.c(str);
        } catch (Throwable th) {
            g.b("logRes has an error : ", th);
        }
    }

    @JavascriptInterface
    public static void postMessage(String str) {
        try {
            m.g(str);
        } catch (Throwable th) {
            g.b("postMessage has an error : ", th);
        }
    }

    private void toggleDataCollect(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            String str2 = (String) jSONObject.get(METHOD);
            JSONObject jSONObject2 = jSONObject.getJSONObject(PARAMS);
            if (jSONObject2 != null) {
                if (str2.equals("setBusinessLine")) {
                    NBSAppAgent.setBusinessLine((String) jSONObject2.get(ConfigurationName.KEY), (String) jSONObject2.get("value"));
                    return;
                }
                if (str2.equals("reportError")) {
                    NBSAppAgent.reportErrorWeb((String) jSONObject2.get("message"), a(jSONObject2.getJSONObject("metaData")), jSONObject2.getString(MvelScriptManager.VAR_EXCEPTION), 2);
                } else if (str2.equals("onEvent")) {
                    NBSAppAgent.onEvent((String) jSONObject2.get("eventID"), (String) jSONObject2.get("eventTag"), a(jSONObject2.getJSONObject("eventProperties")));
                } else if (str2.equals("reportEvent")) {
                    NBSAppAgent.reportEvent((String) jSONObject2.get("name"), a(jSONObject2.getJSONObject(SAPropertyFilter.PROPERTIES)));
                }
            }
        } catch (Throwable th) {
            g.b("toggleDataCollect has an error : ", th);
        }
    }

    @JavascriptInterface
    public int its() {
        return HarvestConfiguration.getDefaultHarvestConfiguration() != null ? HarvestConfiguration.getDefaultHarvestConfiguration().getSlowDomThreshold() : HarvestConfiguration.S_DOM_THR;
    }

    @JavascriptInterface
    public void logDebug(String str) {
    }

    @JavascriptInterface
    public void onEvent(String str, String str2, String str3) {
        Map map;
        if (Harvest.isWebView_enabled()) {
            try {
                map = (Map) new Gson().fromJson(str3, (Class) new HashMap().getClass());
            } catch (Throwable unused) {
                map = null;
            }
            NBSAppAgent.onEvent(str, str2, map);
        }
    }

    @JavascriptInterface
    public void parseArguments(String str) {
        try {
            toggleDataCollect(str);
        } catch (Throwable th) {
            g.b("parseArguments has an error : ", th);
        }
    }

    @JavascriptInterface
    public int sfp() {
        return HarvestConfiguration.getDefaultHarvestConfiguration() != null ? HarvestConfiguration.getDefaultHarvestConfiguration().getSlowFirstPaintThreshold() : HarvestConfiguration.S_FIRSTPAINT_THR;
    }

    @JavascriptInterface
    public int sfs() {
        return HarvestConfiguration.getDefaultHarvestConfiguration() != null ? HarvestConfiguration.getDefaultHarvestConfiguration().getSlowFirstScreenThreshold() : HarvestConfiguration.S_FIRSTSCREEN_THR;
    }

    @JavascriptInterface
    public int spt() {
        if (HarvestConfiguration.getDefaultHarvestConfiguration() != null) {
            return HarvestConfiguration.getDefaultHarvestConfiguration().getSlowPageThreshold();
        }
        return 7000;
    }

    @JavascriptInterface
    public void onEvent(String str) {
        if (Harvest.isWebView_enabled()) {
            log.a("onWebViewEvent : " + str);
            NBSAppAgent.onEvent(str);
        }
    }
}
