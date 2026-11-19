package com.vuitton.foundation.model.domain.model.cart;

import com.vuitton.foundation.model.domain.model.product.ProductDisclaimer;
import com.vuitton.foundation.model.domain.model.product.ProductId;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.product.availability.AvailabilityTimeFormat;
import com.vuitton.foundation.model.domain.model.product.universal.CustomizationConfiguration;
import defpackage.a;
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
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001B«\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\f\u001a\u0004\u0018\u00010\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\u000e\u001a\u00020\n\u0012\u0006\u0010\u000f\u001a\u00020\n\u0012\u0006\u0010\u0010\u001a\u00020\n\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u000e\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\u0017\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0006\u0012\u0006\u0010\u0019\u001a\u00020\u0006\u0012\u0006\u0010\u001a\u001a\u00020\u0006\u0012\u0006\u0010\u001b\u001a\u00020\u0006\u0012\u0006\u0010\u001c\u001a\u00020\u0006\u0012\u0006\u0010\u001d\u001a\u00020\n\u0012\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00020\u0013\u0012\b\u0010\u001f\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\"\u0012\u0006\u0010$\u001a\u00020\u0006\u0012\u0006\u0010%\u001a\u00020\u0006\u0012\b\u0010'\u001a\u0004\u0018\u00010&\u0012\b\u0010)\u001a\u0004\u0018\u00010(\u0012\u0006\u0010*\u001a\u00020\u0006\u0012\u0006\u0010+\u001a\u00020\u0006¢\u0006\u0004\b,\u0010-¨\u0006."}, d2 = {"Lcom/vuitton/foundation/model/domain/model/cart/CartItem;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;", "priceInfo", "", "isExclusive", "", "quantity", "", "color", "size", "imageUrl", "skuDisplayName", "productMaterialDisplayName", "identifier", "Lcom/vuitton/foundation/model/domain/model/product/ProductId;", "productId", "", "Lcom/vuitton/foundation/model/domain/model/product/ProductImage;", "images", "detailedDescription", "eligibleShoppingBag", "isOutOfStock", "isAvailable", "bundle", "bundleParent", "isBaby", "comboSkuDisplayName", "bundleChildSkus", "commercialTag", "backOrderDisclaimerMin", "backOrderDisclaimerMax", "Lcom/vuitton/foundation/model/domain/model/product/availability/AvailabilityTimeFormat;", "backOrderDisclaimerTimeFormat", "matchPreOrderRules", "matchBackOrderRules", "Lcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;", "disclaimer", "Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationConfiguration;", "customization", "isQuantityEditable", "isWishlistEligible", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZZZZZLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vuitton/foundation/model/domain/model/product/availability/AvailabilityTimeFormat;ZZLcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationConfiguration;ZZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CartItem {
    public final boolean A;
    public final ProductDisclaimer B;
    public final CustomizationConfiguration C;
    public final boolean D;
    public final boolean E;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66905a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CartPriceInformation f66906b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f66907c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f66908e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f66909f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f66910h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f66911i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f66912j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f66913k;
    public final List l;
    public final String m;
    public final boolean n;
    public final boolean o;
    public final boolean p;
    public final boolean q;
    public final boolean r;
    public final boolean s;
    public final String t;
    public final List u;
    public final String v;
    public final Integer w;
    public final Integer x;
    public final AvailabilityTimeFormat y;
    public final boolean z;

    public CartItem(String str, CartPriceInformation cartPriceInformation, boolean z, int i2, String str2, String str3, String str4, String str5, String str6, String str7, String str8, List list, String str9, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, String str10, List list2, String str11, Integer num, Integer num2, AvailabilityTimeFormat availabilityTimeFormat, boolean z8, boolean z9, ProductDisclaimer productDisclaimer, CustomizationConfiguration customizationConfiguration, boolean z10, boolean z11, DefaultConstructorMarker defaultConstructorMarker) {
        pq0.z(str, str5, str6, str7, str8);
        str10.getClass();
        list2.getClass();
        this.f66905a = str;
        this.f66906b = cartPriceInformation;
        this.f66907c = z;
        this.d = i2;
        this.f66908e = str2;
        this.f66909f = str3;
        this.g = str4;
        this.f66910h = str5;
        this.f66911i = str6;
        this.f66912j = str7;
        this.f66913k = str8;
        this.l = list;
        this.m = str9;
        this.n = z2;
        this.o = z3;
        this.p = z4;
        this.q = z5;
        this.r = z6;
        this.s = z7;
        this.t = str10;
        this.u = list2;
        this.v = str11;
        this.w = num;
        this.x = num2;
        this.y = availabilityTimeFormat;
        this.z = z8;
        this.A = z9;
        this.B = productDisclaimer;
        this.C = customizationConfiguration;
        this.D = z10;
        this.E = z11;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CartItem)) {
            return false;
        }
        CartItem cartItem = (CartItem) obj;
        String str = cartItem.f66905a;
        SkuId.Companion companion = SkuId.INSTANCE;
        if (!Intrinsics.c(this.f66905a, str) || !Intrinsics.c(this.f66906b, cartItem.f66906b) || this.f66907c != cartItem.f66907c || this.d != cartItem.d || !Intrinsics.c(this.f66908e, cartItem.f66908e) || !Intrinsics.c(this.f66909f, cartItem.f66909f) || !Intrinsics.c(this.g, cartItem.g) || !Intrinsics.c(this.f66910h, cartItem.f66910h) || !Intrinsics.c(this.f66911i, cartItem.f66911i) || !Intrinsics.c(this.f66912j, cartItem.f66912j)) {
            return false;
        }
        String str2 = cartItem.f66913k;
        ProductId.Companion companion2 = ProductId.INSTANCE;
        return Intrinsics.c(this.f66913k, str2) && Intrinsics.c(this.l, cartItem.l) && Intrinsics.c(this.m, cartItem.m) && this.n == cartItem.n && this.o == cartItem.o && this.p == cartItem.p && this.q == cartItem.q && this.r == cartItem.r && this.s == cartItem.s && Intrinsics.c(this.t, cartItem.t) && Intrinsics.c(this.u, cartItem.u) && Intrinsics.c(this.v, cartItem.v) && Intrinsics.c(this.w, cartItem.w) && Intrinsics.c(this.x, cartItem.x) && this.y == cartItem.y && this.z == cartItem.z && this.A == cartItem.A && Intrinsics.c(this.B, cartItem.B) && Intrinsics.c(this.C, cartItem.C) && this.D == cartItem.D && this.E == cartItem.E;
    }

    public final int hashCode() {
        SkuId.Companion companion = SkuId.INSTANCE;
        int iHashCode = this.f66905a.hashCode() * 31;
        CartPriceInformation cartPriceInformation = this.f66906b;
        int iB = tr.b(this.d, o60.b((iHashCode + (cartPriceInformation == null ? 0 : cartPriceInformation.hashCode())) * 31, 31, this.f66907c), 31);
        String str = this.f66908e;
        int iHashCode2 = (iB + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f66909f;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.g;
        int iB2 = fc.b(fc.b(fc.b((iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31, 31, this.f66910h), 31, this.f66911i), 31, this.f66912j);
        ProductId.Companion companion2 = ProductId.INSTANCE;
        int iB3 = fc.b(iB2, 31, this.f66913k);
        List list = this.l;
        int iHashCode4 = (iB3 + (list == null ? 0 : list.hashCode())) * 31;
        String str4 = this.m;
        int iA = n00.a(fc.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b((iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31, 31, this.n), 31, this.o), 31, this.p), 31, this.q), 31, this.r), 31, this.s), 31, this.t), 31, this.u);
        String str5 = this.v;
        int iHashCode5 = (iA + (str5 == null ? 0 : str5.hashCode())) * 31;
        Integer num = this.w;
        int iHashCode6 = (iHashCode5 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.x;
        int iHashCode7 = (iHashCode6 + (num2 == null ? 0 : num2.hashCode())) * 31;
        AvailabilityTimeFormat availabilityTimeFormat = this.y;
        int iB4 = o60.b(o60.b((iHashCode7 + (availabilityTimeFormat == null ? 0 : availabilityTimeFormat.hashCode())) * 31, 31, this.z), 31, this.A);
        ProductDisclaimer productDisclaimer = this.B;
        int iHashCode8 = (iB4 + (productDisclaimer == null ? 0 : productDisclaimer.hashCode())) * 31;
        CustomizationConfiguration customizationConfiguration = this.C;
        return Boolean.hashCode(this.E) + o60.b((iHashCode8 + (customizationConfiguration != null ? customizationConfiguration.hashCode() : 0)) * 31, 31, this.D);
    }

    public final String toString() {
        SkuId.Companion companion = SkuId.INSTANCE;
        ProductId.Companion companion2 = ProductId.INSTANCE;
        StringBuilder sb = new StringBuilder("CartItem(sku=");
        sb.append(this.f66905a);
        sb.append(", priceInfo=");
        sb.append(this.f66906b);
        sb.append(", isExclusive=");
        sb.append(this.f66907c);
        sb.append(", quantity=");
        sb.append(this.d);
        sb.append(", color=");
        cj.C(sb, this.f66908e, ", size=", this.f66909f, ", imageUrl=");
        cj.C(sb, this.g, ", skuDisplayName=", this.f66910h, ", productMaterialDisplayName=");
        cj.C(sb, this.f66911i, ", identifier=", this.f66912j, ", productId=");
        d21.z(this.f66913k, ", images=", ", detailedDescription=", sb, this.l);
        pq0.A(this.m, ", eligibleShoppingBag=", ", isOutOfStock=", sb, this.n);
        fc.y(sb, this.o, ", isAvailable=", this.p, ", bundle=");
        fc.y(sb, this.q, ", bundleParent=", this.r, ", isBaby=");
        cj.A(", comboSkuDisplayName=", this.t, ", bundleChildSkus=", sb, this.s);
        o60.B(", commercialTag=", this.v, ", backOrderDisclaimerMin=", sb, this.u);
        sb.append(this.w);
        sb.append(", backOrderDisclaimerMax=");
        sb.append(this.x);
        sb.append(", backOrderDisclaimerTimeFormat=");
        sb.append(this.y);
        sb.append(", matchPreOrderRules=");
        sb.append(this.z);
        sb.append(", matchBackOrderRules=");
        sb.append(this.A);
        sb.append(", disclaimer=");
        sb.append(this.B);
        sb.append(", customization=");
        sb.append(this.C);
        sb.append(", isQuantityEditable=");
        sb.append(this.D);
        sb.append(", isWishlistEligible=");
        return a.p(sb, this.E, ")");
    }

    public /* synthetic */ CartItem(String str, CartPriceInformation cartPriceInformation, boolean z, int i2, String str2, String str3, String str4, String str5, String str6, String str7, String str8, List list, String str9, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, String str10, List list2, String str11, Integer num, Integer num2, AvailabilityTimeFormat availabilityTimeFormat, boolean z8, boolean z9, ProductDisclaimer productDisclaimer, CustomizationConfiguration customizationConfiguration, boolean z10, boolean z11, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, cartPriceInformation, z, i2, str2, str3, str4, str5, str6, str7, str8, list, str9, z2, (i3 & 16384) != 0 ? false : z3, z4, z5, z6, z7, str10, list2, str11, (4194304 & i3) != 0 ? null : num, (8388608 & i3) != 0 ? null : num2, (i3 & 16777216) != 0 ? null : availabilityTimeFormat, z8, z9, productDisclaimer, customizationConfiguration, z10, z11, null);
    }
}
