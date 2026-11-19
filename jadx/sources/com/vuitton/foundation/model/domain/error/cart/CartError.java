package com.vuitton.foundation.model.domain.error.cart;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00060\u0001j\u0002`\u0002\u0082\u0001\u0006\u0003\u0004\u0005\u0006\u0007\b¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/error/cart/CartError;", "Ljava/lang/Error;", "Lkotlin/Error;", "Lcom/vuitton/foundation/model/domain/error/cart/Empty;", "Lcom/vuitton/foundation/model/domain/error/cart/GenericCartError;", "Lcom/vuitton/foundation/model/domain/error/cart/MaxPersonalizationQuantityReached;", "Lcom/vuitton/foundation/model/domain/error/cart/MaxQuantityReached;", "Lcom/vuitton/foundation/model/domain/error/cart/MaxSkuQuantityReached;", "Lcom/vuitton/foundation/model/domain/error/cart/OutOfStockError;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class CartError extends Error {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66209b;

    public CartError(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this.f66209b = str;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return this.f66209b;
    }
}
