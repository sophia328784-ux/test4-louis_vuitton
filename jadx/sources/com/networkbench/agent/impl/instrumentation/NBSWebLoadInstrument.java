package com.networkbench.agent.impl.instrumentation;

import android.text.TextUtils;
import android.view.View;
import android.webkit.WebChromeClient;
import android.webkit.WebViewClient;
import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.util.r;
import com.sensorsdata.analytics.android.sdk.jsbridge.JSHookAop;
import com.tencent.smtt.sdk.WebView;
import java.lang.reflect.Method;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class NBSWebLoadInstrument {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected static e f37381a = f.a();
    public static int WEBVIEW_TAG = 201609280;

    private static String crocessHeaderStr() {
        if (!r.u().aj()) {
            return "";
        }
        String strA = r.a(r.u().am(), r.ar());
        return !TextUtils.isEmpty(strA) ? strA : "";
    }

    private static Method findMethod(Object obj, String str, Class<?>... clsArr) {
        Method declaredMethod = null;
        for (Class<?> superclass = obj.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
            try {
                declaredMethod = superclass.getDeclaredMethod(str, clsArr);
            } catch (NoSuchMethodException e2) {
                r.A.a("NoSuchMethodException:" + e2.getMessage());
            }
            if (declaredMethod != null) {
                return declaredMethod;
            }
        }
        return null;
    }

    private static boolean isX5WebView(Object obj) {
        try {
            if (!(obj instanceof WebView)) {
                return false;
            }
            r.A.a("webViewProxy instanceof x5 webview");
            return true;
        } catch (Throwable th) {
            r.A.a("isX5Webview:" + th.getMessage());
            return false;
        }
    }

    public static void loadDataWithBaseURL(View view, String str, String str2, String str3, String str4, String str5) {
        if (view instanceof android.webkit.WebView) {
            r.A.a("webViewProxy instanceof WebView");
            loadDataWithBaseURL((android.webkit.WebView) view, str, str2, str3, str4, str5);
            return;
        }
        if (isX5WebView(view)) {
            NBSWebLoadInstrumentX5.loadDataWithBaseURL(view, str, str2, str3, str4, str5);
            return;
        }
        r.A.a("webViewProxy not instanceof WebView or x5webview");
        try {
            Method methodFindMethod = findMethod(view, "loadDataWithBaseURL", String.class, String.class, String.class, String.class, String.class);
            if (methodFindMethod != null) {
                methodFindMethod.setAccessible(true);
                methodFindMethod.invoke(view, str, str2, str3, str4, str5);
            }
        } catch (Throwable th) {
            r.A.a("webViewProxy loadUrl map error", th);
        }
    }

    public static void loadUrl(View view, String str, Map<String, String> map) {
        if (view instanceof android.webkit.WebView) {
            r.A.a("webViewProxy instanceof WebView");
            loadUrl((android.webkit.WebView) view, str, map);
            return;
        }
        if (isX5WebView(view)) {
            NBSWebLoadInstrumentX5.loadUrl(view, str, map);
            return;
        }
        r.A.a("webViewProxy not instanceof WebView or x5webview");
        try {
            Method methodFindMethod = findMethod(view, "loadUrl", String.class, Map.class);
            if (methodFindMethod != null) {
                methodFindMethod.setAccessible(true);
                methodFindMethod.invoke(view, str, map);
            }
        } catch (Throwable th) {
            r.A.a("webViewProxy loadUrl map error", th);
        }
    }

    public static void setWebViewClient(android.webkit.WebView webView, WebViewClient webViewClient) {
        try {
            if (Harvest.isHttp_network_enabled() && Harvest.isWebView_enabled()) {
                webView.getSettings().setJavaScriptEnabled(true);
                webView.addJavascriptInterface(new NBSJavaScriptBridge(), ConfigurationName.NBS_JS_BRIDGE_NAME);
                webView.addJavascriptInterface(new NBSJSBridgeDom(), "nbsDOMChanged");
                int i2 = WEBVIEW_TAG;
                webView.setTag(i2, Integer.valueOf(i2));
                r.A.a("add nbsJsBridge  nbsDOMChanged  success");
            }
            if (Harvest.isHttp_network_enabled() && r.u().aj() && Harvest.isWebView_enabled() && r.u().o()) {
                String userAgentString = webView.getSettings().getUserAgentString();
                if (!TextUtils.isEmpty(userAgentString) && !userAgentString.contains(r.u)) {
                    webView.getSettings().setUserAgentString(userAgentString + " X-Tingyun-Id/" + crocessHeaderStr());
                }
            }
        } catch (Throwable th) {
            r.A.a("set user agent failed:", th);
        }
        webView.setWebViewClient(webViewClient);
    }

    public static void loadUrl(android.webkit.WebView webView, String str, Map<String, String> map) {
        if (r.u().v()) {
            try {
                if (Harvest.isHttp_network_enabled() && Harvest.isWebView_enabled()) {
                    WebChromeClient defaultWebChromeClient = NBSWebChromeClient.getDefaultWebChromeClient(webView);
                    if (defaultWebChromeClient instanceof com.networkbench.agent.impl.webview.e) {
                        r.A.a(" nbs webchromeclient already existed  ");
                    } else {
                        webView.setWebChromeClient(new com.networkbench.agent.impl.webview.e(defaultWebChromeClient));
                        r.A.a("set nbs webchromeclient success");
                    }
                }
            } catch (Throwable th) {
                r.A.a("set nbs webchromeclient failed:", th);
            }
        }
        JSHookAop.loadUrl(webView, str, map);
        webView.loadUrl(str, map);
    }

    public static void loadDataWithBaseURL(android.webkit.WebView webView, String str, String str2, String str3, String str4, String str5) {
        if (r.u().v()) {
            try {
                if (Harvest.isHttp_network_enabled() && Harvest.isWebView_enabled()) {
                    WebChromeClient defaultWebChromeClient = NBSWebChromeClient.getDefaultWebChromeClient(webView);
                    if (defaultWebChromeClient instanceof com.networkbench.agent.impl.webview.e) {
                        r.A.a(" nbs webchromeclient already existed  ");
                    } else {
                        webView.setWebChromeClient(new com.networkbench.agent.impl.webview.e(defaultWebChromeClient));
                        r.A.a("set nbs webchromeclient success");
                    }
                }
            } catch (Throwable th) {
                r.A.a("set nbs webchromeclient failed:", th);
            }
        }
        JSHookAop.loadDataWithBaseURL(webView, str, str2, str3, str4, str5);
        webView.loadDataWithBaseURL(str, str2, str3, str4, str5);
    }

    public static void loadUrl(View view, String str) {
        if (view instanceof android.webkit.WebView) {
            r.A.a("webViewProxy instanceof WebView");
            loadUrl((android.webkit.WebView) view, str);
            return;
        }
        if (isX5WebView(view)) {
            NBSWebLoadInstrumentX5.loadUrl(view, str);
            return;
        }
        r.A.a("webViewProxy not instanceof WebView or x5webview");
        try {
            Method methodFindMethod = findMethod(view, "loadUrl", String.class);
            if (methodFindMethod != null) {
                methodFindMethod.setAccessible(true);
                methodFindMethod.invoke(view, str);
            }
        } catch (Throwable th) {
            r.A.a("webViewProxy loadUrl error", th);
        }
    }

    public static void loadUrl(android.webkit.WebView webView, String str) {
        if (r.u().v()) {
            try {
                if (Harvest.isHttp_network_enabled() && Harvest.isWebView_enabled()) {
                    WebChromeClient defaultWebChromeClient = NBSWebChromeClient.getDefaultWebChromeClient(webView);
                    if (defaultWebChromeClient instanceof com.networkbench.agent.impl.webview.e) {
                        r.A.a(" nbs webchromeclient already existed  ");
                    } else {
                        webView.setWebChromeClient(new com.networkbench.agent.impl.webview.e(defaultWebChromeClient));
                        r.A.a("set nbs webchromeclient success");
                    }
                }
            } catch (Throwable th) {
                r.A.a("set nbs webchromeclient failed:", th);
            }
        }
        JSHookAop.loadUrl(webView, str);
        webView.loadUrl(str);
    }
}
