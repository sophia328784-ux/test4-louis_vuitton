package com.vuitton.android.presentation.screen.orders.models;

import com.batch.android.s.b;
import defpackage.fc;
import defpackage.o60;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;", "", "", b.a.f24015b, "title", "Lcom/vuitton/android/presentation/screen/orders/models/CategoryTypeUiModel;", "type", "", "isAvailable", "sizeGuideIdentifier", "", "Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;", "options", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/CategoryTypeUiModel;ZLjava/lang/String;Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ProductExchangeCategoryUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f60385a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f60386b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CategoryTypeUiModel f60387c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f60388e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f60389f;

    public ProductExchangeCategoryUiModel(String str, String str2, CategoryTypeUiModel categoryTypeUiModel, boolean z, String str3, List<CategoryOptionUiModel> list) {
        str.getClass();
        str2.getClass();
        categoryTypeUiModel.getClass();
        list.getClass();
        this.f60385a = str;
        this.f60386b = str2;
        this.f60387c = categoryTypeUiModel;
        this.d = z;
        this.f60388e = str3;
        this.f60389f = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductExchangeCategoryUiModel)) {
            return false;
        }
        ProductExchangeCategoryUiModel productExchangeCategoryUiModel = (ProductExchangeCategoryUiModel) obj;
        return Intrinsics.c(this.f60385a, productExchangeCategoryUiModel.f60385a) && Intrinsics.c(this.f60386b, productExchangeCategoryUiModel.f60386b) && this.f60387c == productExchangeCategoryUiModel.f60387c && this.d == productExchangeCategoryUiModel.d && Intrinsics.c(this.f60388e, productExchangeCategoryUiModel.f60388e) && Intrinsics.c(this.f60389f, productExchangeCategoryUiModel.f60389f);
    }

    public final int hashCode() {
        int iB = o60.b((this.f60387c.hashCode() + fc.b(this.f60385a.hashCode() * 31, 31, this.f60386b)) * 31, 31, this.d);
        String str = this.f60388e;
        return this.f60389f.hashCode() + ((iB + (str == null ? 0 : str.hashCode())) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ProductExchangeCategoryUiModel(id=", this.f60385a, ", title=", this.f60386b, ", type=");
        sbS.append(this.f60387c);
        sbS.append(", isAvailable=");
        sbS.append(this.d);
        sbS.append(", sizeGuideIdentifier=");
        return o60.o(this.f60388e, ", options=", ")", sbS, this.f60389f);
    }
}
