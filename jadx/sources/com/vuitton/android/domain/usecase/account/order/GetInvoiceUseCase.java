package com.vuitton.android.domain.usecase.account.order;

import com.vuitton.android.domain.repository.OrderRepository;
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
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/domain/usecase/account/order/GetInvoiceUseCase;", "", "Lcom/vuitton/android/domain/repository/OrderRepository;", "repository", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "<init>", "(Lcom/vuitton/android/domain/repository/OrderRepository;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetInvoiceUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final OrderRepository f49113a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final IsFeatureAvailableUseCase f49114b;

    @Inject
    public GetInvoiceUseCase(OrderRepository orderRepository, IsFeatureAvailableUseCase isFeatureAvailableUseCase) {
        orderRepository.getClass();
        isFeatureAvailableUseCase.getClass();
        this.f49113a = orderRepository;
        this.f49114b = isFeatureAvailableUseCase;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(String str, String str2, ContinuationImpl continuationImpl) {
        GetInvoiceUseCase$run$1 getInvoiceUseCase$run$1;
        OrderRepository orderRepository;
        if (continuationImpl instanceof GetInvoiceUseCase$run$1) {
            getInvoiceUseCase$run$1 = (GetInvoiceUseCase$run$1) continuationImpl;
            int i2 = getInvoiceUseCase$run$1.g;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                getInvoiceUseCase$run$1.g = i2 - Integer.MIN_VALUE;
            } else {
                getInvoiceUseCase$run$1 = new GetInvoiceUseCase$run$1(this, continuationImpl);
            }
        } else {
            getInvoiceUseCase$run$1 = new GetInvoiceUseCase$run$1(this, continuationImpl);
        }
        Object objC = getInvoiceUseCase$run$1.f49117e;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = getInvoiceUseCase$run$1.g;
        if (i3 == 0) {
            ResultKt.b(objC);
            Feature[] featureArr = {Feature.TWIST};
            OrderRepository orderRepository2 = this.f49113a;
            getInvoiceUseCase$run$1.f49115b = orderRepository2;
            getInvoiceUseCase$run$1.f49116c = str;
            getInvoiceUseCase$run$1.d = str2;
            getInvoiceUseCase$run$1.g = 1;
            objC = this.f49114b.c(featureArr, false, getInvoiceUseCase$run$1);
            if (objC != coroutineSingletons) {
                orderRepository = orderRepository2;
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
        str2 = getInvoiceUseCase$run$1.d;
        str = getInvoiceUseCase$run$1.f49116c;
        orderRepository = getInvoiceUseCase$run$1.f49115b;
        ResultKt.b(objC);
        boolean zBooleanValue = ((Boolean) objC).booleanValue();
        getInvoiceUseCase$run$1.f49115b = null;
        getInvoiceUseCase$run$1.f49116c = null;
        getInvoiceUseCase$run$1.d = null;
        getInvoiceUseCase$run$1.g = 2;
        Object objI = orderRepository.i(str, str2, zBooleanValue, getInvoiceUseCase$run$1);
        return objI == coroutineSingletons ? coroutineSingletons : objI;
    }
}
