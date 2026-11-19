package com.networkbench.agent.impl.instrumentation.nebula;

import android.webkit.ValueCallback;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.webview.JsPageUtil;
import com.networkbench.agent.impl.webview.n;
import com.uc.webview.export.WebView;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class NBSNebulaWebChromeClient {
    private static n injectController = new n();

    private static void a(WebView webView) {
        if (webView.getSettings().getJavaScriptEnabled()) {
            return;
        }
        webView.getSettings().setJavaScriptEnabled(true);
    }

    public static void initJSMonitor(WebView webView, int i2) {
        try {
            if (JsPageUtil.isInjectEnabled(i2)) {
                g.l("webview  initJSMonitor gather  begin !!");
                a(webView);
                if (injectController.a()) {
                    Iterator<String> it = JsPageUtil.getAllInjectJs(webView).iterator();
                    while (it.hasNext()) {
                        a(webView, it.next());
                    }
                }
                injectController.a(i2);
            }
        } catch (Throwable unused) {
        }
    }

    private static void a(WebView webView, String str) {
        webView.evaluateJavascript(JsPageUtil.formatJsWrapper(str), new ValueCallback<String>() { // from class: com.networkbench.agent.impl.instrumentation.nebula.NBSNebulaWebChromeClient.1
            @Override // android.webkit.ValueCallback
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void onReceiveValue(String str2) {
            }
        });
    }
}
