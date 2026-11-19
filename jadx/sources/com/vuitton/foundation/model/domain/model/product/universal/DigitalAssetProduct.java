package com.vuitton.foundation.model.domain.model.product.universal;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProduct;", "", "Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProductType;", "type", "", "category", ConfigurationName.DOWNLOAD_PLUGIN_URL, "Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProductName;", "name", "<init>", "(Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProductType;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProductName;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class DigitalAssetProduct {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DigitalAssetProductType f67978a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67979b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67980c;
    public final DigitalAssetProductName d;

    public DigitalAssetProduct(DigitalAssetProductType digitalAssetProductType, String str, String str2, DigitalAssetProductName digitalAssetProductName) {
        digitalAssetProductType.getClass();
        str.getClass();
        str2.getClass();
        digitalAssetProductName.getClass();
        this.f67978a = digitalAssetProductType;
        this.f67979b = str;
        this.f67980c = str2;
        this.d = digitalAssetProductName;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DigitalAssetProduct)) {
            return false;
        }
        DigitalAssetProduct digitalAssetProduct = (DigitalAssetProduct) obj;
        return this.f67978a == digitalAssetProduct.f67978a && Intrinsics.c(this.f67979b, digitalAssetProduct.f67979b) && Intrinsics.c(this.f67980c, digitalAssetProduct.f67980c) && this.d == digitalAssetProduct.d;
    }

    public final int hashCode() {
        return this.d.hashCode() + fc.b(fc.b(this.f67978a.hashCode() * 31, 31, this.f67979b), 31, this.f67980c);
    }

    public final String toString() {
        return "DigitalAssetProduct(type=" + this.f67978a + ", category=" + this.f67979b + ", url=" + this.f67980c + ", name=" + this.d + ")";
    }
}
