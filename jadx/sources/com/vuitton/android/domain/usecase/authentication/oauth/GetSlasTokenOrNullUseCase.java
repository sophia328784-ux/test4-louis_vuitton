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
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/authentication/oauth/GetSlasTokenOrNullUseCase;", "", "Lcom/vuitton/android/domain/usecase/authentication/oauth/GetAuthTokenUseCase;", "getAuthTokenUseCase", "<init>", "(Lcom/vuitton/android/domain/usecase/authentication/oauth/GetAuthTokenUseCase;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetSlasTokenOrNullUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GetAuthTokenUseCase f49374a;

    @Inject
    public GetSlasTokenOrNullUseCase(GetAuthTokenUseCase getAuthTokenUseCase) {
        getAuthTokenUseCase.getClass();
        this.f49374a = getAuthTokenUseCase;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ContinuationImpl continuationImpl) {
        GetSlasTokenOrNullUseCase$run$1 getSlasTokenOrNullUseCase$run$1;
        if (continuationImpl instanceof GetSlasTokenOrNullUseCase$run$1) {
            getSlasTokenOrNullUseCase$run$1 = (GetSlasTokenOrNullUseCase$run$1) continuationImpl;
            int i2 = getSlasTokenOrNullUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                getSlasTokenOrNullUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                getSlasTokenOrNullUseCase$run$1 = new GetSlasTokenOrNullUseCase$run$1(this, continuationImpl);
            }
        } else {
            getSlasTokenOrNullUseCase$run$1 = new GetSlasTokenOrNullUseCase$run$1(this, continuationImpl);
        }
        Object objD = getSlasTokenOrNullUseCase$run$1.f49375b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = getSlasTokenOrNullUseCase$run$1.d;
        if (i3 == 0) {
            ResultKt.b(objD);
            getSlasTokenOrNullUseCase$run$1.d = 1;
            objD = this.f49374a.f49370a.d(getSlasTokenOrNullUseCase$run$1);
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
        return StringKtExtKt.h(authToken instanceof AuthToken.Twist.User ? ((AuthToken.Twist.User) authToken).d : null);
    }
}
