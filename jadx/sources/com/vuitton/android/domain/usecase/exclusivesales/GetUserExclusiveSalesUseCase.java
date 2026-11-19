package com.vuitton.android.domain.usecase.exclusivesales;

import com.vuitton.android.domain.repository.ExclusiveSalesRepository;
import com.vuitton.android.domain.usecase.authentication.oauth.GetSotTokenForTwistUserOrNullUseCase;
import com.vuitton.foundation.model.domain.model.authentication.SotToken;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/domain/usecase/exclusivesales/GetUserExclusiveSalesUseCase;", "", "Lcom/vuitton/android/domain/repository/ExclusiveSalesRepository;", "exclusiveSalesRepository", "Lcom/vuitton/android/domain/usecase/authentication/oauth/GetSotTokenForTwistUserOrNullUseCase;", "getSotTokenForTwistUserOrNullUseCase", "<init>", "(Lcom/vuitton/android/domain/repository/ExclusiveSalesRepository;Lcom/vuitton/android/domain/usecase/authentication/oauth/GetSotTokenForTwistUserOrNullUseCase;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetUserExclusiveSalesUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ExclusiveSalesRepository f49996a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final GetSotTokenForTwistUserOrNullUseCase f49997b;

    @Inject
    public GetUserExclusiveSalesUseCase(ExclusiveSalesRepository exclusiveSalesRepository, GetSotTokenForTwistUserOrNullUseCase getSotTokenForTwistUserOrNullUseCase) {
        exclusiveSalesRepository.getClass();
        getSotTokenForTwistUserOrNullUseCase.getClass();
        this.f49996a = exclusiveSalesRepository;
        this.f49997b = getSotTokenForTwistUserOrNullUseCase;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ContinuationImpl continuationImpl) {
        GetUserExclusiveSalesUseCase$run$1 getUserExclusiveSalesUseCase$run$1;
        Object objA;
        if (continuationImpl instanceof GetUserExclusiveSalesUseCase$run$1) {
            getUserExclusiveSalesUseCase$run$1 = (GetUserExclusiveSalesUseCase$run$1) continuationImpl;
            int i2 = getUserExclusiveSalesUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                getUserExclusiveSalesUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                getUserExclusiveSalesUseCase$run$1 = new GetUserExclusiveSalesUseCase$run$1(this, continuationImpl);
            }
        } else {
            getUserExclusiveSalesUseCase$run$1 = new GetUserExclusiveSalesUseCase$run$1(this, continuationImpl);
        }
        Object obj = getUserExclusiveSalesUseCase$run$1.f49998b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = getUserExclusiveSalesUseCase$run$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            getUserExclusiveSalesUseCase$run$1.d = 1;
            objA = this.f49997b.a(getUserExclusiveSalesUseCase$run$1);
            if (objA != coroutineSingletons) {
            }
        }
        objA = null;
        if (i3 != 1) {
            if (i3 == 2) {
                ResultKt.b(obj);
                return ((Result) obj).f71708b;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        SotToken sotToken = (SotToken) obj;
        if (sotToken != null) {
            objA = sotToken.f66608a;
        }
        String str = (String) objA;
        if (str == null) {
            Result.Companion companion = Result.INSTANCE;
            return new Result.Failure(new IllegalStateException("SotToken is null"));
        }
        getUserExclusiveSalesUseCase$run$1.d = 2;
        Object objA2 = this.f49996a.a(str, getUserExclusiveSalesUseCase$run$1);
        return objA2 == coroutineSingletons ? coroutineSingletons : objA2;
    }
}
