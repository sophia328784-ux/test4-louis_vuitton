package com.vuitton.foundation.model.domain.model.cart;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/cart/ExchangeSetupResult;", "", "Lcom/vuitton/foundation/model/domain/model/cart/ExchangeProduct;", "product", "Lcom/vuitton/foundation/model/domain/model/cart/ExchangeShippingAddress;", "shippingAddress", "Lcom/vuitton/foundation/model/domain/model/cart/ExchangeShippingMethod;", "shippingMethod", "<init>", "(Lcom/vuitton/foundation/model/domain/model/cart/ExchangeProduct;Lcom/vuitton/foundation/model/domain/model/cart/ExchangeShippingAddress;Lcom/vuitton/foundation/model/domain/model/cart/ExchangeShippingMethod;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ExchangeSetupResult {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ExchangeProduct f66957a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ExchangeShippingAddress f66958b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ExchangeShippingMethod f66959c;

    public ExchangeSetupResult(ExchangeProduct exchangeProduct, ExchangeShippingAddress exchangeShippingAddress, ExchangeShippingMethod exchangeShippingMethod) {
        exchangeProduct.getClass();
        exchangeShippingAddress.getClass();
        exchangeShippingMethod.getClass();
        this.f66957a = exchangeProduct;
        this.f66958b = exchangeShippingAddress;
        this.f66959c = exchangeShippingMethod;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ExchangeSetupResult)) {
            return false;
        }
        ExchangeSetupResult exchangeSetupResult = (ExchangeSetupResult) obj;
        return Intrinsics.c(this.f66957a, exchangeSetupResult.f66957a) && Intrinsics.c(this.f66958b, exchangeSetupResult.f66958b) && Intrinsics.c(this.f66959c, exchangeSetupResult.f66959c);
    }

    public final int hashCode() {
        return this.f66959c.hashCode() + ((this.f66958b.hashCode() + (this.f66957a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "ExchangeSetupResult(product=" + this.f66957a + ", shippingAddress=" + this.f66958b + ", shippingMethod=" + this.f66959c + ")";
    }
}
