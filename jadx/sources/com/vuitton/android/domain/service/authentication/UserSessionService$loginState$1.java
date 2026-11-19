package com.vuitton.android.domain.service.authentication;

import com.vuitton.foundation.model.domain.model.authentication.LoginState;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendFunction;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.AdaptedFunctionReference;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public final /* synthetic */ class UserSessionService$loginState$1 extends AdaptedFunctionReference implements Function2<LoginState, Continuation<? super Unit>, Object>, SuspendFunction {
    public final Object a(LoginState loginState) {
        UserSessionService userSessionService = (UserSessionService) this.receiver;
        if (userSessionService.f49011f == LoginState.LOGGED_IN && loginState == LoginState.LOGGED_OUT) {
            BuildersKt.c(userSessionService.f49010e, null, null, new UserSessionService$clearCache$1(userSessionService, null), 3);
        }
        userSessionService.f49011f = loginState;
        return Unit.f71739a;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return a((LoginState) obj);
    }
}
