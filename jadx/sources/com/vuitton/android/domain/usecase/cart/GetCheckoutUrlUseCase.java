package com.vuitton.android.domain.usecase.cart;

import com.vuitton.android.domain.repository.CartRepository;
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
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/domain/usecase/cart/GetCheckoutUrlUseCase;", "", "Lcom/vuitton/android/domain/repository/CartRepository;", "cartRepository", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "<init>", "(Lcom/vuitton/android/domain/repository/CartRepository;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetCheckoutUrlUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CartRepository f49581a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final IsFeatureAvailableUseCase f49582b;

    @Inject
    public GetCheckoutUrlUseCase(CartRepository cartRepository, IsFeatureAvailableUseCase isFeatureAvailableUseCase) {
        cartRepository.getClass();
        isFeatureAvailableUseCase.getClass();
        this.f49581a = cartRepository;
        this.f49582b = isFeatureAvailableUseCase;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ContinuationImpl continuationImpl) {
        GetCheckoutUrlUseCase$run$1 getCheckoutUrlUseCase$run$1;
        CartRepository cartRepository;
        if (continuationImpl instanceof GetCheckoutUrlUseCase$run$1) {
            getCheckoutUrlUseCase$run$1 = (GetCheckoutUrlUseCase$run$1) continuationImpl;
            int i2 = getCheckoutUrlUseCase$run$1.f49585e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                getCheckoutUrlUseCase$run$1.f49585e = i2 - Integer.MIN_VALUE;
            } else {
                getCheckoutUrlUseCase$run$1 = new GetCheckoutUrlUseCase$run$1(this, continuationImpl);
            }
        } else {
            getCheckoutUrlUseCase$run$1 = new GetCheckoutUrlUseCase$run$1(this, continuationImpl);
        }
        Object objC = getCheckoutUrlUseCase$run$1.f49584c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = getCheckoutUrlUseCase$run$1.f49585e;
        if (i3 == 0) {
            ResultKt.b(objC);
            Feature[] featureArr = {Feature.TWIST};
            CartRepository cartRepository2 = this.f49581a;
            getCheckoutUrlUseCase$run$1.f49583b = cartRepository2;
            getCheckoutUrlUseCase$run$1.f49585e = 1;
            objC = this.f49582b.c(featureArr, false, getCheckoutUrlUseCase$run$1);
            if (objC != coroutineSingletons) {
                cartRepository = cartRepository2;
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
        cartRepository = getCheckoutUrlUseCase$run$1.f49583b;
        ResultKt.b(objC);
        boolean zBooleanValue = ((Boolean) objC).booleanValue();
        getCheckoutUrlUseCase$run$1.f49583b = null;
        getCheckoutUrlUseCase$run$1.f49585e = 2;
        Object objK = cartRepository.k(zBooleanValue, getCheckoutUrlUseCase$run$1);
        return objK == coroutineSingletons ? coroutineSingletons : objK;
    }
}
