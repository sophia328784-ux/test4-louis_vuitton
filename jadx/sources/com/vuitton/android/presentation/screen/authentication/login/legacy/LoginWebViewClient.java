package com.vuitton.android.presentation.screen.authentication.login.legacy;

import android.webkit.HttpAuthHandler;
import android.webkit.WebView;
import com.vuitton.android.presentation.screen.authentication.base.WebViewAuthClient;
import com.vuitton.foundation.logger.Logger;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B}\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\b\u0012\u001a\u0010\u000e\u001a\u0016\u0012\u0004\u0012\u00020\r\u0012\u0006\u0012\u0004\u0018\u00010\b\u0012\u0004\u0012\u00020\u00050\f\u0012$\u0010\u0011\u001a \u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00050\u000f¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/login/legacy/LoginWebViewClient;", "Lcom/vuitton/android/presentation/screen/authentication/base/WebViewAuthClient;", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lkotlin/Function0;", "", "onPageStarted", "Lkotlin/Function1;", "", "", "onUrlIntercept", "prefillEmail", "Lkotlin/Function2;", "Landroid/webkit/WebView;", "onPageFinishedCallback", "Lkotlin/Function4;", "Landroid/webkit/HttpAuthHandler;", "onHttpAuthRequest", "<init>", "(Lcom/vuitton/foundation/logger/Logger;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function4;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LoginWebViewClient extends WebViewAuthClient {
    public final String g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoginWebViewClient(Logger logger, Function0<Unit> function0, Function1<? super String, Boolean> function1, String str, Function2<? super WebView, ? super String, Unit> function2, Function4<? super WebView, ? super HttpAuthHandler, ? super String, ? super String, Unit> function4) {
        super(logger, function0, function1, function2, function4);
        logger.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function4.getClass();
        this.g = str;
    }

    @Override // com.vuitton.android.presentation.screen.authentication.base.WebViewAuthClient, android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        webView.getClass();
        this.d.invoke(webView, str);
        String str2 = this.g;
        if (str2 != null) {
            JSLoginMethods jSLoginMethods = new JSLoginMethods(webView);
            jSLoginMethods.f53651a.evaluateJavascript(fc.h("document.querySelector(\"[id$='login_email']\").value = \"", str2, "\";onLoginEmailChange()"), null);
        }
    }
}
