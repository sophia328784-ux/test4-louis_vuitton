package com.vuitton.android.presentation.screen.webview;

import com.vuitton.android.presentation.screen.cart.models.CartPreviousScreen;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.webview.WebViewViewModel$onConfirmationPageReached$1", f = "WebViewViewModel.kt", l = {162, 164}, m = "invokeSuspend", v = 2)
final class WebViewViewModel$onConfirmationPageReached$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f65572b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WebViewViewModel f65573c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ CartPreviousScreen f65574e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WebViewViewModel$onConfirmationPageReached$1(WebViewViewModel webViewViewModel, String str, CartPreviousScreen cartPreviousScreen, Continuation continuation) {
        super(2, continuation);
        this.f65573c = webViewViewModel;
        this.d = str;
        this.f65574e = cartPreviousScreen;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new WebViewViewModel$onConfirmationPageReached$1(this.f65573c, this.d, this.f65574e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((WebViewViewModel$onConfirmationPageReached$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0047, code lost:
    
        if (r6 == r0) goto L17;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r6) {
        /*
            r5 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r5.f65572b
            r2 = 2
            com.vuitton.android.presentation.screen.webview.WebViewViewModel r3 = r5.f65573c
            r4 = 1
            if (r1 == 0) goto L22
            if (r1 == r4) goto L19
            if (r1 != r2) goto L12
            kotlin.ResultKt.b(r6)
            goto L4a
        L12:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r5)
            r5 = 0
            return r5
        L19:
            kotlin.ResultKt.b(r6)
            kotlin.Result r6 = (kotlin.Result) r6
            r6.getClass()
            goto L38
        L22:
            kotlin.ResultKt.b(r6)
            boolean r6 = r3.w
            if (r6 != 0) goto L38
            r3.w = r4
            com.vuitton.android.domain.usecase.authentication.oauth.RefreshAuthFromCheckoutUseCase r6 = r3.f65555k
            r5.f65572b = r4
            java.lang.String r1 = r5.d
            java.lang.Object r6 = r6.a(r1, r5)
            if (r6 != r0) goto L38
            goto L49
        L38:
            com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase r6 = r3.f65554j
            com.vuitton.foundation.model.domain.model.sync.Feature r1 = com.vuitton.foundation.model.domain.model.sync.Feature.NATIVE_THANK_YOU_PAGE_REDIRECT
            com.vuitton.foundation.model.domain.model.sync.Feature[] r1 = new com.vuitton.foundation.model.domain.model.sync.Feature[]{r1}
            r5.f65572b = r2
            r2 = 0
            java.lang.Object r6 = r6.c(r1, r2, r5)
            if (r6 != r0) goto L4a
        L49:
            return r0
        L4a:
            java.lang.Boolean r6 = (java.lang.Boolean) r6
            boolean r6 = r6.booleanValue()
            if (r6 == 0) goto L62
            kotlinx.coroutines.flow.SharedFlowImpl r6 = r3.s
            com.vuitton.android.presentation.screen.webview.WebViewViewModel$CheckoutEvent$NavigateToThankYou r0 = new com.vuitton.android.presentation.screen.webview.WebViewViewModel$CheckoutEvent$NavigateToThankYou
            com.vuitton.android.presentation.screen.cart.models.CartPreviousScreen r5 = r5.f65574e
            if (r5 != 0) goto L5c
            com.vuitton.android.presentation.screen.cart.models.CartPreviousScreen r5 = com.vuitton.android.presentation.screen.cart.models.CartPreviousScreen.MAIN
        L5c:
            r0.<init>(r5)
            r6.a(r0)
        L62:
            kotlin.Unit r5 = kotlin.Unit.f71739a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.webview.WebViewViewModel$onConfirmationPageReached$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
