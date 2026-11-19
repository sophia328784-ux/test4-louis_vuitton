package com.vuitton.android.presentation.screen.immersivearticle.models;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sightcall.universal.agent.Product;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductIdUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import defpackage.d21;
import defpackage.fc;
import defpackage.o60;
import defpackage.pq0;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001:\u0002\u0011\u0012BC\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSectionUiModel;", "", ConfigurationName.KEY, "", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ImmersiveProductUiModel;", Product.TYPE, "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductImageStyleUiModel;", "imageStyle", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductDisplayStyleUiModel;", "displayStyle", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;", "mainTheme", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;", "ratio", "<init>", "(Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductImageStyleUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductDisplayStyleUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;)V", "ImmersiveProductUiModel", "ProductInfoUiModel", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ProductsArticleSectionUiModel extends ImmersiveArticleSectionUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f58812a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f58813b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImmersiveArticleProductImageStyleUiModel f58814c;
    public final ImmersiveArticleProductDisplayStyleUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SectionThemeUiModel f58815e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ImmersiveArticleSizeCardUiModel f58816f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProductsArticleSectionUiModel(String str, List<ImmersiveProductUiModel> list, ImmersiveArticleProductImageStyleUiModel immersiveArticleProductImageStyleUiModel, ImmersiveArticleProductDisplayStyleUiModel immersiveArticleProductDisplayStyleUiModel, SectionThemeUiModel sectionThemeUiModel, ImmersiveArticleSizeCardUiModel immersiveArticleSizeCardUiModel) {
        super(null);
        str.getClass();
        immersiveArticleProductImageStyleUiModel.getClass();
        immersiveArticleProductDisplayStyleUiModel.getClass();
        this.f58812a = str;
        this.f58813b = list;
        this.f58814c = immersiveArticleProductImageStyleUiModel;
        this.d = immersiveArticleProductDisplayStyleUiModel;
        this.f58815e = sectionThemeUiModel;
        this.f58816f = immersiveArticleSizeCardUiModel;
    }

    public static ProductsArticleSectionUiModel b(ProductsArticleSectionUiModel productsArticleSectionUiModel, List list) {
        String str = productsArticleSectionUiModel.f58812a;
        ImmersiveArticleProductImageStyleUiModel immersiveArticleProductImageStyleUiModel = productsArticleSectionUiModel.f58814c;
        ImmersiveArticleProductDisplayStyleUiModel immersiveArticleProductDisplayStyleUiModel = productsArticleSectionUiModel.d;
        SectionThemeUiModel sectionThemeUiModel = productsArticleSectionUiModel.f58815e;
        ImmersiveArticleSizeCardUiModel immersiveArticleSizeCardUiModel = productsArticleSectionUiModel.f58816f;
        productsArticleSectionUiModel.getClass();
        str.getClass();
        immersiveArticleProductImageStyleUiModel.getClass();
        immersiveArticleProductDisplayStyleUiModel.getClass();
        return new ProductsArticleSectionUiModel(str, list, immersiveArticleProductImageStyleUiModel, immersiveArticleProductDisplayStyleUiModel, sectionThemeUiModel, immersiveArticleSizeCardUiModel);
    }

    @Override // com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleSectionUiModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getF58827a() {
        return this.f58812a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductsArticleSectionUiModel)) {
            return false;
        }
        ProductsArticleSectionUiModel productsArticleSectionUiModel = (ProductsArticleSectionUiModel) obj;
        return Intrinsics.c(this.f58812a, productsArticleSectionUiModel.f58812a) && Intrinsics.c(this.f58813b, productsArticleSectionUiModel.f58813b) && this.f58814c == productsArticleSectionUiModel.f58814c && this.d == productsArticleSectionUiModel.d && Intrinsics.c(this.f58815e, productsArticleSectionUiModel.f58815e) && this.f58816f == productsArticleSectionUiModel.f58816f;
    }

    public final int hashCode() {
        int iHashCode = this.f58812a.hashCode() * 31;
        List list = this.f58813b;
        int iHashCode2 = (this.d.hashCode() + ((this.f58814c.hashCode() + ((iHashCode + (list == null ? 0 : list.hashCode())) * 31)) * 31)) * 31;
        SectionThemeUiModel sectionThemeUiModel = this.f58815e;
        int iHashCode3 = (iHashCode2 + (sectionThemeUiModel == null ? 0 : sectionThemeUiModel.hashCode())) * 31;
        ImmersiveArticleSizeCardUiModel immersiveArticleSizeCardUiModel = this.f58816f;
        return iHashCode3 + (immersiveArticleSizeCardUiModel != null ? immersiveArticleSizeCardUiModel.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbT = d21.t("ProductsArticleSectionUiModel(key=", this.f58812a, ", products=", this.f58813b, ", imageStyle=");
        sbT.append(this.f58814c);
        sbT.append(", displayStyle=");
        sbT.append(this.d);
        sbT.append(", mainTheme=");
        sbT.append(this.f58815e);
        sbT.append(", ratio=");
        sbT.append(this.f58816f);
        sbT.append(")");
        return sbT.toString();
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ImmersiveProductUiModel;", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "Lcom/vuitton/android/presentation/model/common/AssetUiModel;", "asset", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ProductInfoUiModel;", "info", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ProductInfoUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ImmersiveProductUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f58817a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final AssetUiModel f58818b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ProductInfoUiModel f58819c;

        public ImmersiveProductUiModel(String str, AssetUiModel assetUiModel, ProductInfoUiModel productInfoUiModel, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            this.f58817a = str;
            this.f58818b = assetUiModel;
            this.f58819c = productInfoUiModel;
        }

        public static ImmersiveProductUiModel a(ImmersiveProductUiModel immersiveProductUiModel, ProductInfoUiModel productInfoUiModel) {
            String str = immersiveProductUiModel.f58817a;
            AssetUiModel assetUiModel = immersiveProductUiModel.f58818b;
            immersiveProductUiModel.getClass();
            str.getClass();
            return new ImmersiveProductUiModel(str, assetUiModel, productInfoUiModel, null);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ImmersiveProductUiModel)) {
                return false;
            }
            ImmersiveProductUiModel immersiveProductUiModel = (ImmersiveProductUiModel) obj;
            String str = immersiveProductUiModel.f58817a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return Intrinsics.c(this.f58817a, str) && Intrinsics.c(this.f58818b, immersiveProductUiModel.f58818b) && Intrinsics.c(this.f58819c, immersiveProductUiModel.f58819c);
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            int iHashCode = this.f58817a.hashCode() * 31;
            AssetUiModel assetUiModel = this.f58818b;
            int iHashCode2 = (iHashCode + (assetUiModel == null ? 0 : assetUiModel.hashCode())) * 31;
            ProductInfoUiModel productInfoUiModel = this.f58819c;
            return iHashCode2 + (productInfoUiModel != null ? productInfoUiModel.hashCode() : 0);
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return "ImmersiveProductUiModel(sku=" + this.f58817a + ", asset=" + this.f58818b + ", info=" + this.f58819c + ")";
        }

        public /* synthetic */ ImmersiveProductUiModel(String str, AssetUiModel assetUiModel, ProductInfoUiModel productInfoUiModel, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, assetUiModel, (i2 & 4) != 0 ? null : productInfoUiModel, null);
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001BC\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\u0007\u0012\b\b\u0002\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ProductInfoUiModel;", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel;", "productId", "", "name", "price", "", "isInWishlist", "wishlistIsLoading", "isPersonalizationAvailable", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ProductInfoUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f58820a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f58821b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f58822c;
        public final boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f58823e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final boolean f58824f;

        public /* synthetic */ ProductInfoUiModel(String str, String str2, String str3, boolean z, boolean z2, boolean z3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, str2, str3, (i2 & 8) != 0 ? false : z, (i2 & 16) != 0 ? false : z2, (i2 & 32) != 0 ? false : z3, null);
        }

        public static ProductInfoUiModel a(ProductInfoUiModel productInfoUiModel, boolean z, boolean z2, int i2) {
            String str = productInfoUiModel.f58820a;
            String str2 = productInfoUiModel.f58821b;
            String str3 = productInfoUiModel.f58822c;
            if ((i2 & 16) != 0) {
                z2 = productInfoUiModel.f58823e;
            }
            boolean z3 = productInfoUiModel.f58824f;
            productInfoUiModel.getClass();
            return new ProductInfoUiModel(str, str2, str3, z, z2, z3, null);
        }

        /* JADX WARN: Code duplicated, block: B:12:0x0016  */
        public final boolean equals(Object obj) {
            boolean zC;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ProductInfoUiModel)) {
                return false;
            }
            ProductInfoUiModel productInfoUiModel = (ProductInfoUiModel) obj;
            String str = productInfoUiModel.f58820a;
            String str2 = this.f58820a;
            if (str2 == null) {
                if (str == null) {
                    zC = true;
                } else {
                    zC = false;
                }
            } else if (str == null) {
                zC = false;
            } else {
                ProductIdUiModel.Companion companion = ProductIdUiModel.f61731c;
                zC = Intrinsics.c(str2, str);
            }
            return zC && Intrinsics.c(this.f58821b, productInfoUiModel.f58821b) && Intrinsics.c(this.f58822c, productInfoUiModel.f58822c) && this.d == productInfoUiModel.d && this.f58823e == productInfoUiModel.f58823e && this.f58824f == productInfoUiModel.f58824f;
        }

        public final int hashCode() {
            int iHashCode;
            String str = this.f58820a;
            if (str == null) {
                iHashCode = 0;
            } else {
                ProductIdUiModel.Companion companion = ProductIdUiModel.f61731c;
                iHashCode = str.hashCode();
            }
            int i2 = iHashCode * 31;
            String str2 = this.f58821b;
            int iHashCode2 = (i2 + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.f58822c;
            return Boolean.hashCode(this.f58824f) + o60.b(o60.b((iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31, 31, this.d), 31, this.f58823e);
        }

        public final String toString() {
            String str = this.f58820a;
            if (str == null) {
                str = "null";
            } else {
                ProductIdUiModel.Companion companion = ProductIdUiModel.f61731c;
            }
            StringBuilder sbS = fc.s("ProductInfoUiModel(productId=", str, ", name=", this.f58821b, ", price=");
            pq0.A(this.f58822c, ", isInWishlist=", ", wishlistIsLoading=", sbS, this.d);
            return pq0.p(sbS, this.f58823e, ", isPersonalizationAvailable=", this.f58824f, ")");
        }

        public ProductInfoUiModel(String str, String str2, String str3, boolean z, boolean z2, boolean z3, DefaultConstructorMarker defaultConstructorMarker) {
            this.f58820a = str;
            this.f58821b = str2;
            this.f58822c = str3;
            this.d = z;
            this.f58823e = z2;
            this.f58824f = z3;
        }
    }
}
