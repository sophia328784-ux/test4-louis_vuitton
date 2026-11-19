package com.vuitton.android.domain.usecase.authentication;

import com.vuitton.android.domain.repository.ATGSessionRepository;
import com.vuitton.android.domain.usecase.authentication.oauth.GetAuthTokenUseCase;
import com.vuitton.foundation.model.domain.model.authentication.AuthToken;
import defpackage.md;
import defpackage.v40;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/domain/usecase/authentication/CreateATGSessionUseCase;", "", "Lcom/vuitton/android/domain/usecase/authentication/oauth/GetAuthTokenUseCase;", "getAuthTokenUseCase", "Lcom/vuitton/android/domain/repository/ATGSessionRepository;", "atgSessionRepository", "<init>", "(Lcom/vuitton/android/domain/usecase/authentication/oauth/GetAuthTokenUseCase;Lcom/vuitton/android/domain/repository/ATGSessionRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CreateATGSessionUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GetAuthTokenUseCase f49336a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ATGSessionRepository f49337b;

    @Inject
    public CreateATGSessionUseCase(GetAuthTokenUseCase getAuthTokenUseCase, ATGSessionRepository aTGSessionRepository) {
        getAuthTokenUseCase.getClass();
        aTGSessionRepository.getClass();
        this.f49336a = getAuthTokenUseCase;
        this.f49337b = aTGSessionRepository;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0074  */
    /* JADX WARN: Code duplicated, block: B:32:0x0081 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:33:0x0082  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ContinuationImpl continuationImpl) {
        CreateATGSessionUseCase$run$1 createATGSessionUseCase$run$1;
        Object obj;
        int i2;
        String str;
        Object objB;
        if (continuationImpl instanceof CreateATGSessionUseCase$run$1) {
            createATGSessionUseCase$run$1 = (CreateATGSessionUseCase$run$1) continuationImpl;
            int i3 = createATGSessionUseCase$run$1.f49341f;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                createATGSessionUseCase$run$1.f49341f = i3 - Integer.MIN_VALUE;
            } else {
                createATGSessionUseCase$run$1 = new CreateATGSessionUseCase$run$1(this, continuationImpl);
            }
        } else {
            createATGSessionUseCase$run$1 = new CreateATGSessionUseCase$run$1(this, continuationImpl);
        }
        Object objD = createATGSessionUseCase$run$1.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i4 = createATGSessionUseCase$run$1.f49341f;
        ATGSessionRepository aTGSessionRepository = this.f49337b;
        if (i4 == 0) {
            ResultKt.b(objD);
            createATGSessionUseCase$run$1.f49341f = 1;
            objD = this.f49336a.f49370a.d(createATGSessionUseCase$run$1);
            if (objD != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i4 == 1) {
            ResultKt.b(objD);
        } else {
            if (i4 != 2) {
                if (i4 == 3) {
                    ResultKt.b(objD);
                    return ((Result) objD).f71708b;
                }
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            i2 = createATGSessionUseCase$run$1.f49339c;
            obj = createATGSessionUseCase$run$1.f49338b;
            ResultKt.b(objD);
        }
        str = ((AuthToken.Atg) obj).f66589b;
        if (str != null) {
            Result.Companion companion = Result.INSTANCE;
            return new Result.Failure(new IllegalStateException("Salesforce access token is null"));
        }
        createATGSessionUseCase$run$1.f49338b = null;
        createATGSessionUseCase$run$1.f49339c = i2;
        createATGSessionUseCase$run$1.f49341f = 3;
        objB = aTGSessionRepository.b(str, createATGSessionUseCase$run$1);
        if (objB != coroutineSingletons) {
            return coroutineSingletons;
        }
        return objB;
        obj = (AuthToken) objD;
        if (!(obj instanceof AuthToken.Atg)) {
            if (obj instanceof AuthToken.None) {
                Result.Companion companion2 = Result.INSTANCE;
                return Unit.f71739a;
            }
            if (obj instanceof AuthToken.Twist) {
                Result.Companion companion3 = Result.INSTANCE;
                return new Result.Failure(new IllegalStateException("Unexpected access token type"));
            }
            v40.g();
            return null;
        }
        createATGSessionUseCase$run$1.f49338b = (AuthToken.Atg) obj;
        i2 = 0;
        createATGSessionUseCase$run$1.f49339c = 0;
        createATGSessionUseCase$run$1.f49341f = 2;
        if (aTGSessionRepository.a() != coroutineSingletons) {
            str = ((AuthToken.Atg) obj).f66589b;
            if (str != null) {
                Result.Companion companion4 = Result.INSTANCE;
                return new Result.Failure(new IllegalStateException("Salesforce access token is null"));
            }
            createATGSessionUseCase$run$1.f49338b = null;
            createATGSessionUseCase$run$1.f49339c = i2;
            createATGSessionUseCase$run$1.f49341f = 3;
            objB = aTGSessionRepository.b(str, createATGSessionUseCase$run$1);
            if (objB != coroutineSingletons) {
                return objB;
            }
        }
        return coroutineSingletons;
    }
}
