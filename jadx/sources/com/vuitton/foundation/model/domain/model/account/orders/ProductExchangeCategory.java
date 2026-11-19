package com.vuitton.foundation.model.domain.model.account.orders;

import com.batch.android.s.b;
import defpackage.fc;
import defpackage.o60;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/account/orders/ProductExchangeCategory;", "", "", b.a.f24015b, "title", "Lcom/vuitton/foundation/model/domain/model/account/orders/CategoryType;", "type", "", "isAvailable", "sizeGuideIdentifier", "", "Lcom/vuitton/foundation/model/domain/model/account/orders/CategoryOption;", "options", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/account/orders/CategoryType;ZLjava/lang/String;Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ProductExchangeCategory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66329a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66330b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CategoryType f66331c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f66332e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f66333f;

    public ProductExchangeCategory(String str, String str2, CategoryType categoryType, boolean z, String str3, List<CategoryOption> list) {
        str.getClass();
        str2.getClass();
        categoryType.getClass();
        list.getClass();
        this.f66329a = str;
        this.f66330b = str2;
        this.f66331c = categoryType;
        this.d = z;
        this.f66332e = str3;
        this.f66333f = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductExchangeCategory)) {
            return false;
        }
        ProductExchangeCategory productExchangeCategory = (ProductExchangeCategory) obj;
        return Intrinsics.c(this.f66329a, productExchangeCategory.f66329a) && Intrinsics.c(this.f66330b, productExchangeCategory.f66330b) && this.f66331c == productExchangeCategory.f66331c && this.d == productExchangeCategory.d && Intrinsics.c(this.f66332e, productExchangeCategory.f66332e) && Intrinsics.c(this.f66333f, productExchangeCategory.f66333f);
    }

    public final int hashCode() {
        int iB = o60.b((this.f66331c.hashCode() + fc.b(this.f66329a.hashCode() * 31, 31, this.f66330b)) * 31, 31, this.d);
        String str = this.f66332e;
        return this.f66333f.hashCode() + ((iB + (str == null ? 0 : str.hashCode())) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ProductExchangeCategory(id=", this.f66329a, ", title=", this.f66330b, ", type=");
        sbS.append(this.f66331c);
        sbS.append(", isAvailable=");
        sbS.append(this.d);
        sbS.append(", sizeGuideIdentifier=");
        return o60.o(this.f66332e, ", options=", ")", sbS, this.f66333f);
    }
}
