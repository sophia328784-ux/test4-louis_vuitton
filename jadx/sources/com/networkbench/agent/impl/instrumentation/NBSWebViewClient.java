package com.networkbench.agent.impl.instrumentation;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.util.r;
import com.networkbench.agent.impl.webview.j;

/* JADX INFO: loaded from: classes2.dex */
public class NBSWebViewClient extends WebViewClient {
    private boolean isAddJavascript = false;
    private String mainPageUrl;

    @Deprecated
    public void a() {
    }

    @Override // android.webkit.WebViewClient
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
            g.b("onPageStarted has an error : ", th);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        try {
            if (r.u().ad() && r.u().V()) {
                try {
                    if (Harvest.isWebView_enabled()) {
                        r.A.a("onReceivedError up 23 ");
                        j.a(webResourceRequest, webResourceError, this.mainPageUrl);
                    }
                } catch (Throwable unused) {
                    r.A.f("onReceivedError processErrorUp23 error!");
                }
            }
        } catch (Throwable th) {
            g.b("onReceivedError has an error : ", th);
        }
        super.onReceivedError(webView, webResourceRequest, webResourceError);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        if (r.u().ad() && r.u().V()) {
            try {
                if (Harvest.isWebView_enabled()) {
                    r.A.a("onReceivedHttpError up 23 ");
                    j.a(webResourceRequest, webResourceResponse, this.mainPageUrl);
                }
            } catch (Throwable th) {
                g.b("onReceivedHttpError has an error : ", th);
            }
        }
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        if (r.u().ad() && r.u().V()) {
            try {
                if (Harvest.isWebView_enabled()) {
                    r.A.a("onReceivedSslError up 23 ");
                    j.a(sslError, this.mainPageUrl);
                }
            } catch (Throwable th) {
                g.b("onReceivedSslError has an error : ", th);
            }
        }
        super.onReceivedSslError(webView, sslErrorHandler, sslError);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i2, String str, String str2) {
        try {
            if (Harvest.isHttp_network_enabled()) {
                Harvest.isWebView_enabled();
            }
        } catch (Throwable th) {
            g.b("onReceivedError has an error : ", th);
        }
        super.onReceivedError(webView, i2, str, str2);
    }
}
