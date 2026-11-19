package com.vuitton.android.presentation.screen.authentication.login.legacy;

import android.content.Context;
import androidx.compose.material3.SnackbarHostState;
import com.vuitton.android.R;
import com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel;
import com.vuitton.android.presentation.screen.authentication.models.AuthenticationTrackingUiModel;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.login.legacy.WebViewLoginScreenKt$WebViewLoginScreen$2$1", f = "WebViewLoginScreen.kt", l = {61}, m = "invokeSuspend", v = 2)
final class WebViewLoginScreenKt$WebViewLoginScreen$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f53658b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AuthenticationViewModel f53659c;
    public final /* synthetic */ CoroutineScope d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f53660e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ SnackbarHostState f53661f;
    public final /* synthetic */ Context g;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.authentication.login.legacy.WebViewLoginScreenKt$WebViewLoginScreen$2$1$1, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    final class AnonymousClass1<T> implements FlowCollector {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ AuthenticationViewModel f53662b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ CoroutineScope f53663c;
        public final /* synthetic */ Function0 d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ SnackbarHostState f53664e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Context f53665f;

        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.authentication.login.legacy.WebViewLoginScreenKt$WebViewLoginScreen$2$1$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
        @DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.login.legacy.WebViewLoginScreenKt$WebViewLoginScreen$2$1$1$1", f = "WebViewLoginScreen.kt", l = {64}, m = "invokeSuspend", v = 2)
        final class C02691 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f53666b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ SnackbarHostState f53667c;
            public final /* synthetic */ Context d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C02691(SnackbarHostState snackbarHostState, Context context, Continuation continuation) {
                super(2, continuation);
                this.f53667c = snackbarHostState;
                this.d = context;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new C02691(this.f53667c, this.d, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((C02691) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.f53666b;
                if (i2 == 0) {
                    ResultKt.b(obj);
                    String string = this.d.getString(R.string.p12_user_login_failed);
                    string.getClass();
                    this.f53666b = 1;
                    if (SnackbarHostState.b(this.f53667c, string, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                } else {
                    if (i2 != 1) {
                        md.k("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.b(obj);
                }
                return Unit.f71739a;
            }
        }

        public AnonymousClass1(AuthenticationViewModel authenticationViewModel, CoroutineScope coroutineScope, Function0 function0, SnackbarHostState snackbarHostState, Context context) {
            this.f53662b = authenticationViewModel;
            this.f53663c = coroutineScope;
            this.d = function0;
            this.f53664e = snackbarHostState;
            this.f53665f = context;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        public final Object b(Continuation continuation) {
            WebViewLoginScreenKt$WebViewLoginScreen$2$1$1$emit$1 webViewLoginScreenKt$WebViewLoginScreen$2$1$1$emit$1;
            if (continuation instanceof WebViewLoginScreenKt$WebViewLoginScreen$2$1$1$emit$1) {
                webViewLoginScreenKt$WebViewLoginScreen$2$1$1$emit$1 = (WebViewLoginScreenKt$WebViewLoginScreen$2$1$1$emit$1) continuation;
                int i2 = webViewLoginScreenKt$WebViewLoginScreen$2$1$1$emit$1.d;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    webViewLoginScreenKt$WebViewLoginScreen$2$1$1$emit$1.d = i2 - Integer.MIN_VALUE;
                } else {
                    webViewLoginScreenKt$WebViewLoginScreen$2$1$1$emit$1 = new WebViewLoginScreenKt$WebViewLoginScreen$2$1$1$emit$1(this, continuation);
                }
            } else {
                webViewLoginScreenKt$WebViewLoginScreen$2$1$1$emit$1 = new WebViewLoginScreenKt$WebViewLoginScreen$2$1$1$emit$1(this, continuation);
            }
            Object objP = webViewLoginScreenKt$WebViewLoginScreen$2$1$1$emit$1.f53668b;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i3 = webViewLoginScreenKt$WebViewLoginScreen$2$1$1$emit$1.d;
            AuthenticationViewModel authenticationViewModel = this.f53662b;
            if (i3 == 0) {
                ResultKt.b(objP);
                authenticationViewModel.q();
                BuildersKt.c(this.f53663c, null, null, new C02691(this.f53664e, this.f53665f, null), 3);
                authenticationViewModel.I0(AuthenticationTrackingUiModel.SignInFailedEvent.f53707a);
                authenticationViewModel.J8();
                Flow flowM7 = authenticationViewModel.m7();
                webViewLoginScreenKt$WebViewLoginScreen$2$1$1$emit$1.d = 1;
                objP = FlowKt.p(flowM7, webViewLoginScreenKt$WebViewLoginScreen$2$1$1$emit$1);
                if (objP == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(objP);
            }
            if (Intrinsics.c((Boolean) objP, Boolean.FALSE)) {
                authenticationViewModel.R4();
            } else {
                this.d.mo47invoke();
            }
            return Unit.f71739a;
        }

        @Override // kotlinx.coroutines.flow.FlowCollector
        public final /* bridge */ /* synthetic */ Object emit(Object obj, Continuation continuation) {
            return b(continuation);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WebViewLoginScreenKt$WebViewLoginScreen$2$1(AuthenticationViewModel authenticationViewModel, CoroutineScope coroutineScope, Function0 function0, SnackbarHostState snackbarHostState, Context context, Continuation continuation) {
        super(2, continuation);
        this.f53659c = authenticationViewModel;
        this.d = coroutineScope;
        this.f53660e = function0;
        this.f53661f = snackbarHostState;
        this.g = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new WebViewLoginScreenKt$WebViewLoginScreen$2$1(this.f53659c, this.d, this.f53660e, this.f53661f, this.g, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((WebViewLoginScreenKt$WebViewLoginScreen$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f53658b;
        if (i2 == 0) {
            ResultKt.b(obj);
            Flow q = this.f53659c.getQ();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f53659c, this.d, this.f53660e, this.f53661f, this.g);
            this.f53658b = 1;
            if (q.f(anonymousClass1, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        return Unit.f71739a;
    }
}
