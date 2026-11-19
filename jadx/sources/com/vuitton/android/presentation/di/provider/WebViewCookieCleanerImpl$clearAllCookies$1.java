package com.vuitton.android.presentation.di.provider;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.di.provider.WebViewCookieCleanerImpl", f = "WebViewCookieCleanerImpl.kt", l = {20}, m = "clearAllCookies-IoAF18A", v = 2)
final class WebViewCookieCleanerImpl$clearAllCookies$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f51487b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WebViewCookieCleanerImpl f51488c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WebViewCookieCleanerImpl$clearAllCookies$1(WebViewCookieCleanerImpl webViewCookieCleanerImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f51488c = webViewCookieCleanerImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f51487b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f51488c.a(this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
