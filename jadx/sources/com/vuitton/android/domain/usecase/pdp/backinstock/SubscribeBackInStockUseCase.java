package com.vuitton.android.domain.usecase.pdp.backinstock;

import com.vuitton.android.domain.repository.BackInStockRepository;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/domain/usecase/pdp/backinstock/SubscribeBackInStockUseCase;", "", "Lcom/vuitton/android/domain/repository/BackInStockRepository;", "repository", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "<init>", "(Lcom/vuitton/android/domain/repository/BackInStockRepository;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class SubscribeBackInStockUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final BackInStockRepository f50180a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final IsFeatureAvailableUseCase f50181b;

    @Inject
    public SubscribeBackInStockUseCase(BackInStockRepository backInStockRepository, IsFeatureAvailableUseCase isFeatureAvailableUseCase) {
        backInStockRepository.getClass();
        isFeatureAvailableUseCase.getClass();
        this.f50180a = backInStockRepository;
        this.f50181b = isFeatureAvailableUseCase;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(String str, ContinuationImpl continuationImpl) {
        SubscribeBackInStockUseCase$run$1 subscribeBackInStockUseCase$run$1;
        BackInStockRepository backInStockRepository;
        if (continuationImpl instanceof SubscribeBackInStockUseCase$run$1) {
            subscribeBackInStockUseCase$run$1 = (SubscribeBackInStockUseCase$run$1) continuationImpl;
            int i2 = subscribeBackInStockUseCase$run$1.f50185f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                subscribeBackInStockUseCase$run$1.f50185f = i2 - Integer.MIN_VALUE;
            } else {
                subscribeBackInStockUseCase$run$1 = new SubscribeBackInStockUseCase$run$1(this, continuationImpl);
            }
        } else {
            subscribeBackInStockUseCase$run$1 = new SubscribeBackInStockUseCase$run$1(this, continuationImpl);
        }
        Object objC = subscribeBackInStockUseCase$run$1.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = subscribeBackInStockUseCase$run$1.f50185f;
        if (i3 == 0) {
            ResultKt.b(objC);
            Feature[] featureArr = {Feature.BACK_IN_STOCK_PREVIEW_MODE};
            BackInStockRepository backInStockRepository2 = this.f50180a;
            subscribeBackInStockUseCase$run$1.f50182b = backInStockRepository2;
            subscribeBackInStockUseCase$run$1.f50183c = str;
            subscribeBackInStockUseCase$run$1.f50185f = 1;
            objC = this.f50181b.c(featureArr, false, subscribeBackInStockUseCase$run$1);
            if (objC != coroutineSingletons) {
                backInStockRepository = backInStockRepository2;
            }
        }
        if (i3 != 1) {
            if (i3 == 2) {
                ResultKt.b(objC);
                return ((Result) objC).f71708b;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        str = subscribeBackInStockUseCase$run$1.f50183c;
        backInStockRepository = subscribeBackInStockUseCase$run$1.f50182b;
        ResultKt.b(objC);
        boolean zBooleanValue = ((Boolean) objC).booleanValue();
        subscribeBackInStockUseCase$run$1.f50182b = null;
        subscribeBackInStockUseCase$run$1.f50183c = null;
        subscribeBackInStockUseCase$run$1.f50185f = 2;
        Object objA = backInStockRepository.a(str, zBooleanValue, subscribeBackInStockUseCase$run$1);
        return objA == coroutineSingletons ? coroutineSingletons : objA;
    }
}
