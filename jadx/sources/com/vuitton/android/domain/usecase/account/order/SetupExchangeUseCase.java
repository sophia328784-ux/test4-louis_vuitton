package com.vuitton.android.domain.usecase.account.order;

import com.vuitton.android.domain.repository.OrderRepository;
import com.vuitton.foundation.model.domain.model.cart.ExchangeSetupPost;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/account/order/SetupExchangeUseCase;", "", "Lcom/vuitton/android/domain/repository/OrderRepository;", "orderRepository", "<init>", "(Lcom/vuitton/android/domain/repository/OrderRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class SetupExchangeUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final OrderRepository f49125a;

    @Inject
    public SetupExchangeUseCase(OrderRepository orderRepository) {
        orderRepository.getClass();
        this.f49125a = orderRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ExchangeSetupPost exchangeSetupPost, ContinuationImpl continuationImpl) {
        SetupExchangeUseCase$run$1 setupExchangeUseCase$run$1;
        if (continuationImpl instanceof SetupExchangeUseCase$run$1) {
            setupExchangeUseCase$run$1 = (SetupExchangeUseCase$run$1) continuationImpl;
            int i2 = setupExchangeUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                setupExchangeUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                setupExchangeUseCase$run$1 = new SetupExchangeUseCase$run$1(this, continuationImpl);
            }
        } else {
            setupExchangeUseCase$run$1 = new SetupExchangeUseCase$run$1(this, continuationImpl);
        }
        Object obj = setupExchangeUseCase$run$1.f49126b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = setupExchangeUseCase$run$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            setupExchangeUseCase$run$1.d = 1;
            Object objD = this.f49125a.d(exchangeSetupPost, setupExchangeUseCase$run$1);
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
