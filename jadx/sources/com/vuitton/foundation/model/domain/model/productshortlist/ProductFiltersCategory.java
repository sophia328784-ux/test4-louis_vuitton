package com.vuitton.foundation.model.domain.model.productshortlist;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFiltersCategory;", "", "", b.a.f24015b, "title", "Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFiltersCategoryType;", "type", "Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType;", DbParams.KEY_DATA, "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFiltersCategoryType;Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ProductFiltersCategory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f68119a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f68120b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ProductFiltersCategoryType f68121c;
    public final ProductFilterDataType d;

    public ProductFiltersCategory(String str, String str2, ProductFiltersCategoryType productFiltersCategoryType, ProductFilterDataType productFilterDataType) {
        str.getClass();
        str2.getClass();
        productFiltersCategoryType.getClass();
        productFilterDataType.getClass();
        this.f68119a = str;
        this.f68120b = str2;
        this.f68121c = productFiltersCategoryType;
        this.d = productFilterDataType;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductFiltersCategory)) {
            return false;
        }
        ProductFiltersCategory productFiltersCategory = (ProductFiltersCategory) obj;
        return Intrinsics.c(this.f68119a, productFiltersCategory.f68119a) && Intrinsics.c(this.f68120b, productFiltersCategory.f68120b) && this.f68121c == productFiltersCategory.f68121c && Intrinsics.c(this.d, productFiltersCategory.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + ((this.f68121c.hashCode() + fc.b(this.f68119a.hashCode() * 31, 31, this.f68120b)) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ProductFiltersCategory(id=", this.f68119a, ", title=", this.f68120b, ", type=");
        sbS.append(this.f68121c);
        sbS.append(", data=");
        sbS.append(this.d);
        sbS.append(")");
        return sbS.toString();
    }
}
