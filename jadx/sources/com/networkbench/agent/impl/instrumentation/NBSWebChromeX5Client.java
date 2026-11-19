package com.networkbench.agent.impl.instrumentation;

import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.util.r;
import com.networkbench.agent.impl.webview.JsPageUtil;
import com.networkbench.agent.impl.webview.n;
import com.tencent.smtt.sdk.ValueCallback;
import com.tencent.smtt.sdk.WebView;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class NBSWebChromeX5Client {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected static e f37380a = f.a();
    private static n injectController = new n();

    public static void addWebViewBridge(WebView webView) {
        if (r.u().ad() && Harvest.isHttp_network_enabled()) {
            webView.addJavascriptInterface(new NBSJavaScriptBridge(), ConfigurationName.NBS_JS_BRIDGE_NAME);
            webView.addJavascriptInterface(new NBSJSBridgeDom(), "nbsDOMChanged");
        }
    }

    private static void enableJavaScript(WebView webView) {
        if (webView.getSettings().getJavaScriptEnabled()) {
            return;
        }
        webView.getSettings().setJavaScriptEnabled(true);
    }

    public static void initJSMonitorX5(WebView webView, int i2) {
        try {
            if (JsPageUtil.isInjectEnabled(i2)) {
                g.l("webview  initJSMonitor gather  begin !!");
                enableJavaScript(webView);
                if (injectController.a()) {
                    Iterator<String> it = JsPageUtil.getAllInjectJs(webView).iterator();
                    while (it.hasNext()) {
                        injectJs(webView, it.next());
                    }
                }
                injectController.a(i2);
            }
        } catch (Throwable unused) {
        }
    }

    private static void injectJs(WebView webView, String str) {
        webView.evaluateJavascript(JsPageUtil.formatJsWrapper(str), new ValueCallback<String>() { // from class: com.networkbench.agent.impl.instrumentation.NBSWebChromeX5Client.1
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void onReceiveValue(String str2) {
            }
        });
    }
}
