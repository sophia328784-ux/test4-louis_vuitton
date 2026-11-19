package com.vuitton.android.presentation.screen.authentication.register.legacy;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.register.legacy.WebViewRegisterScreenKt$WebViewRegisterScreen$2$1$1", f = "WebViewRegisterScreen.kt", l = {78}, m = "emit", v = 2)
final class WebViewRegisterScreenKt$WebViewRegisterScreen$2$1$1$emit$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f53900b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WebViewRegisterScreenKt$WebViewRegisterScreen$2$1.AnonymousClass1 f53901c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WebViewRegisterScreenKt$WebViewRegisterScreen$2$1$1$emit$1(WebViewRegisterScreenKt$WebViewRegisterScreen$2$1.AnonymousClass1 anonymousClass1, Continuation continuation) {
        super(continuation);
        this.f53901c = anonymousClass1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f53900b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.f53901c.b(this);
    }
}
