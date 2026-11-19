package com.vuitton.foundation.model.domain.model.product.vto;

import com.vuitton.foundation.model.domain.model.producttiny.ProductTiny;
import defpackage.fc;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@kotlin.Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/vto/Recommendation;", "", "Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;", "product", "", "description", "Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;", "tryOnProduct", "<init>", "(Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Recommendation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ProductTiny f68070a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f68071b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TryOnProduct f68072c;

    public Recommendation(ProductTiny productTiny, String str, TryOnProduct tryOnProduct) {
        productTiny.getClass();
        str.getClass();
        this.f68070a = productTiny;
        this.f68071b = str;
        this.f68072c = tryOnProduct;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Recommendation)) {
            return false;
        }
        Recommendation recommendation = (Recommendation) obj;
        return Intrinsics.c(this.f68070a, recommendation.f68070a) && Intrinsics.c(this.f68071b, recommendation.f68071b) && Intrinsics.c(this.f68072c, recommendation.f68072c);
    }

    public final int hashCode() {
        int iB = fc.b(this.f68070a.hashCode() * 31, 31, this.f68071b);
        TryOnProduct tryOnProduct = this.f68072c;
        return iB + (tryOnProduct == null ? 0 : tryOnProduct.hashCode());
    }

    public final String toString() {
        return "Recommendation(product=" + this.f68070a + ", description=" + this.f68071b + ", tryOnProduct=" + this.f68072c + ")";
    }
}
