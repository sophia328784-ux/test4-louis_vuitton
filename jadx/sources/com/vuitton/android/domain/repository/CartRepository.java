package com.vuitton.android.domain.repository;

import com.vuitton.foundation.model.domain.model.cart.CheckoutFeedback;
import com.vuitton.foundation.model.domain.model.cart.GiftOption;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/repository/CartRepository;", "", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface CartRepository {
    Object a(ContinuationImpl continuationImpl);

    Object b(ContinuationImpl continuationImpl);

    Object c(List list, boolean z, GiftOption giftOption, ContinuationImpl continuationImpl);

    Object d(SuspendLambda suspendLambda);

    Object e(ContinuationImpl continuationImpl);

    Object f(GiftOption giftOption, ContinuationImpl continuationImpl, boolean z);

    Object g(GiftOption giftOption, ContinuationImpl continuationImpl, boolean z);

    Object h(String str, ContinuationImpl continuationImpl);

    Object i(String str, List list, ContinuationImpl continuationImpl);

    Object j(ContinuationImpl continuationImpl);

    Object k(boolean z, ContinuationImpl continuationImpl);

    Object l(String str, String str2, int i2, ContinuationImpl continuationImpl);

    Object m(CheckoutFeedback checkoutFeedback, ContinuationImpl continuationImpl);

    Object n(ContinuationImpl continuationImpl);
}
