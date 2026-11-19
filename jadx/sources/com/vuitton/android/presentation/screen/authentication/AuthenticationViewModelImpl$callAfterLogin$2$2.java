package com.vuitton.android.presentation.screen.authentication;

import com.vuitton.android.domain.usecase.connectivity.GetConnectedObjectListUseCase;
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

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.AuthenticationViewModelImpl$callAfterLogin$2$2", f = "AuthenticationViewModelImpl.kt", l = {445}, m = "invokeSuspend", v = 2)
final class AuthenticationViewModelImpl$callAfterLogin$2$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f53294b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AuthenticationViewModelImpl f53295c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AuthenticationViewModelImpl$callAfterLogin$2$2(AuthenticationViewModelImpl authenticationViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f53295c = authenticationViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AuthenticationViewModelImpl$callAfterLogin$2$2(this.f53295c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AuthenticationViewModelImpl$callAfterLogin$2$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f53294b;
        if (i2 == 0) {
            ResultKt.b(obj);
            GetConnectedObjectListUseCase getConnectedObjectListUseCase = this.f53295c.v;
            GetConnectedObjectListUseCase.Params params = new GetConnectedObjectListUseCase.Params(false, true, 1, null);
            this.f53294b = 1;
            if (getConnectedObjectListUseCase.a(params, this) == coroutineSingletons) {
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
