package com.vuitton.foundation.model.domain.model.product.universal;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/universal/Price;", "", "", "price", "Lcom/vuitton/foundation/model/domain/model/product/universal/PriceSpecification;", "priceSpecification", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/PriceSpecification;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Price {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f68007a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PriceSpecification f68008b;

    public Price(String str, PriceSpecification priceSpecification) {
        str.getClass();
        this.f68007a = str;
        this.f68008b = priceSpecification;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Price)) {
            return false;
        }
        Price price = (Price) obj;
        return Intrinsics.c(this.f68007a, price.f68007a) && Intrinsics.c(this.f68008b, price.f68008b);
    }

    public final int hashCode() {
        int iHashCode = this.f68007a.hashCode() * 31;
        PriceSpecification priceSpecification = this.f68008b;
        return iHashCode + (priceSpecification == null ? 0 : priceSpecification.hashCode());
    }

    public final String toString() {
        return "Price(price=" + this.f68007a + ", priceSpecification=" + this.f68008b + ")";
    }
}
