package com.vuitton.android.presentation.screen.authentication.register.legacy;

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
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.register.legacy.WebViewRegisterScreenKt$WebViewRegisterScreen$2$1", f = "WebViewRegisterScreen.kt", l = {EACTags.MESSAGE_REFERENCE}, m = "invokeSuspend", v = 2)
final class WebViewRegisterScreenKt$WebViewRegisterScreen$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f53889b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AuthenticationViewModel f53890c;
    public final /* synthetic */ CoroutineScope d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f53891e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function0 f53892f;
    public final /* synthetic */ SnackbarHostState g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Context f53893h;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.authentication.register.legacy.WebViewRegisterScreenKt$WebViewRegisterScreen$2$1$1, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    final class AnonymousClass1<T> implements FlowCollector {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ AuthenticationViewModel f53894b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ CoroutineScope f53895c;
        public final /* synthetic */ String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ Function0 f53896e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ SnackbarHostState f53897f;
        public final /* synthetic */ Context g;

        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.authentication.register.legacy.WebViewRegisterScreenKt$WebViewRegisterScreen$2$1$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
        @DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.register.legacy.WebViewRegisterScreenKt$WebViewRegisterScreen$2$1$1$1", f = "WebViewRegisterScreen.kt", l = {EACTags.CERTIFICATION_AUTHORITY_PUBLIC_KEY}, m = "invokeSuspend", v = 2)
        final class C02711 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f53898b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ SnackbarHostState f53899c;
            public final /* synthetic */ Context d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C02711(SnackbarHostState snackbarHostState, Context context, Continuation continuation) {
                super(2, continuation);
                this.f53899c = snackbarHostState;
                this.d = context;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new C02711(this.f53899c, this.d, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((C02711) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.f53898b;
                if (i2 == 0) {
                    ResultKt.b(obj);
                    String string = this.d.getString(R.string.p12_user_login_failed);
                    string.getClass();
                    this.f53898b = 1;
                    if (SnackbarHostState.b(this.f53899c, string, this) == coroutineSingletons) {
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

        public AnonymousClass1(AuthenticationViewModel authenticationViewModel, CoroutineScope coroutineScope, String str, Function0 function0, SnackbarHostState snackbarHostState, Context context) {
            this.f53894b = authenticationViewModel;
            this.f53895c = coroutineScope;
            this.d = str;
            this.f53896e = function0;
            this.f53897f = snackbarHostState;
            this.g = context;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        public final Object b(Continuation continuation) {
            WebViewRegisterScreenKt$WebViewRegisterScreen$2$1$1$emit$1 webViewRegisterScreenKt$WebViewRegisterScreen$2$1$1$emit$1;
            if (continuation instanceof WebViewRegisterScreenKt$WebViewRegisterScreen$2$1$1$emit$1) {
                webViewRegisterScreenKt$WebViewRegisterScreen$2$1$1$emit$1 = (WebViewRegisterScreenKt$WebViewRegisterScreen$2$1$1$emit$1) continuation;
                int i2 = webViewRegisterScreenKt$WebViewRegisterScreen$2$1$1$emit$1.d;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    webViewRegisterScreenKt$WebViewRegisterScreen$2$1$1$emit$1.d = i2 - Integer.MIN_VALUE;
                } else {
                    webViewRegisterScreenKt$WebViewRegisterScreen$2$1$1$emit$1 = new WebViewRegisterScreenKt$WebViewRegisterScreen$2$1$1$emit$1(this, continuation);
                }
            } else {
                webViewRegisterScreenKt$WebViewRegisterScreen$2$1$1$emit$1 = new WebViewRegisterScreenKt$WebViewRegisterScreen$2$1$1$emit$1(this, continuation);
            }
            Object objP = webViewRegisterScreenKt$WebViewRegisterScreen$2$1$1$emit$1.f53900b;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i3 = webViewRegisterScreenKt$WebViewRegisterScreen$2$1$1$emit$1.d;
            AuthenticationViewModel authenticationViewModel = this.f53894b;
            if (i3 == 0) {
                ResultKt.b(objP);
                authenticationViewModel.q();
                BuildersKt.c(this.f53895c, null, null, new C02711(this.f53897f, this.g, null), 3);
                authenticationViewModel.I0(AuthenticationTrackingUiModel.SignInFailedEvent.f53707a);
                authenticationViewModel.J8();
                Flow flowM7 = authenticationViewModel.m7();
                webViewRegisterScreenKt$WebViewRegisterScreen$2$1$1$emit$1.d = 1;
                objP = FlowKt.p(flowM7, webViewRegisterScreenKt$WebViewRegisterScreen$2$1$1$emit$1);
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
                authenticationViewModel.V9(this.d);
            } else {
                this.f53896e.mo47invoke();
            }
            return Unit.f71739a;
        }

        @Override // kotlinx.coroutines.flow.FlowCollector
        public final /* bridge */ /* synthetic */ Object emit(Object obj, Continuation continuation) {
            return b(continuation);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WebViewRegisterScreenKt$WebViewRegisterScreen$2$1(AuthenticationViewModel authenticationViewModel, CoroutineScope coroutineScope, String str, Function0 function0, SnackbarHostState snackbarHostState, Context context, Continuation continuation) {
        super(2, continuation);
        this.f53890c = authenticationViewModel;
        this.d = coroutineScope;
        this.f53891e = str;
        this.f53892f = function0;
        this.g = snackbarHostState;
        this.f53893h = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new WebViewRegisterScreenKt$WebViewRegisterScreen$2$1(this.f53890c, this.d, this.f53891e, this.f53892f, this.g, this.f53893h, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((WebViewRegisterScreenKt$WebViewRegisterScreen$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f53889b;
        if (i2 == 0) {
            ResultKt.b(obj);
            Flow q = this.f53890c.getQ();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f53890c, this.d, this.f53891e, this.f53892f, this.g, this.f53893h);
            this.f53889b = 1;
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
