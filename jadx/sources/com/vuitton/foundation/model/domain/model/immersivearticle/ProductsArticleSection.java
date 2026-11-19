package com.vuitton.foundation.model.domain.model.immersivearticle;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.vuitton.foundation.model.domain.model.common.Asset;
import com.vuitton.foundation.model.domain.model.product.ProductId;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.a;
import defpackage.d21;
import defpackage.fc;
import defpackage.o60;
import defpackage.pq0;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001:\u0002\u0011\u0012BC\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/immersivearticle/ProductsArticleSection;", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSection;", "", ConfigurationName.KEY, "", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ProductsArticleSection$Product;", com.sightcall.universal.agent.Product.TYPE, "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductImageStyle;", "imageStyle", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductDisplayStyle;", "displayStyle", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;", "mainTheme", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;", "ratio", "<init>", "(Ljava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductImageStyle;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleProductDisplayStyle;Lcom/vuitton/foundation/model/domain/model/immersivearticle/SectionTheme;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticleSizeCard;)V", "Product", "ProductInfo", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ProductsArticleSection extends ImmersiveArticleSection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67712a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f67713b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImmersiveArticleProductImageStyle f67714c;
    public final ImmersiveArticleProductDisplayStyle d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SectionTheme f67715e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ImmersiveArticleSizeCard f67716f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProductsArticleSection(String str, List<Product> list, ImmersiveArticleProductImageStyle immersiveArticleProductImageStyle, ImmersiveArticleProductDisplayStyle immersiveArticleProductDisplayStyle, SectionTheme sectionTheme, ImmersiveArticleSizeCard immersiveArticleSizeCard) {
        super(null);
        str.getClass();
        immersiveArticleProductImageStyle.getClass();
        immersiveArticleProductDisplayStyle.getClass();
        this.f67712a = str;
        this.f67713b = list;
        this.f67714c = immersiveArticleProductImageStyle;
        this.d = immersiveArticleProductDisplayStyle;
        this.f67715e = sectionTheme;
        this.f67716f = immersiveArticleSizeCard;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductsArticleSection)) {
            return false;
        }
        ProductsArticleSection productsArticleSection = (ProductsArticleSection) obj;
        return Intrinsics.c(this.f67712a, productsArticleSection.f67712a) && Intrinsics.c(this.f67713b, productsArticleSection.f67713b) && this.f67714c == productsArticleSection.f67714c && this.d == productsArticleSection.d && Intrinsics.c(this.f67715e, productsArticleSection.f67715e) && this.f67716f == productsArticleSection.f67716f;
    }

    public final int hashCode() {
        int iHashCode = this.f67712a.hashCode() * 31;
        List list = this.f67713b;
        int iHashCode2 = (this.d.hashCode() + ((this.f67714c.hashCode() + ((iHashCode + (list == null ? 0 : list.hashCode())) * 31)) * 31)) * 31;
        SectionTheme sectionTheme = this.f67715e;
        int iHashCode3 = (iHashCode2 + (sectionTheme == null ? 0 : sectionTheme.hashCode())) * 31;
        ImmersiveArticleSizeCard immersiveArticleSizeCard = this.f67716f;
        return iHashCode3 + (immersiveArticleSizeCard != null ? immersiveArticleSizeCard.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbT = d21.t("ProductsArticleSection(key=", this.f67712a, ", products=", this.f67713b, ", imageStyle=");
        sbT.append(this.f67714c);
        sbT.append(", displayStyle=");
        sbT.append(this.d);
        sbT.append(", mainTheme=");
        sbT.append(this.f67715e);
        sbT.append(", ratio=");
        sbT.append(this.f67716f);
        sbT.append(")");
        return sbT.toString();
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/immersivearticle/ProductsArticleSection$Product;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "Lcom/vuitton/foundation/model/domain/model/common/Asset;", "asset", "Lcom/vuitton/foundation/model/domain/model/immersivearticle/ProductsArticleSection$ProductInfo;", "info", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/Asset;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ProductsArticleSection$ProductInfo;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Product {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f67717a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Asset f67718b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ProductInfo f67719c;

        public Product(String str, Asset asset, ProductInfo productInfo, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            this.f67717a = str;
            this.f67718b = asset;
            this.f67719c = productInfo;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Product)) {
                return false;
            }
            Product product = (Product) obj;
            String str = product.f67717a;
            SkuId.Companion companion = SkuId.INSTANCE;
            return Intrinsics.c(this.f67717a, str) && Intrinsics.c(this.f67718b, product.f67718b) && Intrinsics.c(this.f67719c, product.f67719c);
        }

        public final int hashCode() {
            SkuId.Companion companion = SkuId.INSTANCE;
            int iHashCode = this.f67717a.hashCode() * 31;
            Asset asset = this.f67718b;
            int iHashCode2 = (iHashCode + (asset == null ? 0 : asset.hashCode())) * 31;
            ProductInfo productInfo = this.f67719c;
            return iHashCode2 + (productInfo != null ? productInfo.hashCode() : 0);
        }

        public final String toString() {
            SkuId.Companion companion = SkuId.INSTANCE;
            return "Product(sku=" + this.f67717a + ", asset=" + this.f67718b + ", info=" + this.f67719c + ")";
        }

        public /* synthetic */ Product(String str, Asset asset, ProductInfo productInfo, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, asset, (i2 & 4) != 0 ? null : productInfo, null);
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B9\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\u0007¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/immersivearticle/ProductsArticleSection$ProductInfo;", "", "Lcom/vuitton/foundation/model/domain/model/product/ProductId;", "productId", "", "name", "price", "", "isInWishlist", "wishlistIsLoading", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ProductInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f67720a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f67721b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f67722c;
        public final boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f67723e;

        public /* synthetic */ ProductInfo(String str, String str2, String str3, boolean z, boolean z2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, str2, str3, (i2 & 8) != 0 ? false : z, (i2 & 16) != 0 ? false : z2, null);
        }

        /* JADX WARN: Code duplicated, block: B:12:0x0016  */
        public final boolean equals(Object obj) {
            boolean zC;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ProductInfo)) {
                return false;
            }
            ProductInfo productInfo = (ProductInfo) obj;
            String str = productInfo.f67720a;
            String str2 = this.f67720a;
            if (str2 == null) {
                if (str == null) {
                    zC = true;
                } else {
                    zC = false;
                }
            } else if (str == null) {
                zC = false;
            } else {
                ProductId.Companion companion = ProductId.INSTANCE;
                zC = Intrinsics.c(str2, str);
            }
            return zC && Intrinsics.c(this.f67721b, productInfo.f67721b) && Intrinsics.c(this.f67722c, productInfo.f67722c) && this.d == productInfo.d && this.f67723e == productInfo.f67723e;
        }

        public final int hashCode() {
            int iHashCode;
            String str = this.f67720a;
            if (str == null) {
                iHashCode = 0;
            } else {
                ProductId.Companion companion = ProductId.INSTANCE;
                iHashCode = str.hashCode();
            }
            int i2 = iHashCode * 31;
            String str2 = this.f67721b;
            int iHashCode2 = (i2 + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.f67722c;
            return Boolean.hashCode(this.f67723e) + o60.b((iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31, 31, this.d);
        }

        public final String toString() {
            String str = this.f67720a;
            if (str == null) {
                str = "null";
            } else {
                ProductId.Companion companion = ProductId.INSTANCE;
            }
            StringBuilder sbS = fc.s("ProductInfo(productId=", str, ", name=", this.f67721b, ", price=");
            pq0.A(this.f67722c, ", isInWishlist=", ", wishlistIsLoading=", sbS, this.d);
            return a.p(sbS, this.f67723e, ")");
        }

        public ProductInfo(String str, String str2, String str3, boolean z, boolean z2, DefaultConstructorMarker defaultConstructorMarker) {
            this.f67720a = str;
            this.f67721b = str2;
            this.f67722c = str3;
            this.d = z;
            this.f67723e = z2;
        }
    }
}
