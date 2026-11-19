package com.networkbench.agent.impl.instrumentation;

import android.graphics.Bitmap;
import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.util.r;
import com.networkbench.agent.impl.webview.j;
import com.tencent.smtt.export.external.interfaces.SslError;
import com.tencent.smtt.export.external.interfaces.SslErrorHandler;
import com.tencent.smtt.export.external.interfaces.WebResourceError;
import com.tencent.smtt.export.external.interfaces.WebResourceRequest;
import com.tencent.smtt.export.external.interfaces.WebResourceResponse;
import com.tencent.smtt.sdk.WebView;
import com.tencent.smtt.sdk.WebViewClient;

/* JADX INFO: loaded from: classes2.dex */
public class NBSWebViewClientX5 extends WebViewClient {
    private boolean isAddJavascript = false;
    private String mainPageUrl;

    @Deprecated
    public void a() {
    }

    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        try {
            this.mainPageUrl = str;
            g.d("onPageStarted: " + str);
            if (Harvest.isHttp_network_enabled() && Harvest.isWebView_enabled() && webView.getTag(NBSWebLoadInstrument.WEBVIEW_TAG) == null) {
                webView.addJavascriptInterface(new NBSJavaScriptBridge(), ConfigurationName.NBS_JS_BRIDGE_NAME);
                webView.addJavascriptInterface(new NBSJSBridgeDom(), "nbsDOMChanged");
                int i2 = NBSWebLoadInstrument.WEBVIEW_TAG;
                webView.setTag(i2, Integer.valueOf(i2));
            }
        } catch (Throwable th) {
            g.d("onPageStarted error:" + th.getMessage());
        }
    }

    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        if (r.u().ad() && r.u().V()) {
            try {
                if (Harvest.isWebView_enabled()) {
                    e eVar = r.A;
                    eVar.a("onReceivedError up 23 ");
                    j.a(webResourceRequest, webResourceError, this.mainPageUrl);
                    eVar.a("WebResourceResponse : " + webResourceError.getErrorCode());
                    eVar.a("WebResourceRequest : " + webResourceRequest.getUrl());
                }
            } catch (Throwable th) {
                g.d("onReceivedHttpError error:" + th.getMessage());
            }
        }
        super.onReceivedError(webView, webResourceRequest, webResourceError);
    }

    public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        if (r.u().ad() && r.u().V()) {
            try {
                if (Harvest.isWebView_enabled()) {
                    e eVar = r.A;
                    eVar.a("onReceivedHttpError up 23 ");
                    j.a(webResourceRequest, webResourceResponse, this.mainPageUrl);
                    eVar.a("WebResourceResponse : " + webResourceResponse.getStatusCode());
                    eVar.a("WebResourceRequest : " + webResourceRequest.getUrl());
                }
            } catch (Throwable th) {
                g.d("onReceivedHttpError error:" + th.getMessage());
            }
        }
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
    }

    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        if (r.u().ad() && r.u().V()) {
            try {
                if (Harvest.isWebView_enabled()) {
                    e eVar = r.A;
                    eVar.a("onReceivedSslError up 23 ");
                    eVar.a("onReceivedSslError : " + sslError.toString());
                    j.a(sslError, webView.getUrl(), this.mainPageUrl);
                }
            } catch (Throwable th) {
                g.d("onReceivedSslError error:" + th.getMessage());
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
