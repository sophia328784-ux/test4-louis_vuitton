package com.vuitton.android.domain.usecase.landingpage;

import com.vuitton.android.domain.repository.LandingPageRepository;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/landingpage/GetLandingPageDetailsByIdUseCase;", "", "Lcom/vuitton/android/domain/repository/LandingPageRepository;", "landingPageRepository", "<init>", "(Lcom/vuitton/android/domain/repository/LandingPageRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetLandingPageDetailsByIdUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LandingPageRepository f50123a;

    @Inject
    public GetLandingPageDetailsByIdUseCase(LandingPageRepository landingPageRepository) {
        landingPageRepository.getClass();
        this.f50123a = landingPageRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(String str, ContinuationImpl continuationImpl) {
        GetLandingPageDetailsByIdUseCase$run$1 getLandingPageDetailsByIdUseCase$run$1;
        if (continuationImpl instanceof GetLandingPageDetailsByIdUseCase$run$1) {
            getLandingPageDetailsByIdUseCase$run$1 = (GetLandingPageDetailsByIdUseCase$run$1) continuationImpl;
            int i2 = getLandingPageDetailsByIdUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                getLandingPageDetailsByIdUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                getLandingPageDetailsByIdUseCase$run$1 = new GetLandingPageDetailsByIdUseCase$run$1(this, continuationImpl);
            }
        } else {
            getLandingPageDetailsByIdUseCase$run$1 = new GetLandingPageDetailsByIdUseCase$run$1(this, continuationImpl);
        }
        Object obj = getLandingPageDetailsByIdUseCase$run$1.f50124b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = getLandingPageDetailsByIdUseCase$run$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            getLandingPageDetailsByIdUseCase$run$1.d = 1;
            Object objA = this.f50123a.a(str, getLandingPageDetailsByIdUseCase$run$1);
            return objA == coroutineSingletons ? coroutineSingletons : objA;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }
}
