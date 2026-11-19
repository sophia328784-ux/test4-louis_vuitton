package com.vuitton.android.data.repository;

import com.vuitton.android.data.dto.authentication.oauth.ApiTokenDto;
import com.vuitton.android.data.dto.authentication.oauth.mapper.ApiTokenMapperKt;
import com.vuitton.foundation.model.domain.model.authentication.AuthToken;
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

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;", "tokenDto", "Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.TwistAuthRepositoryImpl$cookieExchangeFromCheckout$2$newTokens$1", f = "TwistAuthRepositoryImpl.kt", l = {222}, m = "invokeSuspend", v = 2)
final class TwistAuthRepositoryImpl$cookieExchangeFromCheckout$2$newTokens$1 extends SuspendLambda implements Function2<ApiTokenDto, Continuation<? super AuthToken.Twist.User>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AuthToken.Twist.User f48099b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f48100c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ TwistAuthRepositoryImpl f48101e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TwistAuthRepositoryImpl$cookieExchangeFromCheckout$2$newTokens$1(TwistAuthRepositoryImpl twistAuthRepositoryImpl, Continuation continuation) {
        super(2, continuation);
        this.f48101e = twistAuthRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        TwistAuthRepositoryImpl$cookieExchangeFromCheckout$2$newTokens$1 twistAuthRepositoryImpl$cookieExchangeFromCheckout$2$newTokens$1 = new TwistAuthRepositoryImpl$cookieExchangeFromCheckout$2$newTokens$1(this.f48101e, continuation);
        twistAuthRepositoryImpl$cookieExchangeFromCheckout$2$newTokens$1.d = obj;
        return twistAuthRepositoryImpl$cookieExchangeFromCheckout$2$newTokens$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((TwistAuthRepositoryImpl$cookieExchangeFromCheckout$2$newTokens$1) create((ApiTokenDto) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ApiTokenDto apiTokenDto = (ApiTokenDto) this.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f48100c;
        if (i2 == 0) {
            ResultKt.b(obj);
            AuthToken.Twist.User userB = ApiTokenMapperKt.b(apiTokenDto);
            this.d = null;
            this.f48099b = userB;
            this.f48100c = 1;
            return this.f48101e.b(userB, this) == coroutineSingletons ? coroutineSingletons : userB;
        }
        if (i2 != 1) {
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        AuthToken.Twist.User user = this.f48099b;
        ResultKt.b(obj);
        ((Result) obj).getClass();
        return user;
    }
}
