package com.vuitton.android.presentation.screen.authentication.login.legacy;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.login.legacy.WebViewLoginScreenKt$WebViewLoginScreen$2$1$1", f = "WebViewLoginScreen.kt", l = {EACTags.APPLICATION_IMAGE}, m = "emit", v = 2)
final class WebViewLoginScreenKt$WebViewLoginScreen$2$1$1$emit$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f53668b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WebViewLoginScreenKt$WebViewLoginScreen$2$1.AnonymousClass1 f53669c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WebViewLoginScreenKt$WebViewLoginScreen$2$1$1$emit$1(WebViewLoginScreenKt$WebViewLoginScreen$2$1.AnonymousClass1 anonymousClass1, Continuation continuation) {
        super(continuation);
        this.f53669c = anonymousClass1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f53668b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.f53669c.b(this);
    }
}
