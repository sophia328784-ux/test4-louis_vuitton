package com.vuitton.android.domain.usecase.account.order;

import com.vuitton.android.domain.repository.OrderRepository;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/account/order/GetOngoingOrdersUseCase;", "", "Lcom/vuitton/android/domain/repository/OrderRepository;", "repository", "<init>", "(Lcom/vuitton/android/domain/repository/OrderRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetOngoingOrdersUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final OrderRepository f49119a;

    @Inject
    public GetOngoingOrdersUseCase(OrderRepository orderRepository) {
        orderRepository.getClass();
        this.f49119a = orderRepository;
    }
}
