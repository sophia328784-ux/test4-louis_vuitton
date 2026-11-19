package com.vuitton.android.domain.repository;

import com.vuitton.foundation.model.domain.model.cart.ExchangeSetupPost;
import com.vuitton.foundation.model.domain.model.common.ResultStrategyLazy;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/repository/OrderRepository;", "", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface OrderRepository {
    Unit a();

    Object b(String str, ContinuationImpl continuationImpl);

    Object c(ContinuationImpl continuationImpl);

    Object d(ExchangeSetupPost exchangeSetupPost, ContinuationImpl continuationImpl);

    ResultStrategyLazy e();

    Object f(List list, ContinuationImpl continuationImpl);

    ResultStrategyLazy g();

    Object h(String str, double d, double d2, ContinuationImpl continuationImpl);

    Object i(String str, String str2, boolean z, ContinuationImpl continuationImpl);

    ResultStrategyLazy j();
}
