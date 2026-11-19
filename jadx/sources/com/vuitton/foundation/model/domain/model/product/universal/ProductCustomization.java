package com.vuitton.foundation.model.domain.model.product.universal;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001B9\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/universal/ProductCustomization;", "", "Lcom/vuitton/foundation/model/domain/model/product/universal/Configuration;", "hotStamping", "perfumeEngraving", "beautyEngraving", "monogram", "diamondEngraving", "<init>", "(Lcom/vuitton/foundation/model/domain/model/product/universal/Configuration;Lcom/vuitton/foundation/model/domain/model/product/universal/Configuration;Lcom/vuitton/foundation/model/domain/model/product/universal/Configuration;Lcom/vuitton/foundation/model/domain/model/product/universal/Configuration;Lcom/vuitton/foundation/model/domain/model/product/universal/Configuration;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ProductCustomization {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Configuration f68020a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Configuration f68021b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Configuration f68022c;
    public final Configuration d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Configuration f68023e;

    public ProductCustomization(Configuration configuration, Configuration configuration2, Configuration configuration3, Configuration configuration4, Configuration configuration5) {
        this.f68020a = configuration;
        this.f68021b = configuration2;
        this.f68022c = configuration3;
        this.d = configuration4;
        this.f68023e = configuration5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductCustomization)) {
            return false;
        }
        ProductCustomization productCustomization = (ProductCustomization) obj;
        return Intrinsics.c(this.f68020a, productCustomization.f68020a) && Intrinsics.c(this.f68021b, productCustomization.f68021b) && Intrinsics.c(this.f68022c, productCustomization.f68022c) && Intrinsics.c(this.d, productCustomization.d) && Intrinsics.c(this.f68023e, productCustomization.f68023e);
    }

    public final int hashCode() {
        Configuration configuration = this.f68020a;
        int iHashCode = (configuration == null ? 0 : configuration.hashCode()) * 31;
        Configuration configuration2 = this.f68021b;
        int iHashCode2 = (iHashCode + (configuration2 == null ? 0 : configuration2.hashCode())) * 31;
        Configuration configuration3 = this.f68022c;
        int iHashCode3 = (iHashCode2 + (configuration3 == null ? 0 : configuration3.hashCode())) * 31;
        Configuration configuration4 = this.d;
        int iHashCode4 = (iHashCode3 + (configuration4 == null ? 0 : configuration4.hashCode())) * 31;
        Configuration configuration5 = this.f68023e;
        return iHashCode4 + (configuration5 != null ? configuration5.hashCode() : 0);
    }

    public final String toString() {
        return "ProductCustomization(hotStamping=" + this.f68020a + ", perfumeEngraving=" + this.f68021b + ", beautyEngraving=" + this.f68022c + ", monogram=" + this.d + ", diamondEngraving=" + this.f68023e + ")";
    }
}
