package com.vuitton.android.presentation.screen.cart.models;

import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationConfigurationUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductDisclaimerUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductIdUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import defpackage.pq0;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001B\u009b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\f\u001a\u0004\u0018\u00010\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\u000e\u001a\u00020\n\u0012\u0006\u0010\u000f\u001a\u00020\n\u0012\u0006\u0010\u0010\u001a\u00020\n\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u000e\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0006\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0006\u0012\u0006\u0010\u0019\u001a\u00020\u0006\u0012\u0006\u0010\u001a\u001a\u00020\u0006\u0012\u0006\u0010\u001b\u001a\u00020\u0006\u0012\u0006\u0010\u001c\u001a\u00020\u0006\u0012\u0006\u0010\u001d\u001a\u00020\n\u0012\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00020\u0013\u0012\b\u0010\u001f\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010 \u001a\u00020\u0006\u0012\b\b\u0002\u0010!\u001a\u00020\u0006\u0012\u0006\u0010\"\u001a\u00020\u0006\u0012\u0006\u0010#\u001a\u00020\u0006\u0012\b\u0010%\u001a\u0004\u0018\u00010$\u0012\b\u0010'\u001a\u0004\u0018\u00010&\u0012\u0006\u0010(\u001a\u00020\u0006\u0012\u0006\u0010)\u001a\u00020\u0006¢\u0006\u0004\b*\u0010+¨\u0006,"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;", "priceInfo", "", "isExclusive", "", "quantity", "", "color", "size", "imageUrl", "skuDisplayName", "productMaterialDisplayName", "identifier", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel;", "productId", "", "Lcom/vuitton/foundation/model/domain/model/product/ProductImage;", "images", "eligibleShoppingBag", "detailedDescription", "isOutOfStock", "isAvailable", "bundle", "bundleParent", "isBaby", "comboSkuDisplayName", "bundleChildSkus", "commercialTag", "isInWishlist", "isVisible", "matchPreOrderRules", "matchBackOrderRules", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;", "disclaimer", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationConfigurationUiModel;", "customization", "isQuantityEditable", "isWishlistEligible", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;ZZZZZLjava/lang/String;Ljava/util/List;Ljava/lang/String;ZZZZLcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationConfigurationUiModel;ZZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CartItemUiModel {
    public final ProductDisclaimerUiModel A;
    public final CustomizationConfigurationUiModel B;
    public final boolean C;
    public final boolean D;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f55144a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CartPriceInformationUiModel f55145b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f55146c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f55147e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f55148f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f55149h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f55150i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f55151j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f55152k;
    public final List l;
    public final boolean m;
    public final String n;
    public final boolean o;
    public final boolean p;
    public final boolean q;
    public final boolean r;
    public final boolean s;
    public final String t;
    public final List u;
    public final String v;
    public boolean w;
    public boolean x;
    public final boolean y;
    public final boolean z;

    public CartItemUiModel(String str, CartPriceInformationUiModel cartPriceInformationUiModel, boolean z, int i2, String str2, String str3, String str4, String str5, String str6, String str7, String str8, List list, boolean z2, String str9, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, String str10, List list2, String str11, boolean z8, boolean z9, boolean z10, boolean z11, ProductDisclaimerUiModel productDisclaimerUiModel, CustomizationConfigurationUiModel customizationConfigurationUiModel, boolean z12, boolean z13, DefaultConstructorMarker defaultConstructorMarker) {
        pq0.z(str, str5, str6, str7, str8);
        str10.getClass();
        list2.getClass();
        this.f55144a = str;
        this.f55145b = cartPriceInformationUiModel;
        this.f55146c = z;
        this.d = i2;
        this.f55147e = str2;
        this.f55148f = str3;
        this.g = str4;
        this.f55149h = str5;
        this.f55150i = str6;
        this.f55151j = str7;
        this.f55152k = str8;
        this.l = list;
        this.m = z2;
        this.n = str9;
        this.o = z3;
        this.p = z4;
        this.q = z5;
        this.r = z6;
        this.s = z7;
        this.t = str10;
        this.u = list2;
        this.v = str11;
        this.w = z8;
        this.x = z9;
        this.y = z10;
        this.z = z11;
        this.A = productDisclaimerUiModel;
        this.B = customizationConfigurationUiModel;
        this.C = z12;
        this.D = z13;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CartItemUiModel)) {
            return false;
        }
        CartItemUiModel cartItemUiModel = (CartItemUiModel) obj;
        String str = cartItemUiModel.f55144a;
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        if (!Intrinsics.c(this.f55144a, str) || !Intrinsics.c(this.f55145b, cartItemUiModel.f55145b) || this.f55146c != cartItemUiModel.f55146c || this.d != cartItemUiModel.d || !Intrinsics.c(this.f55147e, cartItemUiModel.f55147e) || !Intrinsics.c(this.f55148f, cartItemUiModel.f55148f) || !Intrinsics.c(this.g, cartItemUiModel.g) || !Intrinsics.c(this.f55149h, cartItemUiModel.f55149h) || !Intrinsics.c(this.f55150i, cartItemUiModel.f55150i) || !Intrinsics.c(this.f55151j, cartItemUiModel.f55151j)) {
            return false;
        }
        String str2 = cartItemUiModel.f55152k;
        ProductIdUiModel.Companion companion2 = ProductIdUiModel.f61731c;
        return Intrinsics.c(this.f55152k, str2) && Intrinsics.c(this.l, cartItemUiModel.l) && this.m == cartItemUiModel.m && Intrinsics.c(this.n, cartItemUiModel.n) && this.o == cartItemUiModel.o && this.p == cartItemUiModel.p && this.q == cartItemUiModel.q && this.r == cartItemUiModel.r && this.s == cartItemUiModel.s && Intrinsics.c(this.t, cartItemUiModel.t) && Intrinsics.c(this.u, cartItemUiModel.u) && Intrinsics.c(this.v, cartItemUiModel.v) && this.w == cartItemUiModel.w && this.x == cartItemUiModel.x && this.y == cartItemUiModel.y && this.z == cartItemUiModel.z && Intrinsics.c(this.A, cartItemUiModel.A) && Intrinsics.c(this.B, cartItemUiModel.B) && this.C == cartItemUiModel.C && this.D == cartItemUiModel.D;
    }

    public final int hashCode() {
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        int iHashCode = this.f55144a.hashCode() * 31;
        CartPriceInformationUiModel cartPriceInformationUiModel = this.f55145b;
        int iB = tr.b(this.d, o60.b((iHashCode + (cartPriceInformationUiModel == null ? 0 : cartPriceInformationUiModel.hashCode())) * 31, 31, this.f55146c), 31);
        String str = this.f55147e;
        int iHashCode2 = (iB + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f55148f;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.g;
        int iB2 = fc.b(fc.b(fc.b((iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31, 31, this.f55149h), 31, this.f55150i), 31, this.f55151j);
        ProductIdUiModel.Companion companion2 = ProductIdUiModel.f61731c;
        int iB3 = fc.b(iB2, 31, this.f55152k);
        List list = this.l;
        int iB4 = o60.b((iB3 + (list == null ? 0 : list.hashCode())) * 31, 31, this.m);
        String str4 = this.n;
        int iA = n00.a(fc.b(o60.b(o60.b(o60.b(o60.b(o60.b((iB4 + (str4 == null ? 0 : str4.hashCode())) * 31, 31, this.o), 31, this.p), 31, this.q), 31, this.r), 31, this.s), 31, this.t), 31, this.u);
        String str5 = this.v;
        int iB5 = o60.b(o60.b(o60.b(o60.b((iA + (str5 == null ? 0 : str5.hashCode())) * 31, 31, this.w), 31, this.x), 31, this.y), 31, this.z);
        ProductDisclaimerUiModel productDisclaimerUiModel = this.A;
        int iHashCode4 = (iB5 + (productDisclaimerUiModel == null ? 0 : productDisclaimerUiModel.hashCode())) * 31;
        CustomizationConfigurationUiModel customizationConfigurationUiModel = this.B;
        return Boolean.hashCode(this.D) + o60.b((iHashCode4 + (customizationConfigurationUiModel != null ? customizationConfigurationUiModel.hashCode() : 0)) * 31, 31, this.C);
    }

    public final String toString() {
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        ProductIdUiModel.Companion companion2 = ProductIdUiModel.f61731c;
        boolean z = this.w;
        boolean z2 = this.x;
        StringBuilder sb = new StringBuilder("CartItemUiModel(sku=");
        sb.append(this.f55144a);
        sb.append(", priceInfo=");
        sb.append(this.f55145b);
        sb.append(", isExclusive=");
        sb.append(this.f55146c);
        sb.append(", quantity=");
        sb.append(this.d);
        sb.append(", color=");
        cj.C(sb, this.f55147e, ", size=", this.f55148f, ", imageUrl=");
        cj.C(sb, this.g, ", skuDisplayName=", this.f55149h, ", productMaterialDisplayName=");
        cj.C(sb, this.f55150i, ", identifier=", this.f55151j, ", productId=");
        d21.z(this.f55152k, ", images=", ", eligibleShoppingBag=", sb, this.l);
        cj.A(", detailedDescription=", this.n, ", isOutOfStock=", sb, this.m);
        fc.y(sb, this.o, ", isAvailable=", this.p, ", bundle=");
        fc.y(sb, this.q, ", bundleParent=", this.r, ", isBaby=");
        cj.A(", comboSkuDisplayName=", this.t, ", bundleChildSkus=", sb, this.s);
        o60.B(", commercialTag=", this.v, ", isInWishlist=", sb, this.u);
        fc.y(sb, z, ", isVisible=", z2, ", matchPreOrderRules=");
        fc.y(sb, this.y, ", matchBackOrderRules=", this.z, ", disclaimer=");
        sb.append(this.A);
        sb.append(", customization=");
        sb.append(this.B);
        sb.append(", isQuantityEditable=");
        return pq0.p(sb, this.C, ", isWishlistEligible=", this.D, ")");
    }

    public /* synthetic */ CartItemUiModel(String str, CartPriceInformationUiModel cartPriceInformationUiModel, boolean z, int i2, String str2, String str3, String str4, String str5, String str6, String str7, String str8, List list, boolean z2, String str9, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, String str10, List list2, String str11, boolean z8, boolean z9, boolean z10, boolean z11, ProductDisclaimerUiModel productDisclaimerUiModel, CustomizationConfigurationUiModel customizationConfigurationUiModel, boolean z12, boolean z13, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, cartPriceInformationUiModel, z, i2, str2, str3, str4, str5, str6, str7, str8, list, z2, str9, (i3 & 16384) != 0 ? false : z3, z4, z5, z6, z7, str10, list2, str11, (4194304 & i3) != 0 ? false : z8, (i3 & 8388608) != 0 ? true : z9, z10, z11, productDisclaimerUiModel, customizationConfigurationUiModel, z12, z13, null);
    }
}
