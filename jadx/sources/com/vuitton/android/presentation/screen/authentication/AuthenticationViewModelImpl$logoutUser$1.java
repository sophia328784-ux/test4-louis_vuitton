package com.vuitton.android.presentation.screen.authentication;

import com.vuitton.android.core.events.AppEvent;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.domain.usecase.authentication.oauth.LogoutUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.ResetDynamicYieldIdUseCase;
import defpackage.md;
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

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.AuthenticationViewModelImpl$logoutUser$1", f = "AuthenticationViewModelImpl.kt", l = {341, 346, 351}, m = "invokeSuspend", v = 2)
final class AuthenticationViewModelImpl$logoutUser$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f53304b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public AuthenticationViewModelImpl f53305c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f53306e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ AuthenticationViewModelImpl f53307f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AuthenticationViewModelImpl$logoutUser$1(AuthenticationViewModelImpl authenticationViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f53307f = authenticationViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AuthenticationViewModelImpl$logoutUser$1(this.f53307f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AuthenticationViewModelImpl$logoutUser$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x006c  */
    /* JADX WARN: Code duplicated, block: B:27:0x008f  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        Object obj2;
        Object obj3;
        int i2;
        LVEventSender lVEventSender;
        AuthenticationViewModelImpl authenticationViewModelImpl;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = this.f53306e;
        AuthenticationViewModelImpl authenticationViewModelImpl2 = this.f53307f;
        if (i3 == 0) {
            ResultKt.b(obj);
            LogoutUseCase logoutUseCase = authenticationViewModelImpl2.f53283j;
            this.f53306e = 1;
            objA = logoutUseCase.a(this);
            if (objA != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        } else {
            if (i3 == 2) {
                i2 = this.d;
                authenticationViewModelImpl2 = this.f53305c;
                obj2 = this.f53304b;
                ResultKt.b(obj);
                obj3 = ((Result) obj).f71708b;
                if (Result.a(obj3) != null) {
                    authenticationViewModelImpl2.f53276a.c("AuthenticationViewModelImpl", "Unable to reset Dynamic Yield ID", null);
                }
                authenticationViewModelImpl2.w.f49230a.b(null);
                lVEventSender = authenticationViewModelImpl2.f53278c;
                this.f53304b = obj2;
                this.f53305c = authenticationViewModelImpl2;
                this.d = i2;
                this.f53306e = 3;
                if (lVEventSender.a(AppEvent.LogOutEvent.f43498a, this) != coroutineSingletons) {
                    authenticationViewModelImpl = authenticationViewModelImpl2;
                }
                return coroutineSingletons;
            }
            if (i3 != 3) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            authenticationViewModelImpl = this.f53305c;
            ResultKt.b(obj);
        }
        authenticationViewModelImpl.H.b(AuthenticationSideEffect.Event.LogoutSuccess.f53275a);
        return Unit.f71739a;
        Result.Companion companion = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            authenticationViewModelImpl2.f53281h.l();
            ResetDynamicYieldIdUseCase resetDynamicYieldIdUseCase = authenticationViewModelImpl2.t;
            this.f53304b = objA;
            this.f53305c = authenticationViewModelImpl2;
            this.d = 0;
            this.f53306e = 2;
            Object objA2 = resetDynamicYieldIdUseCase.a(this);
            if (objA2 != coroutineSingletons) {
                obj2 = objA;
                obj3 = objA2;
                i2 = 0;
                if (Result.a(obj3) != null) {
                    authenticationViewModelImpl2.f53276a.c("AuthenticationViewModelImpl", "Unable to reset Dynamic Yield ID", null);
                }
                authenticationViewModelImpl2.w.f49230a.b(null);
                lVEventSender = authenticationViewModelImpl2.f53278c;
                this.f53304b = obj2;
                this.f53305c = authenticationViewModelImpl2;
                this.d = i2;
                this.f53306e = 3;
                if (lVEventSender.a(AppEvent.LogOutEvent.f43498a, this) != coroutineSingletons) {
                    authenticationViewModelImpl = authenticationViewModelImpl2;
                    authenticationViewModelImpl.H.b(AuthenticationSideEffect.Event.LogoutSuccess.f53275a);
                }
            }
            return coroutineSingletons;
        }
        return Unit.f71739a;
    }
}
