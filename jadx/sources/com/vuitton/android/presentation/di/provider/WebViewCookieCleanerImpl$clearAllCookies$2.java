package com.vuitton.android.presentation.di.provider;

import android.webkit.ValueCallback;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.SafeContinuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.di.provider.WebViewCookieCleanerImpl$clearAllCookies$2", f = "WebViewCookieCleanerImpl.kt", l = {21}, m = "invokeSuspend", v = 2)
final class WebViewCookieCleanerImpl$clearAllCookies$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends Unit>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f51489b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WebViewCookieCleanerImpl f51490c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WebViewCookieCleanerImpl$clearAllCookies$2(WebViewCookieCleanerImpl webViewCookieCleanerImpl, Continuation continuation) {
        super(2, continuation);
        this.f51490c = webViewCookieCleanerImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new WebViewCookieCleanerImpl$clearAllCookies$2(this.f51490c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((WebViewCookieCleanerImpl$clearAllCookies$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f51489b;
        if (i2 != 0) {
            if (i2 == 1) {
                ResultKt.b(obj);
                return obj;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        this.f51489b = 1;
        final SafeContinuation safeContinuation = new SafeContinuation(IntrinsicsKt.b(this));
        this.f51490c.f51486b.removeAllCookies(new ValueCallback() { // from class: com.vuitton.android.presentation.di.provider.WebViewCookieCleanerImpl$clearAllCookies$2$1$1
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(Object obj2) {
                boolean zBooleanValue = ((Boolean) obj2).booleanValue();
                SafeContinuation safeContinuation2 = safeContinuation;
                if (zBooleanValue) {
                    Result.Companion companion = Result.INSTANCE;
                    safeContinuation2.resumeWith(new Result(Unit.f71739a));
                } else {
                    Result.Companion companion2 = Result.INSTANCE;
                    safeContinuation2.resumeWith(new Result(new Result.Failure(new IllegalStateException("Cookie removal failed"))));
                }
            }
        });
        Object objA = safeContinuation.a();
        return objA == coroutineSingletons ? coroutineSingletons : objA;
    }
}
