package com.batch.android.n0;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.graphics.Point;
import android.net.http.SslError;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
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
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import androidx.appcompat.app.AlertDialog;
import com.batch.android.Batch;
import com.batch.android.BatchMessagingWebViewJavascriptBridge;
import com.batch.android.R;
import com.batch.android.e.f0;
import com.dynatrace.android.callback.Callback;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sensorsdata.analytics.android.sdk.jsbridge.JSHookAop;
import defpackage.f31;
import defpackage.hi;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.squirrelframework.foundation.fsm.Action;

/* JADX INFO: loaded from: classes2.dex */
public class e extends FrameLayout {
    private static final String l = "timeoutDone";
    private static final float m = 52.0f;
    private static final float n = 10.0f;
    private static final float o = 20.0f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f23803a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.batch.android.h0.h f23804b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.batch.android.a0.d f23805c;
    private final Point d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.batch.android.messaging.view.a f23806e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final RelativeLayout f23807f;
    private final ProgressBar g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Handler f23808h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private com.batch.android.s0.d f23809i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f23810j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private com.batch.android.z.c f23811k;

    public e(Context context, com.batch.android.h0.h hVar, com.batch.android.a0.d dVar, BatchMessagingWebViewJavascriptBridge batchMessagingWebViewJavascriptBridge) {
        super(context);
        this.f23810j = false;
        setId(R.id.com_batchsdk_messaging_root_view);
        this.f23803a = context;
        this.f23804b = hVar;
        this.f23805c = dVar == null ? com.batch.android.o0.b.d(hVar.f23468h) : dVar;
        this.d = com.batch.android.o0.d.a(context);
        RelativeLayout relativeLayoutA = a();
        this.f23807f = relativeLayoutA;
        this.f23809i = b(relativeLayoutA);
        this.g = c(relativeLayoutA);
        this.f23806e = a(relativeLayoutA);
        WebSettings settings = this.f23809i.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setBuiltInZoomControls(true);
        settings.setDisplayZoomControls(false);
        settings.setSupportZoom(false);
        settings.setDefaultTextEncodingName("utf-8");
        settings.setSupportMultipleWindows(true);
        settings.setAllowContentAccess(false);
        settings.setCacheMode(2);
        this.f23809i.addJavascriptInterface(batchMessagingWebViewJavascriptBridge, "_batchAndroidBridge");
        this.f23809i.setWebChromeClient(new a(context));
        this.f23809i.setWebViewClient(new b());
        setFitsSystemWindows(true);
        f0.b(this);
    }

    private com.batch.android.messaging.view.a a(RelativeLayout relativeLayout) {
        com.batch.android.messaging.view.a aVar = new com.batch.android.messaging.view.a(this.f23803a);
        aVar.setId(R.id.com_batchsdk_messaging_close_button);
        aVar.setShowBorder(true);
        aVar.a(a(new com.batch.android.a0.b("close", new String[0])));
        int iA = com.batch.android.o0.b.a(getResources(), Float.valueOf(m));
        aVar.setPadding(com.batch.android.o0.b.a(getResources(), Float.valueOf(n)));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iA, iA);
        layoutParams.addRule(10);
        layoutParams.addRule(11);
        int iA2 = com.batch.android.o0.b.a(getResources(), Float.valueOf(20.0f));
        layoutParams.setMargins(0, iA2, iA2, 0);
        aVar.setLayoutParams(layoutParams);
        aVar.setOnClickListener(new hi(this, 12));
        relativeLayout.addView(aVar);
        return aVar;
    }

    private com.batch.android.s0.d b(RelativeLayout relativeLayout) {
        com.batch.android.s0.d dVar = new com.batch.android.s0.d(this.f23803a);
        dVar.setId(R.id.com_batchsdk_messaging_web_view);
        dVar.setBackgroundColor(0);
        dVar.a(a(new com.batch.android.a0.b("webview", new String[0])));
        dVar.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        relativeLayout.addView(dVar);
        return dVar;
    }

    private ProgressBar c(RelativeLayout relativeLayout) {
        boolean z;
        ProgressBar progressBar = new ProgressBar(this.f23803a);
        progressBar.setId(com.batch.android.o0.d.a());
        progressBar.setIndeterminate(true);
        Iterator<Map.Entry<String, String>> it = a(new com.batch.android.a0.b("root", new String[0])).entrySet().iterator();
        loop0: while (true) {
            z = false;
            while (true) {
                if (!it.hasNext()) {
                    break loop0;
                }
                Map.Entry<String, String> next = it.next();
                if ("loader".equalsIgnoreCase(next.getKey())) {
                    String value = next.getValue();
                    if ("dark".equalsIgnoreCase(value)) {
                        z = true;
                    } else if ("light".equalsIgnoreCase(value)) {
                        break;
                    }
                }
            }
        }
        if (z) {
            progressBar.setIndeterminateTintList(ColorStateList.valueOf(com.batch.android.q0.b.v));
        } else {
            progressBar.setIndeterminateTintList(ColorStateList.valueOf(-1));
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        progressBar.setLayoutParams(layoutParams);
        relativeLayout.addView(progressBar);
        return progressBar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        com.batch.android.z.c cVar = this.f23811k;
        if (cVar != null) {
            cVar.a(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AlertDialog.Builder e() {
        Context context = this.f23803a;
        return new AlertDialog.Builder(new ContextThemeWrapper(context, com.batch.android.o0.c.b(context)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        if (this.f23810j) {
            return;
        }
        a(BatchMessagingWebViewJavascriptBridge.e.TIMEOUT, com.batch.android.f0.d.CLIENT_NETWORK, (String) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        ProgressBar progressBar = this.g;
        if (progressBar == null || progressBar.getParent() == null) {
            return;
        }
        ((ViewGroup) this.g.getParent()).removeView(this.g);
    }

    private void h() {
        if (this.f23804b.f23470j > 0) {
            Handler handler = new Handler();
            this.f23808h = handler;
            handler.postDelayed(new f31(this, 17), this.f23804b.f23470j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: instrumented$0$a$-Landroid-widget-RelativeLayout--Lcom-batch-android-messaging-view-a-, reason: not valid java name */
    public static /* synthetic */ void m30xb7447c6f(e eVar, View view) {
        Callback.n(view);
        try {
            eVar.a(view);
        } finally {
            Callback.o();
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    public View getCloseButton() {
        return this.f23806e;
    }

    public void i() {
        h();
        HashMap map = new HashMap();
        String language = Batch.User.getLanguage(getContext());
        String region = Batch.User.getRegion(getContext());
        if (!TextUtils.isEmpty(language)) {
            map.put("X-Batch-Custom-Language", language);
        }
        if (!TextUtils.isEmpty(region)) {
            map.put("X-Batch-Custom-Region", language);
        }
        com.batch.android.s0.d dVar = this.f23809i;
        String str = this.f23804b.f23469i;
        JSHookAop.loadUrl(dVar, str, map);
        dVar.loadUrl(str, map);
    }

    @Override // android.view.View
    public WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        RelativeLayout relativeLayout = this.f23807f;
        if (relativeLayout != null) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) relativeLayout.getLayoutParams();
            layoutParams.setMargins(windowInsets.getSystemWindowInsetLeft(), windowInsets.getSystemWindowInsetTop(), windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom());
            this.f23807f.setLayoutParams(layoutParams);
        }
        return super.onApplyWindowInsets(windowInsets.replaceSystemWindowInsets(0, 0, 0, 0));
    }

    public void setActionListener(com.batch.android.z.c cVar) {
        this.f23811k = cVar;
    }

    public class a extends WebChromeClient {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f23812a;

        public a(Context context) {
            this.f23812a = context;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(EditText editText, JsPromptResult jsPromptResult, DialogInterface dialogInterface, int i2) {
            jsPromptResult.confirm(editText.getText().toString());
        }

        @Override // android.webkit.WebChromeClient
        public void onCloseWindow(WebView webView) {
            super.onCloseWindow(webView);
            if (webView.getId() == R.id.com_batchsdk_messaging_web_view) {
                e.this.d();
            }
        }

        @Override // android.webkit.WebChromeClient
        public boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
            Handler handler;
            String string;
            if (!z && z2 && e.this.f23811k != null) {
                WebView.HitTestResult hitTestResult = webView.getHitTestResult();
                String extra = hitTestResult.getExtra();
                if (hitTestResult.getType() == 8 && (handler = webView.getHandler()) != null) {
                    Message messageObtainMessage = handler.obtainMessage();
                    webView.requestFocusNodeHref(messageObtainMessage);
                    Bundle data = messageObtainMessage.getData();
                    if (data != null && (string = data.getString(ConfigurationName.DOWNLOAD_PLUGIN_URL)) != null && !string.isEmpty()) {
                        extra = string;
                    }
                }
                if (extra != null) {
                    e.this.f23811k.a(extra, (Boolean) null, (String) null);
                }
            }
            return super.onCreateWindow(webView, z, z2, message);
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
            AlertDialog.Builder builderE = e.this.e();
            builderE.f(android.R.string.dialog_alert_title);
            builderE.c(str2);
            int i2 = 1;
            builderE.setPositiveButton(android.R.string.ok, new f(jsResult, i2));
            builderE.d(new g(jsResult, i2));
            builderE.g();
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
            AlertDialog.Builder builderE = e.this.e();
            builderE.f(android.R.string.dialog_alert_title);
            builderE.c(str2);
            int i2 = 0;
            builderE.setPositiveButton(android.R.string.ok, new f(jsResult, i2));
            builderE.d(new g(jsResult, i2));
            builderE.g();
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsPrompt(WebView webView, String str, String str2, String str3, final JsPromptResult jsPromptResult) {
            final EditText editText = new EditText(this.f23812a);
            editText.setText(str3);
            AlertDialog.Builder builderE = e.this.e();
            builderE.f(android.R.string.dialog_alert_title);
            builderE.c(str2);
            builderE.setView(editText);
            builderE.setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() { // from class: com.batch.android.n0.h
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    e.a.a(editText, jsPromptResult, dialogInterface, i2);
                }
            });
            int i2 = 2;
            builderE.setNegativeButton(android.R.string.cancel, new f(jsPromptResult, i2));
            builderE.d(new g(jsPromptResult, i2));
            builderE.g();
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView webView, int i2) {
            super.onProgressChanged(webView, i2);
            if (i2 >= 100) {
                e.this.g();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void b(JsResult jsResult, DialogInterface dialogInterface) {
            jsResult.cancel();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(JsResult jsResult, DialogInterface dialogInterface) {
            jsResult.cancel();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(JsPromptResult jsPromptResult, DialogInterface dialogInterface) {
            jsPromptResult.cancel();
        }
    }

    public class b extends WebViewClient {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f23814a = false;

        public b() {
        }

        public void a() {
            e.this.f23810j = true;
            if (this.f23814a) {
                return;
            }
            this.f23814a = true;
            e.this.g();
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
            super.onReceivedError(webView, webResourceRequest, webResourceError);
            if (webResourceRequest.isForMainFrame() && webResourceRequest.getUrl().toString().equals(webView.getUrl())) {
                e.this.a(webResourceError.getDescription().toString(), webResourceError.getErrorCode());
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
            super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
            if (webResourceRequest.isForMainFrame()) {
                e.this.a(BatchMessagingWebViewJavascriptBridge.e.BAD_HTTP_STATUSCODE, com.batch.android.f0.d.SERVER_FAILURE, Integer.toString(webResourceResponse.getStatusCode()));
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            super.onReceivedSslError(webView, sslErrorHandler, sslError);
            if (this.f23814a) {
                return;
            }
            e.this.a(BatchMessagingWebViewJavascriptBridge.e.SSL, com.batch.android.f0.d.SERVER_FAILURE, (String) null);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i2, String str, String str2) {
            super.onReceivedError(webView, i2, str, str2);
            if (this.f23814a || str2 == null || !str2.equals(webView.getUrl())) {
                return;
            }
            e.this.a(str, i2);
        }
    }

    public void b(Bundle bundle) {
        bundle.putBoolean(l, this.f23810j);
        this.f23809i.saveState(bundle);
        Handler handler = this.f23808h;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.f23808h = null;
        }
    }

    public boolean b() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, int i2) {
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
    public void a(BatchMessagingWebViewJavascriptBridge.e eVar, com.batch.android.f0.d dVar, String str) {
        com.batch.android.z.c cVar = this.f23811k;
        if (cVar != null) {
            cVar.a(eVar, dVar, str);
        }
    }

    public void a(Bundle bundle) {
        this.f23809i.restoreState(bundle);
        boolean z = bundle.getBoolean(l, false);
        this.f23810j = z;
        if (z) {
            return;
        }
        h();
    }

    private Map<String, String> a(com.batch.android.a0.b bVar) {
        return this.f23805c.a(bVar, this.d);
    }

    private RelativeLayout a() {
        RelativeLayout relativeLayout = new RelativeLayout(this.f23803a);
        relativeLayout.setId(R.id.com_batchsdk_messaging_container_view);
        relativeLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        addView(relativeLayout);
        return relativeLayout;
    }

    private void c() {
        com.batch.android.z.c cVar = this.f23811k;
        if (cVar != null) {
            cVar.a();
        }
    }

    private /* synthetic */ void a(View view) {
        c();
    }
}
