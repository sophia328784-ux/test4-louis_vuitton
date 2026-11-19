package com.vuitton.android.domain.usecase.travel;

import com.vuitton.android.domain.repository.TravelRepository;
import com.vuitton.foundation.model.domain.model.connectivity.travel.Travel;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/travel/CreateTravelUseCase;", "", "Lcom/vuitton/android/domain/repository/TravelRepository;", "travelRepository", "<init>", "(Lcom/vuitton/android/domain/repository/TravelRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CreateTravelUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TravelRepository f50409a;

    @Inject
    public CreateTravelUseCase(TravelRepository travelRepository) {
        travelRepository.getClass();
        this.f50409a = travelRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(Travel travel, ContinuationImpl continuationImpl) {
        CreateTravelUseCase$run$1 createTravelUseCase$run$1;
        if (continuationImpl instanceof CreateTravelUseCase$run$1) {
            createTravelUseCase$run$1 = (CreateTravelUseCase$run$1) continuationImpl;
            int i2 = createTravelUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                createTravelUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                createTravelUseCase$run$1 = new CreateTravelUseCase$run$1(this, continuationImpl);
            }
        } else {
            createTravelUseCase$run$1 = new CreateTravelUseCase$run$1(this, continuationImpl);
        }
        Object obj = createTravelUseCase$run$1.f50410b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = createTravelUseCase$run$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            createTravelUseCase$run$1.d = 1;
            Object objD = this.f50409a.d(travel, createTravelUseCase$run$1);
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
