package com.vuitton.android.data.repository;

import com.vuitton.android.data.dto.authentication.oauth.ApiTokenDto;
import com.vuitton.android.data.dto.authentication.oauth.mapper.ApiTokenMapperKt;
import com.vuitton.foundation.model.domain.model.authentication.AuthToken;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken;", "apiTokenDto", "Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.TwistAuthRepositoryImpl$refreshToken$2$newTokens$1", f = "TwistAuthRepositoryImpl.kt", l = {}, m = "invokeSuspend", v = 2)
final class TwistAuthRepositoryImpl$refreshToken$2$newTokens$1 extends SuspendLambda implements Function2<ApiTokenDto, Continuation<? super AuthToken>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f48133b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AuthToken.Twist f48134c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TwistAuthRepositoryImpl$refreshToken$2$newTokens$1(AuthToken.Twist twist, Continuation continuation) {
        super(2, continuation);
        this.f48134c = twist;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        TwistAuthRepositoryImpl$refreshToken$2$newTokens$1 twistAuthRepositoryImpl$refreshToken$2$newTokens$1 = new TwistAuthRepositoryImpl$refreshToken$2$newTokens$1(this.f48134c, continuation);
        twistAuthRepositoryImpl$refreshToken$2$newTokens$1.f48133b = obj;
        return twistAuthRepositoryImpl$refreshToken$2$newTokens$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((TwistAuthRepositoryImpl$refreshToken$2$newTokens$1) create((ApiTokenDto) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ApiTokenDto apiTokenDto = (ApiTokenDto) this.f48133b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        return ApiTokenMapperKt.a(apiTokenDto, this.f48134c);
    }
}
