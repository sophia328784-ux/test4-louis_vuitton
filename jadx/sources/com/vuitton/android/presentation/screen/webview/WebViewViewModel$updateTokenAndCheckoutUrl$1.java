package com.vuitton.android.presentation.screen.webview;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.webview.WebViewViewModel", f = "WebViewViewModel.kt", l = {194}, m = "updateTokenAndCheckoutUrl", v = 2)
final class WebViewViewModel$updateTokenAndCheckoutUrl$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f65582b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WebViewViewModel f65583c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WebViewViewModel$updateTokenAndCheckoutUrl$1(Continuation continuation, WebViewViewModel webViewViewModel) {
        super(continuation);
        this.f65583c = webViewViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f65582b = obj;
        this.d |= Integer.MIN_VALUE;
        return WebViewViewModel.yc(this, this.f65583c);
    }
}
