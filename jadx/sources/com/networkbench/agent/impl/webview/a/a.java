package com.networkbench.agent.impl.webview.a;

import android.graphics.Bitmap;
import android.os.Message;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions;
import android.webkit.ValueCallback;
import com.alipay.mobile.nebula.webview.APFileChooserParams;
import com.alipay.mobile.nebula.webview.APJsPromptResult;
import com.alipay.mobile.nebula.webview.APJsResult;
import com.alipay.mobile.nebula.webview.APWebChromeClient;
import com.alipay.mobile.nebula.webview.APWebView;
import com.alipay.mobile.nebulacore.web.H5WebChromeClient;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.util.r;
import com.networkbench.agent.impl.webview.JsPageUtil;
import com.networkbench.agent.impl.webview.n;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class a extends H5WebChromeClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static n f38430a = new n();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private APWebChromeClient f38431b;

    public a(APWebChromeClient aPWebChromeClient) {
        this.f38431b = aPWebChromeClient;
    }

    public static void a(APWebView aPWebView, int i2) {
        try {
            if (JsPageUtil.isInjectEnabled(i2)) {
                g.l("webview  initJSMonitor gather  begin NBSH5WebChromeClient!!");
                a(aPWebView);
                if (f38430a.a()) {
                    Iterator<String> it = JsPageUtil.getAllInjectJs(aPWebView.getView()).iterator();
                    while (it.hasNext()) {
                        a(aPWebView, it.next());
                    }
                }
                f38430a.a(i2);
            }
        } catch (Throwable unused) {
        }
    }

    public Bitmap getDefaultVideoPoster() {
        return this.f38431b.getDefaultVideoPoster();
    }

    public View getVideoLoadingProgressView() {
        return this.f38431b.getVideoLoadingProgressView();
    }

    public void getVisitedHistory(ValueCallback<String[]> valueCallback) {
        this.f38431b.getVisitedHistory(valueCallback);
    }

    public void onCloseWindow(APWebView aPWebView) {
        this.f38431b.onCloseWindow(aPWebView);
    }

    public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        return this.f38431b.onConsoleMessage(consoleMessage);
    }

    public boolean onCreateWindow(APWebView aPWebView, boolean z, boolean z2, Message message) {
        return this.f38431b.onCreateWindow(aPWebView, z, z2, message);
    }

    public void onGeolocationPermissionsHidePrompt() {
        this.f38431b.onGeolocationPermissionsHidePrompt();
    }

    public void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
        this.f38431b.onGeolocationPermissionsShowPrompt(str, callback);
    }

    public void onHideCustomView() {
        this.f38431b.onHideCustomView();
    }

    public boolean onJsAlert(APWebView aPWebView, String str, String str2, APJsResult aPJsResult) {
        return this.f38431b.onJsAlert(aPWebView, str, str2, aPJsResult);
    }

    public boolean onJsBeforeUnload(APWebView aPWebView, String str, String str2, APJsResult aPJsResult) {
        return this.f38431b.onJsBeforeUnload(aPWebView, str, str2, aPJsResult);
    }

    public boolean onJsConfirm(APWebView aPWebView, String str, String str2, APJsResult aPJsResult) {
        return this.f38431b.onJsConfirm(aPWebView, str, str2, aPJsResult);
    }

    public boolean onJsPrompt(APWebView aPWebView, String str, String str2, String str3, APJsPromptResult aPJsPromptResult) {
        return this.f38431b.onJsPrompt(aPWebView, str, str2, str3, aPJsPromptResult);
    }

    public void onProgressChanged(APWebView aPWebView, int i2) {
        a(aPWebView, i2);
        this.f38431b.onProgressChanged(aPWebView, i2);
        r.A.a("MyWebChromeClient onProgressChanged new Progress:" + i2);
    }

    public void onReceivedIcon(APWebView aPWebView, Bitmap bitmap) {
        this.f38431b.onReceivedIcon(aPWebView, bitmap);
    }

    public void onReceivedTitle(APWebView aPWebView, String str) {
        this.f38431b.onReceivedTitle(aPWebView, str);
    }

    public void onReceivedTouchIconUrl(APWebView aPWebView, String str, boolean z) {
        this.f38431b.onReceivedTouchIconUrl(aPWebView, str, z);
    }

    public void onRelease() {
        H5WebChromeClient h5WebChromeClient = this.f38431b;
        if (h5WebChromeClient instanceof H5WebChromeClient) {
            h5WebChromeClient.onRelease();
        }
    }

    public void onRequestFocus(APWebView aPWebView) {
        this.f38431b.onRequestFocus(aPWebView);
    }

    public void onShowCustomView(View view, APWebChromeClient.CustomViewCallback customViewCallback) {
        this.f38431b.onShowCustomView(view, customViewCallback);
    }

    public void openFileChooser(ValueCallback valueCallback, boolean z) {
        this.f38431b.openFileChooser(valueCallback, z);
    }

    public void openFileChooser(ValueCallback valueCallback, boolean z, APFileChooserParams aPFileChooserParams) {
        this.f38431b.openFileChooser(valueCallback, z, aPFileChooserParams);
    }

    private static void a(APWebView aPWebView) {
        if (aPWebView.getSettings().getJavaScriptEnabled()) {
            return;
        }
        aPWebView.getSettings().setJavaScriptEnabled(true);
    }

    private static void a(APWebView aPWebView, String str) {
        aPWebView.evaluateJavascript(JsPageUtil.formatJsWrapper(str), new ValueCallback<String>() { // from class: com.networkbench.agent.impl.webview.a.a.1
            @Override // android.webkit.ValueCallback
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void onReceiveValue(String str2) {
            }
        });
    }
}
