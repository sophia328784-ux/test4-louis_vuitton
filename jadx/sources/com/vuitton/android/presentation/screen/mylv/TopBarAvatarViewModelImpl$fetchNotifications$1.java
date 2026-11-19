package com.vuitton.android.presentation.screen.mylv;

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
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.mylv.TopBarAvatarViewModelImpl$fetchNotifications$1", f = "TopBarAvatarViewModelImpl.kt", l = {103}, m = "invokeSuspend", v = 2)
final class TopBarAvatarViewModelImpl$fetchNotifications$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f59371b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TopBarAvatarViewModelImpl f59372c;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.mylv.TopBarAvatarViewModelImpl$fetchNotifications$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "loginState", "Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.mylv.TopBarAvatarViewModelImpl$fetchNotifications$1$1", f = "TopBarAvatarViewModelImpl.kt", l = {91, 93}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<LoginState, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f59373b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public /* synthetic */ Object f59374c;
        public final /* synthetic */ TopBarAvatarViewModelImpl d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(TopBarAvatarViewModelImpl topBarAvatarViewModelImpl, Continuation continuation) {
            super(2, continuation);
            this.d = topBarAvatarViewModelImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, continuation);
            anonymousClass1.f59374c = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((LoginState) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x004a, code lost:
        
            if (r1.d(r8) == r3) goto L19;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r9) {
            /*
                r8 = this;
                com.vuitton.android.presentation.screen.mylv.TopBarAvatarViewModelImpl r0 = r8.d
                com.vuitton.android.presentation.push.NotificationsManager r1 = r0.d
                java.lang.Object r2 = r8.f59374c
                com.vuitton.foundation.model.domain.model.authentication.LoginState r2 = (com.vuitton.foundation.model.domain.model.authentication.LoginState) r2
                kotlin.coroutines.intrinsics.CoroutineSingletons r3 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r4 = r8.f59373b
                r5 = 0
                r6 = 2
                r7 = 1
                if (r4 == 0) goto L28
                if (r4 == r7) goto L24
                if (r4 != r6) goto L1e
                kotlin.ResultKt.b(r9)
                kotlin.Result r9 = (kotlin.Result) r9
                r9.getClass()
                goto L4d
            L1e:
                java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.md.k(r8)
                return r5
            L24:
                kotlin.ResultKt.b(r9)
                goto L3c
            L28:
                kotlin.ResultKt.b(r9)
                boolean r9 = r2.a()
                if (r9 == 0) goto L67
                r8.f59374c = r5
                r8.f59373b = r7
                java.lang.Object r9 = r1.j(r8)
                if (r9 != r3) goto L3c
                goto L4c
            L3c:
                boolean r9 = r1.getL()
                if (r9 == 0) goto L67
                r8.f59374c = r5
                r8.f59373b = r6
                java.lang.Object r8 = r1.d(r8)
                if (r8 != r3) goto L4d
            L4c:
                return r3
            L4d:
                kotlinx.coroutines.flow.MutableStateFlow r8 = r0.f59365h
            L4f:
                java.lang.Object r9 = r8.getValue()
                r0 = r9
                java.lang.Boolean r0 = (java.lang.Boolean) r0
                r0.getClass()
                boolean r0 = r1.e()
                java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
                boolean r9 = r8.i(r9, r0)
                if (r9 == 0) goto L4f
            L67:
                kotlin.Unit r8 = kotlin.Unit.f71739a
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.mylv.TopBarAvatarViewModelImpl$fetchNotifications$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TopBarAvatarViewModelImpl$fetchNotifications$1(TopBarAvatarViewModelImpl topBarAvatarViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f59372c = topBarAvatarViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new TopBarAvatarViewModelImpl$fetchNotifications$1(this.f59372c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((TopBarAvatarViewModelImpl$fetchNotifications$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f59371b;
        if (i2 == 0) {
            ResultKt.b(obj);
            TopBarAvatarViewModelImpl topBarAvatarViewModelImpl = this.f59372c;
            StateFlow stateFlow = topBarAvatarViewModelImpl.f59361b.g;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(topBarAvatarViewModelImpl, null);
            stateFlow.getClass();
            this.f59371b = 1;
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
