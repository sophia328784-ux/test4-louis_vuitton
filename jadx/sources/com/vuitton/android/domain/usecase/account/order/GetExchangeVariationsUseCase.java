package com.vuitton.android.domain.usecase.account.order;

import com.vuitton.android.domain.repository.OrderRepository;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/account/order/GetExchangeVariationsUseCase;", "", "Lcom/vuitton/android/domain/repository/OrderRepository;", "repository", "<init>", "(Lcom/vuitton/android/domain/repository/OrderRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetExchangeVariationsUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final OrderRepository f49110a;

    @Inject
    public GetExchangeVariationsUseCase(OrderRepository orderRepository) {
        orderRepository.getClass();
        this.f49110a = orderRepository;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public final Object a(String str, double d, double d2, ContinuationImpl continuationImpl) {
        GetExchangeVariationsUseCase$run$1 getExchangeVariationsUseCase$run$1;
        if (continuationImpl instanceof GetExchangeVariationsUseCase$run$1) {
            getExchangeVariationsUseCase$run$1 = (GetExchangeVariationsUseCase$run$1) continuationImpl;
            int i2 = getExchangeVariationsUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                getExchangeVariationsUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                getExchangeVariationsUseCase$run$1 = new GetExchangeVariationsUseCase$run$1(this, continuationImpl);
            }
        } else {
            getExchangeVariationsUseCase$run$1 = new GetExchangeVariationsUseCase$run$1(this, continuationImpl);
        }
        GetExchangeVariationsUseCase$run$1 getExchangeVariationsUseCase$run$2 = getExchangeVariationsUseCase$run$1;
        Object obj = getExchangeVariationsUseCase$run$2.f49111b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = getExchangeVariationsUseCase$run$2.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            getExchangeVariationsUseCase$run$2.d = 1;
            Object objH = this.f49110a.h(str, d, d2, getExchangeVariationsUseCase$run$2);
            return objH == coroutineSingletons ? coroutineSingletons : objH;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }
}
