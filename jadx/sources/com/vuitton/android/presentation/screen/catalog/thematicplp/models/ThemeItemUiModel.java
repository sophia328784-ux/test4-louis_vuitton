package com.vuitton.android.presentation.screen.catalog.thematicplp.models;

import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductShortUiModel;
import defpackage.o60;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;", "", "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;", "product", "Lcom/vuitton/android/presentation/model/common/AssetUiModel;", "brandContent", "", "launchAnimation", "isInWishlist", "<init>", "(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;ZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ThemeItemUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ProductShortUiModel f55432a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AssetUiModel f55433b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f55434c;
    public final boolean d;

    public ThemeItemUiModel(ProductShortUiModel productShortUiModel, AssetUiModel assetUiModel, boolean z, boolean z2) {
        productShortUiModel.getClass();
        this.f55432a = productShortUiModel;
        this.f55433b = assetUiModel;
        this.f55434c = z;
        this.d = z2;
    }

    public static ThemeItemUiModel a(ThemeItemUiModel themeItemUiModel, boolean z, boolean z2, int i2) {
        ProductShortUiModel productShortUiModel = themeItemUiModel.f55432a;
        AssetUiModel assetUiModel = themeItemUiModel.f55433b;
        if ((i2 & 4) != 0) {
            z = themeItemUiModel.f55434c;
        }
        if ((i2 & 8) != 0) {
            z2 = themeItemUiModel.d;
        }
        themeItemUiModel.getClass();
        productShortUiModel.getClass();
        return new ThemeItemUiModel(productShortUiModel, assetUiModel, z, z2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ThemeItemUiModel)) {
            return false;
        }
        ThemeItemUiModel themeItemUiModel = (ThemeItemUiModel) obj;
        return Intrinsics.c(this.f55432a, themeItemUiModel.f55432a) && Intrinsics.c(this.f55433b, themeItemUiModel.f55433b) && this.f55434c == themeItemUiModel.f55434c && this.d == themeItemUiModel.d;
    }

    public final int hashCode() {
        int iHashCode = this.f55432a.hashCode() * 31;
        AssetUiModel assetUiModel = this.f55433b;
        return Boolean.hashCode(this.d) + o60.b((iHashCode + (assetUiModel == null ? 0 : assetUiModel.hashCode())) * 31, 31, this.f55434c);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ThemeItemUiModel(product=");
        sb.append(this.f55432a);
        sb.append(", brandContent=");
        sb.append(this.f55433b);
        sb.append(", launchAnimation=");
        return pq0.p(sb, this.f55434c, ", isInWishlist=", this.d, ")");
    }

    public /* synthetic */ ThemeItemUiModel(ProductShortUiModel productShortUiModel, AssetUiModel assetUiModel, boolean z, boolean z2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(productShortUiModel, assetUiModel, (i2 & 4) != 0 ? false : z, z2);
    }
}
