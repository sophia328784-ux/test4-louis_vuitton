package com.vuitton.android.presentation.screen.authentication.base;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.webkit.HttpAuthHandler;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.vuitton.foundation.logger.Logger;
import defpackage.k61;
import defpackage.p01;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0017\u0018\u00002\u00020\u0001:\u0001\u0013Bs\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007\u0012\u001a\u0010\r\u001a\u0016\u0012\u0004\u0012\u00020\f\u0012\u0006\u0012\u0004\u0018\u00010\b\u0012\u0004\u0012\u00020\u00050\u000b\u0012$\u0010\u0010\u001a \u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00050\u000e¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0014"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/base/WebViewAuthClient;", "Landroid/webkit/WebViewClient;", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lkotlin/Function0;", "", "onPageStarted", "Lkotlin/Function1;", "", "", "onUrlIntercept", "Lkotlin/Function2;", "Landroid/webkit/WebView;", "onPageFinishedCallback", "Lkotlin/Function4;", "Landroid/webkit/HttpAuthHandler;", "onHttpAuthRequest", "<init>", "(Lcom/vuitton/foundation/logger/Logger;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function4;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public class WebViewAuthClient extends WebViewClient {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ int f53459f = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f53460a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function0 f53461b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function1 f53462c;
    public final Function2 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Function4 f53463e;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/base/WebViewAuthClient$Companion;", "", "", "TAG", "Ljava/lang/String;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public WebViewAuthClient(Logger logger, Function0<Unit> function0, Function1<? super String, Boolean> function1, Function2<? super WebView, ? super String, Unit> function2, Function4<? super WebView, ? super HttpAuthHandler, ? super String, ? super String, Unit> function4) {
        logger.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function4.getClass();
        this.f53460a = logger;
        this.f53461b = function0;
        this.f53462c = function1;
        this.d = function2;
        this.f53463e = function4;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        webView.getClass();
        this.d.invoke(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        this.f53461b.mo47invoke();
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        p01 p01Var = new p01(webResourceError, webResourceRequest, 23);
        Logger logger = this.f53460a;
        if (webResourceRequest == null || !webResourceRequest.isForMainFrame()) {
            logger.getClass();
        } else {
            logger.b("WebViewAuthClient", p01Var, null);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedHttpAuthRequest(WebView webView, HttpAuthHandler httpAuthHandler, String str, String str2) {
        webView.getClass();
        httpAuthHandler.getClass();
        str.getClass();
        str2.getClass();
        this.f53463e.g(webView, httpAuthHandler, str, str2);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        webView.getClass();
        webResourceRequest.getClass();
        webResourceResponse.getClass();
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        p01 p01Var = new p01(webResourceResponse, webResourceRequest, 24);
        boolean zIsForMainFrame = webResourceRequest.isForMainFrame();
        Logger logger = this.f53460a;
        if (zIsForMainFrame) {
            logger.b("WebViewAuthClient", p01Var, null);
        } else {
            logger.getClass();
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        webView.getClass();
        sslErrorHandler.getClass();
        sslError.getClass();
        this.f53460a.b("WebViewAuthClient", new k61(sslError, 1), null);
        sslErrorHandler.cancel();
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        webView.getClass();
        webResourceRequest.getClass();
        String string = webResourceRequest.getUrl().toString();
        string.getClass();
        return ((Boolean) this.f53462c.invoke(string)).booleanValue();
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        webView.getClass();
        str.getClass();
        return ((Boolean) this.f53462c.invoke(str)).booleanValue();
    }
}
