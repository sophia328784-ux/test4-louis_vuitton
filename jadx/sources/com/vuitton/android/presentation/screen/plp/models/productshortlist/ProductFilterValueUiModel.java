package com.vuitton.android.presentation.screen.plp.models.productshortlist;

import com.batch.android.s.b;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001BE\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;", "", "", b.a.f24015b, "title", "Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;", "image", "toggleFiltersId", "", "isSelected", "isEnabled", "subCategoryTitle", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Ljava/lang/String;ZZLjava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ProductFilterValueUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f62965a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f62966b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AssetImageUiModel f62967c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f62968e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f62969f;
    public final String g;

    public ProductFilterValueUiModel(String str, String str2, AssetImageUiModel assetImageUiModel, String str3, boolean z, boolean z2, String str4) {
        str.getClass();
        str2.getClass();
        this.f62965a = str;
        this.f62966b = str2;
        this.f62967c = assetImageUiModel;
        this.d = str3;
        this.f62968e = z;
        this.f62969f = z2;
        this.g = str4;
    }

    public static ProductFilterValueUiModel a(ProductFilterValueUiModel productFilterValueUiModel, boolean z) {
        String str = productFilterValueUiModel.f62965a;
        String str2 = productFilterValueUiModel.f62966b;
        AssetImageUiModel assetImageUiModel = productFilterValueUiModel.f62967c;
        String str3 = productFilterValueUiModel.d;
        boolean z2 = productFilterValueUiModel.f62969f;
        String str4 = productFilterValueUiModel.g;
        str.getClass();
        str2.getClass();
        return new ProductFilterValueUiModel(str, str2, assetImageUiModel, str3, z, z2, str4);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductFilterValueUiModel)) {
            return false;
        }
        ProductFilterValueUiModel productFilterValueUiModel = (ProductFilterValueUiModel) obj;
        return Intrinsics.c(this.f62965a, productFilterValueUiModel.f62965a) && Intrinsics.c(this.f62966b, productFilterValueUiModel.f62966b) && Intrinsics.c(this.f62967c, productFilterValueUiModel.f62967c) && Intrinsics.c(this.d, productFilterValueUiModel.d) && this.f62968e == productFilterValueUiModel.f62968e && this.f62969f == productFilterValueUiModel.f62969f && Intrinsics.c(this.g, productFilterValueUiModel.g);
    }

    public final int hashCode() {
        int iB = fc.b(this.f62965a.hashCode() * 31, 31, this.f62966b);
        AssetImageUiModel assetImageUiModel = this.f62967c;
        int iHashCode = (iB + (assetImageUiModel == null ? 0 : assetImageUiModel.hashCode())) * 31;
        String str = this.d;
        int iB2 = o60.b(o60.b((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.f62968e), 31, this.f62969f);
        String str2 = this.g;
        return iB2 + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ProductFilterValueUiModel(id=", this.f62965a, ", title=", this.f62966b, ", image=");
        sbS.append(this.f62967c);
        sbS.append(", toggleFiltersId=");
        sbS.append(this.d);
        sbS.append(", isSelected=");
        fc.y(sbS, this.f62968e, ", isEnabled=", this.f62969f, ", subCategoryTitle=");
        return n00.r(this.g, ")", sbS);
    }
}
