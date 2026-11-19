package com.networkbench.agent.impl.webview.a;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Message;
import android.view.KeyEvent;
import android.webkit.WebResourceResponse;
import com.alipay.mobile.nebula.appcenter.api.H5ContentProvider;
import com.alipay.mobile.nebula.webview.APHttpAuthHandler;
import com.alipay.mobile.nebula.webview.APSslErrorHandler;
import com.alipay.mobile.nebula.webview.APWebResourceRequest;
import com.alipay.mobile.nebula.webview.APWebView;
import com.alipay.mobile.nebula.webview.APWebViewClient;
import com.alipay.mobile.nebulacore.web.H5WebViewClient;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.util.r;
import com.networkbench.agent.impl.webview.j;
import defpackage.pq0;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class b extends H5WebViewClient {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private APWebViewClient f38432b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f38433c = "";

    public b(APWebViewClient aPWebViewClient) {
        this.f38432b = aPWebViewClient;
    }

    public void doUpdateVisitedHistory(APWebView aPWebView, String str, boolean z) {
        this.f38432b.doUpdateVisitedHistory(aPWebView, str, z);
    }

    public String getJSBridge() {
        return this.f38432b.getJSBridge();
    }

    public String getPageUrl() {
        return this.f38432b.getPageUrl();
    }

    public String getRedirectUrl() {
        H5WebViewClient h5WebViewClient = this.f38432b;
        return h5WebViewClient instanceof H5WebViewClient ? h5WebViewClient.getRedirectUrl() : "";
    }

    public Map getRequestMap() {
        return this.f38432b.getRequestMap();
    }

    public String getShareUrl() {
        H5WebViewClient h5WebViewClient = this.f38432b;
        return h5WebViewClient instanceof H5WebViewClient ? h5WebViewClient.getShareUrl() : "";
    }

    public void onFirstVisuallyRender(APWebView aPWebView) {
        this.f38432b.onFirstVisuallyRender(aPWebView);
    }

    public void onFormResubmission(APWebView aPWebView, Message message, Message message2) {
        this.f38432b.onFormResubmission(aPWebView, message, message2);
    }

    public void onLoadResource(APWebView aPWebView, String str) {
        this.f38432b.onLoadResource(aPWebView, str);
    }

    public void onPageFinished(APWebView aPWebView, String str, long j2) {
        this.f38432b.onPageFinished(aPWebView, str, j2);
    }

    public void onPageStarted(APWebView aPWebView, String str, Bitmap bitmap) {
        this.f38432b.onPageStarted(aPWebView, str, bitmap);
        this.f38433c = str;
        StringBuilder sbR = pq0.r("onPageStarted: ", str, ", APWebView class:");
        sbR.append(aPWebView.getClass().getName());
        sbR.append(", ss:");
        sbR.append(aPWebView);
        g.d(sbR.toString());
        if (Harvest.isHttp_network_enabled() && Harvest.isWebView_enabled()) {
            g.d("begin add javascriptBridge");
        }
    }

    public void onReceivedError(APWebView aPWebView, int i2, String str, String str2) {
        if (r.u().ad() && r.u().V()) {
            try {
                if (Harvest.isHttp_network_enabled() && Harvest.isWebView_enabled()) {
                    r.A.a("onReceivedError below23 errorcode:" + i2 + ", description:" + str + ", failingUrl:" + str2);
                    j.a(i2, str, str2);
                }
            } catch (Exception unused) {
                r.A.f("onReceivedError processErrorBelow23 error!");
            }
        }
        this.f38432b.onReceivedError(aPWebView, i2, str, str2);
    }

    public void onReceivedHttpAuthRequest(APWebView aPWebView, APHttpAuthHandler aPHttpAuthHandler, String str, String str2) {
        this.f38432b.onReceivedHttpAuthRequest(aPWebView, aPHttpAuthHandler, str, str2);
    }

    public void onReceivedHttpError(APWebView aPWebView, int i2, String str) {
        this.f38432b.onReceivedHttpError(aPWebView, i2, str);
    }

    public void onReceivedLoginRequest(APWebView aPWebView, String str, String str2, String str3) {
        this.f38432b.onReceivedLoginRequest(aPWebView, str, str2, str3);
    }

    public void onReceivedResponseHeader(Map<String, List<String>> map) {
        this.f38432b.onReceivedResponseHeader(map);
    }

    public void onReceivedSslError(APWebView aPWebView, APSslErrorHandler aPSslErrorHandler, SslError sslError) {
        if (r.u().ad() && r.u().V()) {
            try {
                if (Harvest.isHttp_network_enabled() && Harvest.isWebView_enabled()) {
                    r.A.a("onReceivedSslError up 23 ");
                    j.a(sslError, this.f38433c);
                }
            } catch (Exception unused) {
                r.A.f("onReceivedSslError processSslError error!");
            }
        }
        this.f38432b.onReceivedSslError(aPWebView, aPSslErrorHandler, sslError);
    }

    public void onRelease() {
        H5WebViewClient h5WebViewClient = this.f38432b;
        if (h5WebViewClient instanceof H5WebViewClient) {
            h5WebViewClient.onRelease();
        }
    }

    public void onResourceFinishLoad(APWebView aPWebView, String str, long j2) {
        this.f38432b.onResourceFinishLoad(aPWebView, str, j2);
    }

    public void onResourceResponse(APWebView aPWebView, HashMap<String, String> map) {
        this.f38432b.onResourceResponse(aPWebView, map);
    }

    public void onScaleChanged(APWebView aPWebView, float f2, float f3) {
        this.f38432b.onScaleChanged(aPWebView, f2, f3);
    }

    public void onTooManyRedirects(APWebView aPWebView, Message message, Message message2) {
        this.f38432b.onTooManyRedirects(aPWebView, message, message2);
    }

    public void onUnhandledKeyEvent(APWebView aPWebView, KeyEvent keyEvent) {
        this.f38432b.onUnhandledKeyEvent(aPWebView, keyEvent);
    }

    public void onWebViewEvent(APWebView aPWebView, int i2, Object obj) {
        this.f38432b.onWebViewEvent(aPWebView, i2, obj);
    }

    public void setCheckingUrl(String str) {
        H5WebViewClient h5WebViewClient = this.f38432b;
        if (h5WebViewClient instanceof H5WebViewClient) {
            h5WebViewClient.setCheckingUrl(str);
        }
    }

    public void setWebProvider(H5ContentProvider h5ContentProvider) {
        H5WebViewClient h5WebViewClient = this.f38432b;
        if (h5WebViewClient instanceof H5WebViewClient) {
            h5WebViewClient.setWebProvider(h5ContentProvider);
        }
    }

    public WebResourceResponse shouldInterceptRequest(APWebView aPWebView, APWebResourceRequest aPWebResourceRequest) {
        return this.f38432b.shouldInterceptRequest(aPWebView, aPWebResourceRequest);
    }

    public boolean shouldInterceptResponse(APWebView aPWebView, HashMap<String, String> map) {
        return this.f38432b.shouldInterceptResponse(aPWebView, map);
    }

    public boolean shouldOverrideKeyEvent(APWebView aPWebView, KeyEvent keyEvent) {
        return this.f38432b.shouldOverrideKeyEvent(aPWebView, keyEvent);
    }

    public boolean shouldOverrideUrlLoading(APWebView aPWebView, String str) {
        return this.f38432b.shouldOverrideUrlLoading(aPWebView, str);
    }

    public boolean shouldOverrideUrlLoadingForUC(APWebView aPWebView, String str, int i2) {
        return this.f38432b.shouldOverrideUrlLoadingForUC(aPWebView, str, i2);
    }

    public WebResourceResponse shouldInterceptRequest(APWebView aPWebView, String str) {
        return this.f38432b.shouldInterceptRequest(aPWebView, str);
    }
}
