package com.networkbench.agent.impl.instrumentation.nebula;

import android.graphics.Bitmap;
import android.net.http.SslError;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.instrumentation.NBSJSBridgeDom;
import com.networkbench.agent.impl.instrumentation.NBSWebLoadInstrument;
import com.networkbench.agent.impl.util.r;
import com.networkbench.agent.impl.webview.a.c;
import com.networkbench.agent.impl.webview.j;
import com.uc.webview.export.SslErrorHandler;
import com.uc.webview.export.WebResourceError;
import com.uc.webview.export.WebResourceRequest;
import com.uc.webview.export.WebResourceResponse;
import com.uc.webview.export.WebView;
import com.uc.webview.export.WebViewClient;

/* JADX INFO: loaded from: classes2.dex */
public class NBSNebulaWebViewClient extends WebViewClient {
    private boolean isAddJavascript = false;
    private String mainPageUrl;

    @Deprecated
    public void a() {
    }

    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        g.d("onPageFinished, str:" + str);
    }

    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        this.mainPageUrl = str;
        g.d("onPageStarted: " + str);
        if (Harvest.isHttp_network_enabled() && Harvest.isWebView_enabled() && webView.getTag(NBSWebLoadInstrument.WEBVIEW_TAG) == null) {
            webView.addJavascriptInterface(new NBSNebulaJsBridge(), ConfigurationName.NBS_JS_BRIDGE_NAME);
            int i2 = NBSWebLoadInstrument.WEBVIEW_TAG;
            webView.setTag(i2, Integer.valueOf(i2));
            webView.addJavascriptInterface(new NBSJSBridgeDom(), "nbsDOMChanged");
        }
    }

    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        if (r.u().ad() && r.u().V()) {
            try {
                if (r.u().ad() && r.u().V()) {
                    r.A.a("onReceivedError up 23 ");
                    c.a(webResourceRequest, webResourceError, this.mainPageUrl);
                }
            } catch (Exception unused) {
                r.A.f("onReceivedError processErrorUp23 error!");
            }
        }
        super.onReceivedError(webView, webResourceRequest, webResourceError);
    }

    public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        if (r.u().ad() && r.u().V()) {
            try {
                if (r.u().ad() && r.u().V()) {
                    r.A.a("onReceivedHttpError up 23 ");
                    c.a(webResourceRequest, webResourceResponse, this.mainPageUrl);
                }
            } catch (Throwable unused) {
                r.A.f("onReceivedHttpError processHttpErrorUp23 error!");
            }
        }
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
    }

    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        if (r.u().ad() && r.u().V()) {
            try {
                if (r.u().ad() && r.u().V()) {
                    r.A.a("onReceivedSslError up 23 ");
                    j.a(sslError, this.mainPageUrl);
                }
            } catch (Throwable unused) {
                r.A.f("onReceivedSslError processSslError error!");
            }
        }
        super.onReceivedSslError(webView, sslErrorHandler, sslError);
    }

    public void onReceivedError(WebView webView, int i2, String str, String str2) {
        if (r.u().ad()) {
            r.u().V();
        }
        super.onReceivedError(webView, i2, str, str2);
    }
}
