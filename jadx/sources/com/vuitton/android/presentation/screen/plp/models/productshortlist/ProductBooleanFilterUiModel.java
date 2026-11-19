package com.vuitton.android.presentation.screen.plp.models.productshortlist;

import com.batch.android.s.b;
import defpackage.a;
import defpackage.fc;
import defpackage.o60;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBooleanFilterUiModel;", "", "", b.a.f24015b, "title", "toggleFiltersId", "", "isSelected", "isEnabled", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ProductBooleanFilterUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f62954a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f62955b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f62956c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f62957e;

    public ProductBooleanFilterUiModel(String str, String str2, String str3, boolean z, boolean z2) {
        str.getClass();
        str2.getClass();
        this.f62954a = str;
        this.f62955b = str2;
        this.f62956c = str3;
        this.d = z;
        this.f62957e = z2;
    }

    public static ProductBooleanFilterUiModel a(ProductBooleanFilterUiModel productBooleanFilterUiModel, boolean z) {
        String str = productBooleanFilterUiModel.f62954a;
        String str2 = productBooleanFilterUiModel.f62955b;
        String str3 = productBooleanFilterUiModel.f62956c;
        boolean z2 = productBooleanFilterUiModel.f62957e;
        str.getClass();
        str2.getClass();
        return new ProductBooleanFilterUiModel(str, str2, str3, z, z2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductBooleanFilterUiModel)) {
            return false;
        }
        ProductBooleanFilterUiModel productBooleanFilterUiModel = (ProductBooleanFilterUiModel) obj;
        return Intrinsics.c(this.f62954a, productBooleanFilterUiModel.f62954a) && Intrinsics.c(this.f62955b, productBooleanFilterUiModel.f62955b) && Intrinsics.c(this.f62956c, productBooleanFilterUiModel.f62956c) && this.d == productBooleanFilterUiModel.d && this.f62957e == productBooleanFilterUiModel.f62957e;
    }

    public final int hashCode() {
        int iB = fc.b(this.f62954a.hashCode() * 31, 31, this.f62955b);
        String str = this.f62956c;
        return Boolean.hashCode(this.f62957e) + o60.b((iB + (str == null ? 0 : str.hashCode())) * 31, 31, this.d);
    }

    public final String toString() {
        boolean z = this.d;
        StringBuilder sbS = fc.s("ProductBooleanFilterUiModel(id=", this.f62954a, ", title=", this.f62955b, ", toggleFiltersId=");
        pq0.A(this.f62956c, ", isSelected=", ", isEnabled=", sbS, z);
        return a.p(sbS, this.f62957e, ")");
    }
}
