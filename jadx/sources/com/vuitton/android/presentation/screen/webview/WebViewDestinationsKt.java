package com.vuitton.android.presentation.screen.webview;

import android.content.Context;
import android.content.Intent;
import defpackage.v40;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class WebViewDestinationsKt {
    public static final Intent a(WebViewDestinations webViewDestinations, Context context) {
        context.getClass();
        if (webViewDestinations instanceof WebViewDestinations.ToWebViewPage) {
            WebViewDestinations.ToWebViewPage toWebViewPage = (WebViewDestinations.ToWebViewPage) webViewDestinations;
            return WebViewActivity.Companion.a(WebViewActivity.v, context, toWebViewPage.f65458a, toWebViewPage.f65459b, toWebViewPage.f65460c, toWebViewPage.d, toWebViewPage.f65461e, null, toWebViewPage.f65462f, false, null, 1856);
        }
        if (webViewDestinations instanceof WebViewDestinations.ToStoreLocatorPage) {
            return WebViewActivity.Companion.a(WebViewActivity.v, context, ((WebViewDestinations.ToStoreLocatorPage) webViewDestinations).f65457a, false, false, null, null, null, false, false, null, 2044);
        }
        v40.g();
        return null;
    }
}
