package com.vuitton.android.presentation.screen.webview;

import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class c implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f65590b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WebResourceRequest f65591c;
    public final /* synthetic */ Object d;

    public /* synthetic */ c(Object obj, WebResourceRequest webResourceRequest, int i2) {
        this.f65590b = i2;
        this.d = obj;
        this.f65591c = webResourceRequest;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f65590b;
        WebResourceRequest webResourceRequest = this.f65591c;
        Object obj = this.d;
        switch (i2) {
            case 0:
                int i3 = WebViewFragment.LVWebViewClient.f65466b;
                return "HTTP " + ((WebResourceResponse) obj).getStatusCode() + " on " + webResourceRequest.getUrl();
            default:
                WebResourceError webResourceError = (WebResourceError) obj;
                int i4 = WebViewFragment.LVWebViewClient.f65466b;
                int errorCode = webResourceError.getErrorCode();
                CharSequence description = webResourceError.getDescription();
                return errorCode + " " + ((Object) description) + " on " + webResourceRequest.getUrl();
        }
    }
}
