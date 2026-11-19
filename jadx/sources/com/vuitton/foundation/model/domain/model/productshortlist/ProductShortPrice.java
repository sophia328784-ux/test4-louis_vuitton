package com.vuitton.foundation.model.domain.model.productshortlist;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;", "", "", "isVariable", "", "formattedValue", "", "rawValue", "currency", "<init>", "(ZLjava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ProductShortPrice {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f68136a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f68137b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Double f68138c;
    public final String d;

    public ProductShortPrice(boolean z, String str, Double d, String str2) {
        str.getClass();
        this.f68136a = z;
        this.f68137b = str;
        this.f68138c = d;
        this.d = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductShortPrice)) {
            return false;
        }
        ProductShortPrice productShortPrice = (ProductShortPrice) obj;
        return this.f68136a == productShortPrice.f68136a && Intrinsics.c(this.f68137b, productShortPrice.f68137b) && Intrinsics.c(this.f68138c, productShortPrice.f68138c) && Intrinsics.c(this.d, productShortPrice.d);
    }

    public final int hashCode() {
        int iB = fc.b(Boolean.hashCode(this.f68136a) * 31, 31, this.f68137b);
        Double d = this.f68138c;
        int iHashCode = (iB + (d == null ? 0 : d.hashCode())) * 31;
        String str = this.d;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        return "ProductShortPrice(isVariable=" + this.f68136a + ", formattedValue=" + this.f68137b + ", rawValue=" + this.f68138c + ", currency=" + this.d + ")";
    }
}
