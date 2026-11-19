package com.vuitton.android.domain.usecase.authentication.oauth;

import com.vuitton.android.domain.repository.TwistAuthRepository;
import com.vuitton.foundation.model.domain.model.authentication.oauth.RegisterInitiateBody;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/authentication/oauth/RegisterInitiateUseCase;", "", "Lcom/vuitton/android/domain/repository/TwistAuthRepository;", "twistAuthRepository", "<init>", "(Lcom/vuitton/android/domain/repository/TwistAuthRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class RegisterInitiateUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TwistAuthRepository f49407a;

    @Inject
    public RegisterInitiateUseCase(TwistAuthRepository twistAuthRepository) {
        twistAuthRepository.getClass();
        this.f49407a = twistAuthRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(RegisterInitiateBody registerInitiateBody, ContinuationImpl continuationImpl) {
        RegisterInitiateUseCase$run$1 registerInitiateUseCase$run$1;
        if (continuationImpl instanceof RegisterInitiateUseCase$run$1) {
            registerInitiateUseCase$run$1 = (RegisterInitiateUseCase$run$1) continuationImpl;
            int i2 = registerInitiateUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                registerInitiateUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                registerInitiateUseCase$run$1 = new RegisterInitiateUseCase$run$1(this, continuationImpl);
            }
        } else {
            registerInitiateUseCase$run$1 = new RegisterInitiateUseCase$run$1(this, continuationImpl);
        }
        Object obj = registerInitiateUseCase$run$1.f49408b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = registerInitiateUseCase$run$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            registerInitiateUseCase$run$1.d = 1;
            Object objN = this.f49407a.n(registerInitiateBody, registerInitiateUseCase$run$1);
            return objN == coroutineSingletons ? coroutineSingletons : objN;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }
}
