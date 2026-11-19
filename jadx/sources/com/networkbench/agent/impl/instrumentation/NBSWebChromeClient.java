package com.networkbench.agent.impl.instrumentation;

import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.util.d;
import com.networkbench.agent.impl.webview.JsPageUtil;
import com.networkbench.agent.impl.webview.n;
import defpackage.v7;
import java.lang.reflect.Field;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class NBSWebChromeClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected static e f37379a = f.a();
    private static n injectController = new n();

    private static void enableJavaScript(WebView webView) {
        if (webView.getSettings().getJavaScriptEnabled()) {
            return;
        }
        webView.getSettings().setJavaScriptEnabled(true);
    }

    public static WebChromeClient getDefaultWebChromeClient(WebView webView) {
        return webView.getWebChromeClient();
    }

    public static WebChromeClient getWebChromeClientReflect(WebView webView) {
        try {
            Field declaredField = WebView.class.getDeclaredField("mProvider");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(webView);
            f37379a.a("mProviderRealClass:".concat(obj.getClass().getName()));
            Field declaredField2 = obj.getClass().getDeclaredField("mContentsClientAdapter");
            declaredField2.setAccessible(true);
            Object obj2 = declaredField2.get(obj);
            Field declaredField3 = obj2.getClass().getDeclaredField("mWebChromeClient");
            declaredField3.setAccessible(true);
            Object obj3 = declaredField3.get(obj2);
            if (obj3 == null) {
                f37379a.a("mWebChromeClient == null");
                f37379a.f("getWebChromeClientReflect not find webchromeclient");
                return null;
            }
            f37379a.a("mWebChromeClient class name:".concat(obj3.getClass().getName()));
            if (obj3 instanceof WebChromeClient) {
                return (WebChromeClient) obj3;
            }
            f37379a.f("webchromeclient type is error");
            throw new d("webchromeclient type is error");
        } catch (d unused) {
            v7.h("webchromeclient type is error");
            return null;
        } catch (Throwable th) {
            f37379a.a("getWebChromeClientReflect error:", th);
        }
    }

    public static void initJSMonitor(WebView webView, int i2) {
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
        webView.evaluateJavascript(JsPageUtil.formatJsWrapper(str), new ValueCallback<String>() { // from class: com.networkbench.agent.impl.instrumentation.NBSWebChromeClient.1
            @Override // android.webkit.ValueCallback
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void onReceiveValue(String str2) {
            }
        });
    }
}
