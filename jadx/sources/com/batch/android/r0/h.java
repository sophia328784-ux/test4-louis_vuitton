package com.batch.android.r0;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.net.http.SslError;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.ContextThemeWrapper;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import androidx.appcompat.app.AlertDialog;
import com.batch.android.Batch;
import com.batch.android.BatchMessage;
import com.batch.android.BatchMessagingWebViewJavascriptBridge;
import com.batch.android.R;
import com.batch.android.e.t;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sensorsdata.analytics.android.sdk.jsbridge.JSHookAop;
import defpackage.cw0;
import defpackage.d91;
import defpackage.e91;
import defpackage.f31;
import defpackage.mc0;
import defpackage.z71;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import org.squirrelframework.foundation.fsm.Action;

/* JADX INFO: loaded from: classes2.dex */
public final class h extends RelativeLayout implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.batch.android.z.c f23988a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f23989b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Handler f23990c;
    private int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private WebView f23991e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ProgressBar f23992f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(Context context) {
        super(context);
        context.getClass();
        this.d = 10000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AlertDialog.Builder b() {
        return new AlertDialog.Builder(new ContextThemeWrapper(getContext(), com.batch.android.o0.c.b(getContext())));
    }

    private final void c() {
        if (this.f23989b) {
            return;
        }
        a(BatchMessagingWebViewJavascriptBridge.e.TIMEOUT, com.batch.android.f0.d.CLIENT_NETWORK, (String) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d() {
        ProgressBar progressBar = this.f23992f;
        if (progressBar != null) {
            progressBar.setVisibility(8);
        } else {
            Intrinsics.h("loader");
            throw null;
        }
    }

    private final void e() {
        if (this.d > 0) {
            Handler handler = new Handler(getContext().getMainLooper());
            this.f23990c = handler;
            handler.postDelayed(new f31(this, 19), this.d);
        }
    }

    @Override // com.batch.android.r0.f
    public void a(com.batch.android.g0.c cVar) {
        cVar.getClass();
        if (!(cVar instanceof com.batch.android.g0.c.k)) {
            t.c(com.batch.android.v0.g.f24103i, "Trying to apply a non-webview style");
            return;
        }
        setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        WebView webView = new WebView(getContext());
        webView.setId(R.id.com_batchsdk_messaging_web_view);
        webView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        webView.setBackgroundColor(0);
        this.f23991e = webView;
        addView(webView);
        ProgressBar progressBar = new ProgressBar(getContext());
        progressBar.setId(com.batch.android.o0.d.a());
        progressBar.setIndeterminate(true);
        if ((progressBar.getResources().getConfiguration().uiMode & 48) == 32) {
            progressBar.setIndeterminateTintList(ColorStateList.valueOf(-1));
        } else {
            progressBar.setIndeterminateTintList(ColorStateList.valueOf(com.batch.android.q0.b.v));
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        progressBar.setLayoutParams(layoutParams);
        this.f23992f = progressBar;
        addView(progressBar);
        this.d = ((com.batch.android.g0.c.k) cVar).r() * 1000;
    }

    public static final class a extends WebChromeClient {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.batch.android.z.c f23993a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ h f23994b;

        public a(com.batch.android.z.c cVar, h hVar) {
            this.f23993a = cVar;
            this.f23994b = hVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void a(EditText editText, JsPromptResult jsPromptResult, DialogInterface dialogInterface, int i2) {
            editText.getClass();
            jsPromptResult.getClass();
            jsPromptResult.confirm(editText.getText().toString());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void b(JsResult jsResult, DialogInterface dialogInterface, int i2) {
            jsResult.getClass();
            jsResult.confirm();
        }

        @Override // android.webkit.WebChromeClient
        public void onCloseWindow(WebView webView) {
            webView.getClass();
            super.onCloseWindow(webView);
            if (webView.getId() == R.id.com_batchsdk_messaging_web_view) {
                this.f23994b.a();
            }
        }

        @Override // android.webkit.WebChromeClient
        public boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
            Handler handler;
            String string;
            webView.getClass();
            if (!z && z2 && this.f23993a != null) {
                WebView.HitTestResult hitTestResult = webView.getHitTestResult();
                hitTestResult.getClass();
                String extra = hitTestResult.getExtra();
                if (hitTestResult.getType() == 8 && (handler = webView.getHandler()) != null) {
                    Message messageObtainMessage = handler.obtainMessage();
                    messageObtainMessage.getClass();
                    webView.requestFocusNodeHref(messageObtainMessage);
                    Bundle data = messageObtainMessage.getData();
                    if (data != null && (string = data.getString(ConfigurationName.DOWNLOAD_PLUGIN_URL)) != null && string.length() != 0) {
                        extra = string;
                    }
                }
                if (extra != null) {
                    this.f23993a.a(extra, (Boolean) null, (String) null);
                }
            }
            return super.onCreateWindow(webView, z, z2, message);
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
            jsResult.getClass();
            AlertDialog.Builder builderB = this.f23994b.b();
            builderB.f(android.R.string.dialog_alert_title);
            builderB.c(str2);
            int i2 = 0;
            builderB.setPositiveButton(android.R.string.ok, new d91(jsResult, i2));
            builderB.d(new e91(jsResult, i2));
            builderB.g();
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
            jsResult.getClass();
            AlertDialog.Builder builderB = this.f23994b.b();
            builderB.f(android.R.string.dialog_alert_title);
            builderB.c(str2);
            int i2 = 1;
            builderB.setPositiveButton(android.R.string.ok, new d91(jsResult, i2));
            builderB.d(new e91(jsResult, i2));
            builderB.g();
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
            jsPromptResult.getClass();
            EditText editText = new EditText(this.f23994b.getContext());
            editText.setText(str3);
            AlertDialog.Builder builderB = this.f23994b.b();
            builderB.f(android.R.string.dialog_alert_title);
            builderB.c(str2);
            builderB.setView(editText);
            int i2 = 1;
            builderB.setPositiveButton(android.R.string.ok, new z71(editText, jsPromptResult, i2));
            builderB.setNegativeButton(android.R.string.cancel, new mc0(jsPromptResult, 5));
            builderB.d(new cw0(jsPromptResult, i2));
            builderB.g();
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView webView, int i2) {
            super.onProgressChanged(webView, i2);
            if (i2 >= 100) {
                this.f23994b.d();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void b(JsResult jsResult, DialogInterface dialogInterface) {
            jsResult.getClass();
            jsResult.cancel();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void a(JsResult jsResult, DialogInterface dialogInterface) {
            jsResult.getClass();
            jsResult.cancel();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void a(JsResult jsResult, DialogInterface dialogInterface, int i2) {
            jsResult.getClass();
            jsResult.confirm();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void a(JsPromptResult jsPromptResult, DialogInterface dialogInterface, int i2) {
            jsPromptResult.getClass();
            jsPromptResult.cancel();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void a(JsPromptResult jsPromptResult, DialogInterface dialogInterface) {
            jsPromptResult.getClass();
            jsPromptResult.cancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(h hVar) {
        hVar.getClass();
        hVar.c();
    }

    public static final class b extends WebViewClient {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f23995a;

        public b() {
        }

        public final void a() {
            h.this.f23989b = true;
            if (this.f23995a) {
                return;
            }
            this.f23995a = true;
            h.this.d();
        }

        @Override // android.webkit.WebViewClient
        public void onPageCommitVisible(WebView webView, String str) {
            super.onPageCommitVisible(webView, str);
            a();
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            webView.getClass();
            webResourceRequest.getClass();
            webResourceError.getClass();
            super.onReceivedError(webView, webResourceRequest, webResourceError);
            if (webResourceRequest.isForMainFrame() && Intrinsics.c(webResourceRequest.getUrl().toString(), webView.getUrl())) {
                h.this.a(webResourceError.getDescription().toString(), webResourceError.getErrorCode());
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
            webResourceRequest.getClass();
            webResourceResponse.getClass();
            super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
            if (webResourceRequest.isForMainFrame()) {
                h.this.a(BatchMessagingWebViewJavascriptBridge.e.BAD_HTTP_STATUSCODE, com.batch.android.f0.d.SERVER_FAILURE, String.valueOf(webResourceResponse.getStatusCode()));
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            super.onReceivedSslError(webView, sslErrorHandler, sslError);
            if (this.f23995a) {
                return;
            }
            h.this.a(BatchMessagingWebViewJavascriptBridge.e.SSL, com.batch.android.f0.d.SERVER_FAILURE, (String) null);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i2, String str, String str2) {
            webView.getClass();
            super.onReceivedError(webView, i2, str, str2);
            if (this.f23995a || str2 == null || !str2.equals(webView.getUrl())) {
                return;
            }
            h.this.a(str, i2);
        }
    }

    public final void a(String str) {
        str.getClass();
        e();
        HashMap map = new HashMap();
        String language = Batch.User.getLanguage(getContext());
        String region = Batch.User.getRegion(getContext());
        if (!TextUtils.isEmpty(language)) {
            map.put("X-Batch-Custom-Language", language);
        }
        if (!TextUtils.isEmpty(region)) {
            map.put("X-Batch-Custom-Region", language);
        }
        WebView webView = this.f23991e;
        if (webView == null) {
            Intrinsics.h("webView");
            throw null;
        }
        JSHookAop.loadUrl(webView, str, map);
        webView.loadUrl(str, map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(String str, int i2) {
        com.batch.android.f0.d dVar = com.batch.android.f0.d.UNKNOWN;
        switch (i2) {
            case -16:
            case -14:
            case -12:
            case -11:
            case Action.EXTENSION_WEIGHT /* -10 */:
            case com.networkbench.agent.impl.plugin.g.a.e.f38106c /* -4 */:
                dVar = com.batch.android.f0.d.SERVER_FAILURE;
                break;
            case -8:
            case -7:
            case -6:
            case -2:
                dVar = com.batch.android.f0.d.CLIENT_NETWORK;
                break;
        }
        a(BatchMessagingWebViewJavascriptBridge.e.UNKNOWN, dVar, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a() {
        com.batch.android.z.c cVar = this.f23988a;
        if (cVar != null) {
            cVar.a(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(BatchMessagingWebViewJavascriptBridge.e eVar, com.batch.android.f0.d dVar, String str) {
        com.batch.android.z.c cVar = this.f23988a;
        if (cVar != null) {
            cVar.a(eVar, dVar, str);
        }
    }

    public final void a(BatchMessage batchMessage, com.batch.android.z.c cVar) {
        batchMessage.getClass();
        this.f23988a = cVar;
        WebView webView = this.f23991e;
        if (webView != null) {
            WebSettings settings = webView.getSettings();
            settings.getClass();
            settings.setJavaScriptEnabled(true);
            settings.setDomStorageEnabled(true);
            settings.setBuiltInZoomControls(true);
            settings.setDisplayZoomControls(false);
            settings.setDefaultTextEncodingName("utf-8");
            settings.setSupportMultipleWindows(true);
            settings.setSupportZoom(false);
            settings.setAllowContentAccess(false);
            settings.setCacheMode(2);
            BatchMessagingWebViewJavascriptBridge batchMessagingWebViewJavascriptBridge = new BatchMessagingWebViewJavascriptBridge(getContext(), batchMessage, this.f23988a);
            WebView webView2 = this.f23991e;
            if (webView2 != null) {
                webView2.addJavascriptInterface(batchMessagingWebViewJavascriptBridge, "_batchAndroidBridge");
                WebView webView3 = this.f23991e;
                if (webView3 != null) {
                    webView3.setWebChromeClient(new a(cVar, this));
                    WebView webView4 = this.f23991e;
                    if (webView4 != null) {
                        webView4.setWebViewClient(new b());
                        return;
                    } else {
                        Intrinsics.h("webView");
                        throw null;
                    }
                }
                Intrinsics.h("webView");
                throw null;
            }
            Intrinsics.h("webView");
            throw null;
        }
        Intrinsics.h("webView");
        throw null;
    }
}
