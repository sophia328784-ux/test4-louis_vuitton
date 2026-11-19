package com.vuitton.android.data.net.interceptor;

import com.vuitton.android.domain.repository.AuthTokenRepository;
import com.vuitton.foundation.model.domain.model.authentication.AuthToken;
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

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.net.interceptor.AddTwistOnlySfidAndSlasTokenInterceptor$intercept$authToken$1", f = "AddTwistOnlySfidAndSlasTokenInterceptor.kt", l = {22}, m = "invokeSuspend", v = 2)
final class AddTwistOnlySfidAndSlasTokenInterceptor$intercept$authToken$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super AuthToken>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f47060b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AddTwistOnlySfidAndSlasTokenInterceptor f47061c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddTwistOnlySfidAndSlasTokenInterceptor$intercept$authToken$1(AddTwistOnlySfidAndSlasTokenInterceptor addTwistOnlySfidAndSlasTokenInterceptor, Continuation continuation) {
        super(2, continuation);
        this.f47061c = addTwistOnlySfidAndSlasTokenInterceptor;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AddTwistOnlySfidAndSlasTokenInterceptor$intercept$authToken$1(this.f47061c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AddTwistOnlySfidAndSlasTokenInterceptor$intercept$authToken$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f47060b;
        if (i2 != 0) {
            if (i2 == 1) {
                ResultKt.b(obj);
                return obj;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        AuthTokenRepository authTokenRepository = this.f47061c.f47059b;
        this.f47060b = 1;
        Object objD = authTokenRepository.d(this);
        return objD == coroutineSingletons ? coroutineSingletons : objD;
    }
}
