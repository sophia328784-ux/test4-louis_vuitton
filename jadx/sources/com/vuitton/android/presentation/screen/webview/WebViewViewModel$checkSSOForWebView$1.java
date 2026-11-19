package com.vuitton.android.presentation.screen.webview;

import com.vuitton.android.domain.usecase.account.RefreshFacadeUserSessionUseCase;
import defpackage.md;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.ChannelResult;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.webview.WebViewViewModel$checkSSOForWebView$1", f = "WebViewViewModel.kt", l = {142}, m = "invokeSuspend", v = 2)
final class WebViewViewModel$checkSSOForWebView$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public WebViewViewModel f65566b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f65567c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ WebViewViewModel f65568e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f65569f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WebViewViewModel$checkSSOForWebView$1(WebViewViewModel webViewViewModel, String str, Continuation continuation) {
        super(2, continuation);
        this.f65568e = webViewViewModel;
        this.f65569f = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new WebViewViewModel$checkSSOForWebView$1(this.f65568e, this.f65569f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((WebViewViewModel$checkSSOForWebView$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0064  */
    /* JADX WARN: Code duplicated, block: B:30:0x0068  */
    /* JADX WARN: Code duplicated, block: B:33:0x007d  */
    /* JADX WARN: Code duplicated, block: B:36:0x008a  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object failure;
        Throwable thA;
        Throwable thA2;
        String str;
        WebViewViewModel webViewViewModel;
        String str2;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.d;
        WebViewViewModel webViewViewModel2 = this.f65568e;
        try {
            if (i2 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                boolean zB = webViewViewModel2.f65547a.b();
                str = this.f65569f;
                if (zB) {
                    RefreshFacadeUserSessionUseCase refreshFacadeUserSessionUseCase = webViewViewModel2.f65548b;
                    this.f65566b = webViewViewModel2;
                    this.f65567c = str;
                    this.d = 1;
                    if (refreshFacadeUserSessionUseCase.a(this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                    str2 = str;
                    webViewViewModel = webViewViewModel2;
                } else {
                    webViewViewModel = webViewViewModel2;
                }
                failure = new Result(new ChannelResult(webViewViewModel.u.b(new WebViewViewEvents.LoadCart(str))));
                thA = Result.a(failure);
                if (thA != null) {
                    if (!(thA instanceof CancellationException)) {
                        throw thA;
                    }
                    failure = new Result(new Result.Failure(thA));
                }
                thA2 = Result.a(((Result) failure).f71708b);
                if (thA2 != null) {
                    webViewViewModel2.u.b(new WebViewViewEvents.DisplayError(thA2));
                }
                return Unit.f71739a;
            }
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            str2 = this.f65567c;
            webViewViewModel = this.f65566b;
            ResultKt.b(obj);
            str = str2;
            failure = new Result(new ChannelResult(webViewViewModel.u.b(new WebViewViewEvents.LoadCart(str))));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        thA = Result.a(failure);
        if (thA != null) {
            if (!(thA instanceof CancellationException)) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        thA2 = Result.a(((Result) failure).f71708b);
        if (thA2 != null) {
            webViewViewModel2.u.b(new WebViewViewEvents.DisplayError(thA2));
        }
        return Unit.f71739a;
    }
}
