package com.networkbench.agent.impl.instrumentation;

import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.util.r;
import com.networkbench.agent.impl.webview.f;
import com.sensorsdata.analytics.android.sdk.jsbridge.JSHookAop;
import com.tencent.smtt.sdk.WebChromeClient;
import com.tencent.smtt.sdk.WebView;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class NBSWebLoadInstrumentX5 {
    private static void configNBSWebChromeClient(WebView webView) {
        if (r.u().v()) {
            try {
                if (Harvest.isHttp_network_enabled() && Harvest.isWebView_enabled()) {
                    WebChromeClient webChromeClient = webView.getWebChromeClient();
                    if (webChromeClient instanceof f) {
                        r.A.a(" nbs webchromeclientX5 already existed  ");
                    } else {
                        webView.setWebChromeClient(new f(webChromeClient));
                        r.A.a("set nbs webchromeclientX5 success");
                    }
                    NBSWebChromeX5Client.addWebViewBridge(webView);
                }
            } catch (Throwable th) {
                r.A.a("set nbs webchromeclientX5 failed:", th);
            }
        }
    }

    public static void loadDataWithBaseURL(Object obj, String str, String str2, String str3, String str4, String str5) {
        if (obj instanceof WebView) {
            r.A.a("webViewProxy instanceof WebView");
            loadDataWithBaseURL((WebView) obj, str, str2, str3, str4, str5);
        }
    }

    public static void loadUrl(Object obj, String str) {
        if (obj instanceof WebView) {
            r.A.a("webViewProxy instanceof x5WebView");
            loadUrl((WebView) obj, str);
        }
    }

    private static void loadDataWithBaseURL(WebView webView, String str, String str2, String str3, String str4, String str5) {
        configNBSWebChromeClient(webView);
        JSHookAop.loadDataWithBaseURL(webView, str, str2, str3, str4, str5);
        webView.loadDataWithBaseURL(str, str2, str3, str4, str5);
    }

    private static void loadUrl(WebView webView, String str, Map<String, String> map) {
        configNBSWebChromeClient(webView);
        JSHookAop.loadUrl(webView, str, map);
        webView.loadUrl(str, map);
    }

    private static void loadUrl(WebView webView, String str) {
        configNBSWebChromeClient(webView);
        JSHookAop.loadUrl(webView, str);
        webView.loadUrl(str);
    }

    public static void loadUrl(Object obj, String str, Map<String, String> map) {
        if (obj instanceof WebView) {
            r.A.a("webViewProxy instanceof WebView");
            loadUrl((WebView) obj, str, map);
        }
    }
}
