package com.vuitton.foundation.model.domain.model.account.orders;

import defpackage.fc;
import defpackage.o60;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/account/orders/CategoryOption;", "", "", "name", "sku", "imageUrl", "", "isAvailable", "Lcom/vuitton/foundation/model/domain/model/account/orders/ProductExchangeCategory;", "category", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/foundation/model/domain/model/account/orders/ProductExchangeCategory;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CategoryOption {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66297a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66298b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f66299c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ProductExchangeCategory f66300e;

    public CategoryOption(String str, String str2, String str3, boolean z, ProductExchangeCategory productExchangeCategory) {
        str.getClass();
        str2.getClass();
        this.f66297a = str;
        this.f66298b = str2;
        this.f66299c = str3;
        this.d = z;
        this.f66300e = productExchangeCategory;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CategoryOption)) {
            return false;
        }
        CategoryOption categoryOption = (CategoryOption) obj;
        return Intrinsics.c(this.f66297a, categoryOption.f66297a) && Intrinsics.c(this.f66298b, categoryOption.f66298b) && Intrinsics.c(this.f66299c, categoryOption.f66299c) && this.d == categoryOption.d && Intrinsics.c(this.f66300e, categoryOption.f66300e);
    }

    public final int hashCode() {
        int iB = fc.b(this.f66297a.hashCode() * 31, 31, this.f66298b);
        String str = this.f66299c;
        int iB2 = o60.b((iB + (str == null ? 0 : str.hashCode())) * 31, 31, this.d);
        ProductExchangeCategory productExchangeCategory = this.f66300e;
        return iB2 + (productExchangeCategory != null ? productExchangeCategory.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("CategoryOption(name=", this.f66297a, ", sku=", this.f66298b, ", imageUrl=");
        pq0.A(this.f66299c, ", isAvailable=", ", category=", sbS, this.d);
        sbS.append(this.f66300e);
        sbS.append(")");
        return sbS.toString();
    }
}
