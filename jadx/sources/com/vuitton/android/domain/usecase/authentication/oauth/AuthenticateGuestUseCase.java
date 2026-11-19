package com.vuitton.android.domain.usecase.authentication.oauth;

import com.vuitton.android.domain.repository.TwistAuthRepository;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Deprecated
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateGuestUseCase;", "", "Lcom/vuitton/android/domain/repository/TwistAuthRepository;", "twistAuthRepository", "<init>", "(Lcom/vuitton/android/domain/repository/TwistAuthRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AuthenticateGuestUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TwistAuthRepository f49356a;

    @Inject
    public AuthenticateGuestUseCase(TwistAuthRepository twistAuthRepository) {
        twistAuthRepository.getClass();
        this.f49356a = twistAuthRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ContinuationImpl continuationImpl) {
        AuthenticateGuestUseCase$run$1 authenticateGuestUseCase$run$1;
        if (continuationImpl instanceof AuthenticateGuestUseCase$run$1) {
            authenticateGuestUseCase$run$1 = (AuthenticateGuestUseCase$run$1) continuationImpl;
            int i2 = authenticateGuestUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                authenticateGuestUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                authenticateGuestUseCase$run$1 = new AuthenticateGuestUseCase$run$1(this, continuationImpl);
            }
        } else {
            authenticateGuestUseCase$run$1 = new AuthenticateGuestUseCase$run$1(this, continuationImpl);
        }
        Object obj = authenticateGuestUseCase$run$1.f49357b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = authenticateGuestUseCase$run$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            authenticateGuestUseCase$run$1.d = 1;
            Object objD = this.f49356a.d(authenticateGuestUseCase$run$1);
            return objD == coroutineSingletons ? coroutineSingletons : objD;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }
}
