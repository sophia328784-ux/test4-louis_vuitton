package com.vuitton.foundation.model.domain.model.plp;

import com.batch.android.s.b;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductListOption;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001BM\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\u0010\r\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/plp/ProductList;", "", "", b.a.f24015b, "name", "trackingPageName", "", "Lcom/vuitton/foundation/model/domain/model/plp/PlpSection;", "sectionList", "", "totalProducts", "Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;", "optionList", "nextPage", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;Ljava/lang/Integer;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ProductList {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67855a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67856b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67857c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f67858e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ProductListOption f67859f;
    public final Integer g;

    public ProductList(String str, String str2, String str3, List<? extends PlpSection> list, int i2, ProductListOption productListOption, Integer num) {
        list.getClass();
        productListOption.getClass();
        this.f67855a = str;
        this.f67856b = str2;
        this.f67857c = str3;
        this.d = list;
        this.f67858e = i2;
        this.f67859f = productListOption;
        this.g = num;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductList)) {
            return false;
        }
        ProductList productList = (ProductList) obj;
        return Intrinsics.c(this.f67855a, productList.f67855a) && Intrinsics.c(this.f67856b, productList.f67856b) && Intrinsics.c(this.f67857c, productList.f67857c) && Intrinsics.c(this.d, productList.d) && this.f67858e == productList.f67858e && Intrinsics.c(this.f67859f, productList.f67859f) && Intrinsics.c(this.g, productList.g);
    }

    public final int hashCode() {
        String str = this.f67855a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f67856b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f67857c;
        int iHashCode3 = (this.f67859f.hashCode() + tr.b(this.f67858e, n00.a((iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31, 31, this.d), 31)) * 31;
        Integer num = this.g;
        return iHashCode3 + (num != null ? num.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ProductList(id=", this.f67855a, ", name=", this.f67856b, ", trackingPageName=");
        d21.z(this.f67857c, ", sectionList=", ", totalProducts=", sbS, this.d);
        sbS.append(this.f67858e);
        sbS.append(", optionList=");
        sbS.append(this.f67859f);
        sbS.append(", nextPage=");
        sbS.append(this.g);
        sbS.append(")");
        return sbS.toString();
    }
}
