package com.vuitton.android.domain.usecase.authentication.oauth;

import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import com.vuitton.foundation.model.domain.model.authentication.AuthToken;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/authentication/oauth/GetSfidTokenOrNullUseCase;", "", "Lcom/vuitton/android/domain/usecase/authentication/oauth/GetAuthTokenUseCase;", "getAuthTokenUseCase", "<init>", "(Lcom/vuitton/android/domain/usecase/authentication/oauth/GetAuthTokenUseCase;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetSfidTokenOrNullUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GetAuthTokenUseCase f49371a;

    @Inject
    public GetSfidTokenOrNullUseCase(GetAuthTokenUseCase getAuthTokenUseCase) {
        getAuthTokenUseCase.getClass();
        this.f49371a = getAuthTokenUseCase;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ContinuationImpl continuationImpl) {
        GetSfidTokenOrNullUseCase$run$1 getSfidTokenOrNullUseCase$run$1;
        if (continuationImpl instanceof GetSfidTokenOrNullUseCase$run$1) {
            getSfidTokenOrNullUseCase$run$1 = (GetSfidTokenOrNullUseCase$run$1) continuationImpl;
            int i2 = getSfidTokenOrNullUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                getSfidTokenOrNullUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                getSfidTokenOrNullUseCase$run$1 = new GetSfidTokenOrNullUseCase$run$1(this, continuationImpl);
            }
        } else {
            getSfidTokenOrNullUseCase$run$1 = new GetSfidTokenOrNullUseCase$run$1(this, continuationImpl);
        }
        Object objD = getSfidTokenOrNullUseCase$run$1.f49372b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = getSfidTokenOrNullUseCase$run$1.d;
        String str = null;
        if (i3 == 0) {
            ResultKt.b(objD);
            getSfidTokenOrNullUseCase$run$1.d = 1;
            objD = this.f49371a.f49370a.d(getSfidTokenOrNullUseCase$run$1);
            if (objD == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objD);
        }
        AuthToken authToken = (AuthToken) objD;
        if (authToken instanceof AuthToken.Atg) {
            str = ((AuthToken.Atg) authToken).f66589b;
        } else if (authToken instanceof AuthToken.Twist.User) {
            str = ((AuthToken.Twist.User) authToken).f66595b;
        }
        return StringKtExtKt.h(str);
    }
}
