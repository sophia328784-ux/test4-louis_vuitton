package com.vuitton.android.presentation.screen.plp.models.productshortlist;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryUiModel;", "", "", b.a.f24015b, "title", "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryTypeUiModel;", "type", "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterDataTypeUiModel;", DbParams.KEY_DATA, "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryTypeUiModel;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterDataTypeUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ProductFiltersCategoryUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f62970a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f62971b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ProductFiltersCategoryTypeUiModel f62972c;
    public final ProductFilterDataTypeUiModel d;

    public ProductFiltersCategoryUiModel(String str, String str2, ProductFiltersCategoryTypeUiModel productFiltersCategoryTypeUiModel, ProductFilterDataTypeUiModel productFilterDataTypeUiModel) {
        str.getClass();
        str2.getClass();
        productFiltersCategoryTypeUiModel.getClass();
        productFilterDataTypeUiModel.getClass();
        this.f62970a = str;
        this.f62971b = str2;
        this.f62972c = productFiltersCategoryTypeUiModel;
        this.d = productFilterDataTypeUiModel;
    }

    public static ProductFiltersCategoryUiModel a(ProductFiltersCategoryUiModel productFiltersCategoryUiModel, ProductFilterDataTypeUiModel.Simple simple) {
        String str = productFiltersCategoryUiModel.f62970a;
        String str2 = productFiltersCategoryUiModel.f62971b;
        ProductFiltersCategoryTypeUiModel productFiltersCategoryTypeUiModel = productFiltersCategoryUiModel.f62972c;
        str.getClass();
        str2.getClass();
        productFiltersCategoryTypeUiModel.getClass();
        return new ProductFiltersCategoryUiModel(str, str2, productFiltersCategoryTypeUiModel, simple);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductFiltersCategoryUiModel)) {
            return false;
        }
        ProductFiltersCategoryUiModel productFiltersCategoryUiModel = (ProductFiltersCategoryUiModel) obj;
        return Intrinsics.c(this.f62970a, productFiltersCategoryUiModel.f62970a) && Intrinsics.c(this.f62971b, productFiltersCategoryUiModel.f62971b) && this.f62972c == productFiltersCategoryUiModel.f62972c && Intrinsics.c(this.d, productFiltersCategoryUiModel.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + ((this.f62972c.hashCode() + fc.b(this.f62970a.hashCode() * 31, 31, this.f62971b)) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ProductFiltersCategoryUiModel(id=", this.f62970a, ", title=", this.f62971b, ", type=");
        sbS.append(this.f62972c);
        sbS.append(", data=");
        sbS.append(this.d);
        sbS.append(")");
        return sbS.toString();
    }
}
