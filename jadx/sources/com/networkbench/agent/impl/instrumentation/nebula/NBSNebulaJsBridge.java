package com.networkbench.agent.impl.instrumentation.nebula;

import android.webkit.JavascriptInterface;
import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;
import com.networkbench.agent.impl.harvest.HarvestConfiguration;
import com.networkbench.agent.impl.instrumentation.NBSJavaScriptBridge;
import com.networkbench.agent.impl.util.ai;
import com.networkbench.agent.impl.webview.m;

/* JADX INFO: loaded from: classes2.dex */
public class NBSNebulaJsBridge {
    private static e log = f.a();

    public static class NBSWebViewResult {
        public String resultData;
        public String resultType;
    }

    @JavascriptInterface
    @com.uc.webview.export.JavascriptInterface
    public static void logJsError(String str, String str2, String str3, String str4, int i2, int i3, String str5, String str6, int i4, int i5, String str7, long j2, int i6) {
        m.a(str, str2, str3, str4, i2, i3, str5, str6, i4, i5, str7, j2, i6);
    }

    @JavascriptInterface
    @com.uc.webview.export.JavascriptInterface
    public static void logJsResult(String str) {
        NBSJavaScriptBridge.NBSWebViewResult nBSWebViewResult = new NBSJavaScriptBridge.NBSWebViewResult();
        nBSWebViewResult.resultType = "pageInfo";
        nBSWebViewResult.resultData = str;
        ai.a(nBSWebViewResult);
    }

    @JavascriptInterface
    @com.uc.webview.export.JavascriptInterface
    public static void logRes(String str) {
        log.a("NBSJavascriptBrige logRes:" + str);
        m.c(str);
    }

    @JavascriptInterface
    @com.uc.webview.export.JavascriptInterface
    public static void postMessage(String str) {
        NBSJavaScriptBridge.NBSWebViewResult nBSWebViewResult = new NBSJavaScriptBridge.NBSWebViewResult();
        nBSWebViewResult.resultType = "browserData";
        nBSWebViewResult.resultData = str;
        ai.a(nBSWebViewResult);
    }

    @JavascriptInterface
    @com.uc.webview.export.JavascriptInterface
    public int its() {
        return HarvestConfiguration.getDefaultHarvestConfiguration() != null ? HarvestConfiguration.getDefaultHarvestConfiguration().getSlowDomThreshold() : HarvestConfiguration.S_DOM_THR;
    }

    @JavascriptInterface
    @com.uc.webview.export.JavascriptInterface
    public void logDebug(String str) {
    }

    @JavascriptInterface
    @com.uc.webview.export.JavascriptInterface
    public int sfp() {
        return HarvestConfiguration.getDefaultHarvestConfiguration() != null ? HarvestConfiguration.getDefaultHarvestConfiguration().getSlowFirstPaintThreshold() : HarvestConfiguration.S_FIRSTPAINT_THR;
    }

    @JavascriptInterface
    @com.uc.webview.export.JavascriptInterface
    public int sfs() {
        return HarvestConfiguration.getDefaultHarvestConfiguration() != null ? HarvestConfiguration.getDefaultHarvestConfiguration().getSlowFirstScreenThreshold() : HarvestConfiguration.S_FIRSTSCREEN_THR;
    }

    @JavascriptInterface
    @com.uc.webview.export.JavascriptInterface
    public int spt() {
        if (HarvestConfiguration.getDefaultHarvestConfiguration() != null) {
            return HarvestConfiguration.getDefaultHarvestConfiguration().getSlowPageThreshold();
        }
        return 7000;
    }
}
