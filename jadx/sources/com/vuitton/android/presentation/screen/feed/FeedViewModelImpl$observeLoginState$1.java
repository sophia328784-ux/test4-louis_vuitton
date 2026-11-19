package com.vuitton.android.presentation.screen.feed;

import com.vuitton.foundation.model.domain.model.authentication.LoginState;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$observeLoginState$1", f = "FeedViewModelImpl.kt", l = {1164}, m = "invokeSuspend", v = 2)
final class FeedViewModelImpl$observeLoginState$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f57699b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ FeedViewModelImpl f57700c;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$observeLoginState$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "loginState", "Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$observeLoginState$1$1", f = "FeedViewModelImpl.kt", l = {338, 339}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<LoginState, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f57701b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public /* synthetic */ Object f57702c;
        public final /* synthetic */ FeedViewModelImpl d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ Ref$ObjectRef f57703e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(FeedViewModelImpl feedViewModelImpl, Ref$ObjectRef ref$ObjectRef, Continuation continuation) {
            super(2, continuation);
            this.d = feedViewModelImpl;
            this.f57703e = ref$ObjectRef;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, this.f57703e, continuation);
            anonymousClass1.f57702c = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((LoginState) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:23:0x006f, code lost:
        
            if (r6.Fc(false, r8) == r1) goto L24;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r9) {
            /*
                r8 = this;
                java.lang.Object r0 = r8.f57702c
                com.vuitton.foundation.model.domain.model.authentication.LoginState r0 = (com.vuitton.foundation.model.domain.model.authentication.LoginState) r0
                kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r2 = r8.f57701b
                r3 = 2
                r4 = 1
                r5 = 0
                com.vuitton.android.presentation.screen.feed.FeedViewModelImpl r6 = r8.d
                if (r2 == 0) goto L21
                if (r2 == r4) goto L1d
                if (r2 != r3) goto L17
                kotlin.ResultKt.b(r9)
                goto L72
            L17:
                java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.md.k(r8)
                return r5
            L1d:
                kotlin.ResultKt.b(r9)
                goto L66
            L21:
                kotlin.ResultKt.b(r9)
                kotlinx.coroutines.flow.MutableStateFlow r9 = r6.K
            L26:
                java.lang.Object r2 = r9.getValue()
                r7 = r2
                java.lang.Boolean r7 = (java.lang.Boolean) r7
                r7.getClass()
                boolean r7 = r0.a()
                java.lang.Boolean r7 = java.lang.Boolean.valueOf(r7)
                boolean r2 = r9.i(r2, r7)
                if (r2 == 0) goto L26
                boolean r9 = r0.a()
                if (r9 != 0) goto L5b
                kotlinx.coroutines.flow.MutableStateFlow r9 = r6.c0
                java.lang.Boolean r2 = java.lang.Boolean.FALSE
                r9.setValue(r2)
                kotlinx.coroutines.Job r9 = r6.b0
                if (r9 == 0) goto L52
                r9.cancel(r5)
            L52:
                r6.b0 = r5
                kotlinx.coroutines.flow.MutableStateFlow r9 = r6.a0
                com.vuitton.android.presentation.screen.feed.MostPurchasedWithState$NoSku r2 = com.vuitton.android.presentation.screen.feed.MostPurchasedWithState.NoSku.f57749a
                r9.setValue(r2)
            L5b:
                r8.f57702c = r0
                r8.f57701b = r4
                java.lang.Object r9 = com.vuitton.android.presentation.screen.feed.FeedViewModelImpl.Ac(r6, r8)
                if (r9 != r1) goto L66
                goto L71
            L66:
                r8.f57702c = r0
                r8.f57701b = r3
                r9 = 0
                java.lang.Object r9 = r6.Fc(r9, r8)
                if (r9 != r1) goto L72
            L71:
                return r1
            L72:
                kotlinx.coroutines.flow.MutableStateFlow r9 = r6.R
                java.lang.Object r9 = r9.getValue()
                com.vuitton.android.presentation.screen.feed.models.FeedFeatureFlags r9 = (com.vuitton.android.presentation.screen.feed.models.FeedFeatureFlags) r9
                boolean r9 = r9.f57914e
                if (r9 == 0) goto L8b
                androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope r9 = androidx.lifecycle.ViewModelKt.a(r6)
                com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$checkEligibilityForPass$1 r1 = new com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$checkEligibilityForPass$1
                r1.<init>(r6, r5)
                r2 = 3
                kotlinx.coroutines.BuildersKt.c(r9, r5, r5, r1, r2)
            L8b:
                kotlin.jvm.internal.Ref$ObjectRef r8 = r8.f57703e
                java.lang.Object r9 = r8.f71921b
                com.vuitton.foundation.model.domain.model.authentication.LoginState r1 = com.vuitton.foundation.model.domain.model.authentication.LoginState.LOGGED_OUT
                if (r9 != r1) goto Lb2
                com.vuitton.foundation.model.domain.model.authentication.LoginState r9 = com.vuitton.foundation.model.domain.model.authentication.LoginState.LOGGED_IN
                if (r0 != r9) goto Lb2
                kotlinx.coroutines.flow.MutableStateFlow r9 = r6.O
                java.lang.Object r9 = r9.getValue()
                boolean r1 = r9 instanceof com.vuitton.android.presentation.screen.feed.models.FeedTabState.Success
                if (r1 == 0) goto La4
                com.vuitton.android.presentation.screen.feed.models.FeedTabState$Success r9 = (com.vuitton.android.presentation.screen.feed.models.FeedTabState.Success) r9
                goto La5
            La4:
                r9 = r5
            La5:
                if (r9 == 0) goto La9
                com.vuitton.android.presentation.screen.feed.models.uimodels.FeedUiModel r5 = r9.f57922a
            La9:
                boolean r9 = com.vuitton.android.presentation.screen.feed.models.uimodels.FeedUiModelKt.a(r5)
                if (r9 == 0) goto Lb2
                com.vuitton.android.presentation.screen.feed.FeedViewModelImpl.Cc(r6)
            Lb2:
                r8.f71921b = r0
                kotlin.Unit r8 = kotlin.Unit.f71739a
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$observeLoginState$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FeedViewModelImpl$observeLoginState$1(FeedViewModelImpl feedViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f57700c = feedViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new FeedViewModelImpl$observeLoginState$1(this.f57700c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((FeedViewModelImpl$observeLoginState$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f57699b;
        if (i2 == 0) {
            ResultKt.b(obj);
            Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
            FeedViewModelImpl feedViewModelImpl = this.f57700c;
            StateFlow stateFlow = feedViewModelImpl.g.g;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(feedViewModelImpl, ref$ObjectRef, null);
            stateFlow.getClass();
            this.f57699b = 1;
            if (FlowKt.g(stateFlow, anonymousClass1, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        md.k("SharedFlow never completes, this call should never return.");
        return null;
    }
}
