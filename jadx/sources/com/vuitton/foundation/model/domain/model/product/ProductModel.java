package com.vuitton.foundation.model.domain.model.product;

import com.batch.android.s.b;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.vuitton.foundation.model.domain.model.product.availability.SkuAvailability;
import com.vuitton.foundation.model.domain.model.product.universal.ProductBackground;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import defpackage.pq0;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001:\u00018B\u0089\u0003\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0004\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0004\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0012\u001a\u00020\u0004\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0016\u001a\u00020\n\u0012\u0006\u0010\u0017\u001a\u00020\n\u0012\u0006\u0010\u0018\u001a\u00020\n\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\b\u0010\u001c\u001a\u0004\u0018\u00010\u001b\u0012\b\u0010\u001d\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u001e\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u001f\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010 \u001a\u00020\n\u0012\u0006\u0010!\u001a\u00020\n\u0012\u0006\u0010\"\u001a\u00020\n\u0012\b\u0010$\u001a\u0004\u0018\u00010#\u0012\b\u0010%\u001a\u0004\u0018\u00010#\u0012\b\u0010&\u001a\u0004\u0018\u00010#\u0012\u0006\u0010'\u001a\u00020\n\u0012\b\u0010)\u001a\u0004\u0018\u00010(\u0012\b\b\u0002\u0010*\u001a\u00020\n\u0012\b\b\u0002\u0010+\u001a\u00020\n\u0012\b\u0010,\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010-\u001a\u00020\n\u0012\f\u0010.\u001a\b\u0012\u0004\u0012\u00020\u00060\r\u0012\b\u0010/\u001a\u0004\u0018\u00010\u0004\u0012\b\u00100\u001a\u0004\u0018\u00010\u0004\u0012\b\u00101\u001a\u0004\u0018\u00010\u0004\u0012\b\u00103\u001a\u0004\u0018\u000102\u0012\u000e\b\u0002\u00105\u001a\b\u0012\u0004\u0012\u0002040\r¢\u0006\u0004\b6\u00107¨\u00069"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/ProductModel;", "", "Lcom/vuitton/foundation/model/domain/model/product/ProductId;", b.a.f24015b, "", "name", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "identifierKey", "mainImageUrl", "", "isSellable", "formattedPrice", "", "Lcom/vuitton/foundation/model/domain/model/product/ProductMedia;", "mediaList", "description", "detailedFeatures", ConfigurationName.DOWNLOAD_PLUGIN_URL, "color", "colorIconUrl", "size", "isMonogram", "isEngraving", "locateInStore", "Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;", "skuAvailability", "", "priceValue", "currency", "recipeId", "fluidProductId", "showARModel", "hideAddToWishlist", "buyOnWebsiteOnly", "Lcom/vuitton/foundation/model/domain/model/product/ProductDimension;", "depth", "height", "width", "backOrderDisclaimer", "Lcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;", "disclaimer", "isExclusive", "backInStock", "caratSize", "isDiamond", "bundleSkuIds", "editoCta", "editoDescription", "editoTitle", "Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;", "productBackground", "Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProduct;", "assets", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLcom/vuitton/foundation/model/domain/model/product/ProductDimension;Lcom/vuitton/foundation/model/domain/model/product/ProductDimension;Lcom/vuitton/foundation/model/domain/model/product/ProductDimension;ZLcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;ZZLjava/lang/String;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ProductModel {
    public static final Companion O = new Companion(null);
    public static final String[] P = {"4S", "XXXXS", "3S", "XXXS", "XXS", "XS", "S", "S0", "M", "M0", "L", "L0", "XL", "XXL", "XXXL", "3L", "XXXXL", "4L", "5L", "6L"};
    public final ProductDimension A;
    public final ProductDimension B;
    public final boolean C;
    public final ProductDisclaimer D;
    public final boolean E;
    public final boolean F;
    public final String G;
    public final boolean H;
    public final List I;
    public final String J;
    public final String K;
    public final String L;
    public final ProductBackground M;
    public final List N;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67909a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67910b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67911c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f67912e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f67913f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List f67914h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f67915i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f67916j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f67917k;
    public final String l;
    public final String m;
    public final String n;
    public final boolean o;
    public final boolean p;
    public final boolean q;
    public final SkuAvailability r;
    public final Float s;
    public final String t;
    public final String u;
    public final String v;
    public final boolean w;
    public final boolean x;
    public final boolean y;
    public final ProductDimension z;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/ProductModel$Companion;", "", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public ProductModel(String str, String str2, String str3, String str4, String str5, boolean z, String str6, List list, String str7, String str8, String str9, String str10, String str11, String str12, boolean z2, boolean z3, boolean z4, SkuAvailability skuAvailability, Float f2, String str13, String str14, String str15, boolean z5, boolean z6, boolean z7, ProductDimension productDimension, ProductDimension productDimension2, ProductDimension productDimension3, boolean z8, ProductDisclaimer productDisclaimer, boolean z9, boolean z10, String str16, boolean z11, List list2, String str17, String str18, String str19, ProductBackground productBackground, List list3, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
        list.getClass();
        str9.getClass();
        skuAvailability.getClass();
        list2.getClass();
        list3.getClass();
        this.f67909a = str;
        this.f67910b = str2;
        this.f67911c = str3;
        this.d = str4;
        this.f67912e = str5;
        this.f67913f = z;
        this.g = str6;
        this.f67914h = list;
        this.f67915i = str7;
        this.f67916j = str8;
        this.f67917k = str9;
        this.l = str10;
        this.m = str11;
        this.n = str12;
        this.o = z2;
        this.p = z3;
        this.q = z4;
        this.r = skuAvailability;
        this.s = f2;
        this.t = str13;
        this.u = str14;
        this.v = str15;
        this.w = z5;
        this.x = z6;
        this.y = z7;
        this.z = productDimension;
        this.A = productDimension2;
        this.B = productDimension3;
        this.C = z8;
        this.D = productDisclaimer;
        this.E = z9;
        this.F = z10;
        this.G = str16;
        this.H = z11;
        this.I = list2;
        this.J = str17;
        this.K = str18;
        this.L = str19;
        this.M = productBackground;
        this.N = list3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductModel)) {
            return false;
        }
        ProductModel productModel = (ProductModel) obj;
        String str = productModel.f67909a;
        ProductId.Companion companion = ProductId.INSTANCE;
        if (!Intrinsics.c(this.f67909a, str) || !Intrinsics.c(this.f67910b, productModel.f67910b)) {
            return false;
        }
        String str2 = productModel.f67911c;
        SkuId.Companion companion2 = SkuId.INSTANCE;
        return Intrinsics.c(this.f67911c, str2) && Intrinsics.c(this.d, productModel.d) && Intrinsics.c(this.f67912e, productModel.f67912e) && this.f67913f == productModel.f67913f && Intrinsics.c(this.g, productModel.g) && Intrinsics.c(this.f67914h, productModel.f67914h) && Intrinsics.c(this.f67915i, productModel.f67915i) && Intrinsics.c(this.f67916j, productModel.f67916j) && Intrinsics.c(this.f67917k, productModel.f67917k) && Intrinsics.c(this.l, productModel.l) && Intrinsics.c(this.m, productModel.m) && Intrinsics.c(this.n, productModel.n) && this.o == productModel.o && this.p == productModel.p && this.q == productModel.q && Intrinsics.c(this.r, productModel.r) && Intrinsics.c(this.s, productModel.s) && Intrinsics.c(this.t, productModel.t) && Intrinsics.c(this.u, productModel.u) && Intrinsics.c(this.v, productModel.v) && this.w == productModel.w && this.x == productModel.x && this.y == productModel.y && Intrinsics.c(this.z, productModel.z) && Intrinsics.c(this.A, productModel.A) && Intrinsics.c(this.B, productModel.B) && this.C == productModel.C && Intrinsics.c(this.D, productModel.D) && this.E == productModel.E && this.F == productModel.F && Intrinsics.c(this.G, productModel.G) && this.H == productModel.H && Intrinsics.c(this.I, productModel.I) && Intrinsics.c(this.J, productModel.J) && Intrinsics.c(this.K, productModel.K) && Intrinsics.c(this.L, productModel.L) && this.M == productModel.M && Intrinsics.c(this.N, productModel.N);
    }

    public final int hashCode() {
        ProductId.Companion companion = ProductId.INSTANCE;
        int iB = fc.b(this.f67909a.hashCode() * 31, 31, this.f67910b);
        SkuId.Companion companion2 = SkuId.INSTANCE;
        int iB2 = fc.b(fc.b(iB, 31, this.f67911c), 31, this.d);
        String str = this.f67912e;
        int iB3 = o60.b((iB2 + (str == null ? 0 : str.hashCode())) * 31, 31, this.f67913f);
        String str2 = this.g;
        int iA = n00.a((iB3 + (str2 == null ? 0 : str2.hashCode())) * 31, 31, this.f67914h);
        String str3 = this.f67915i;
        int iHashCode = (iA + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f67916j;
        int iB4 = fc.b((iHashCode + (str4 == null ? 0 : str4.hashCode())) * 31, 31, this.f67917k);
        String str5 = this.l;
        int iHashCode2 = (iB4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.m;
        int iHashCode3 = (iHashCode2 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.n;
        int iHashCode4 = (this.r.hashCode() + o60.b(o60.b(o60.b((iHashCode3 + (str7 == null ? 0 : str7.hashCode())) * 31, 31, this.o), 31, this.p), 31, this.q)) * 31;
        Float f2 = this.s;
        int iHashCode5 = (iHashCode4 + (f2 == null ? 0 : f2.hashCode())) * 31;
        String str8 = this.t;
        int iHashCode6 = (iHashCode5 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.u;
        int iHashCode7 = (iHashCode6 + (str9 == null ? 0 : str9.hashCode())) * 31;
        String str10 = this.v;
        int iB5 = o60.b(o60.b(o60.b((iHashCode7 + (str10 == null ? 0 : str10.hashCode())) * 31, 31, this.w), 31, this.x), 31, this.y);
        ProductDimension productDimension = this.z;
        int iHashCode8 = (iB5 + (productDimension == null ? 0 : productDimension.hashCode())) * 31;
        ProductDimension productDimension2 = this.A;
        int iHashCode9 = (iHashCode8 + (productDimension2 == null ? 0 : productDimension2.hashCode())) * 31;
        ProductDimension productDimension3 = this.B;
        int iB6 = o60.b((iHashCode9 + (productDimension3 == null ? 0 : productDimension3.hashCode())) * 31, 31, this.C);
        ProductDisclaimer productDisclaimer = this.D;
        int iB7 = o60.b(o60.b((iB6 + (productDisclaimer == null ? 0 : productDisclaimer.hashCode())) * 31, 31, this.E), 31, this.F);
        String str11 = this.G;
        int iA2 = n00.a(o60.b((iB7 + (str11 == null ? 0 : str11.hashCode())) * 31, 31, this.H), 31, this.I);
        String str12 = this.J;
        int iHashCode10 = (iA2 + (str12 == null ? 0 : str12.hashCode())) * 31;
        String str13 = this.K;
        int iHashCode11 = (iHashCode10 + (str13 == null ? 0 : str13.hashCode())) * 31;
        String str14 = this.L;
        int iHashCode12 = (iHashCode11 + (str14 == null ? 0 : str14.hashCode())) * 31;
        ProductBackground productBackground = this.M;
        return this.N.hashCode() + ((iHashCode12 + (productBackground != null ? productBackground.hashCode() : 0)) * 31);
    }

    public final String toString() {
        ProductId.Companion companion = ProductId.INSTANCE;
        SkuId.Companion companion2 = SkuId.INSTANCE;
        StringBuilder sbS = fc.s("ProductModel(id=", this.f67909a, ", name=", this.f67910b, ", sku=");
        cj.C(sbS, this.f67911c, ", identifierKey=", this.d, ", mainImageUrl=");
        pq0.A(this.f67912e, ", isSellable=", ", formattedPrice=", sbS, this.f67913f);
        d21.z(this.g, ", mediaList=", ", description=", sbS, this.f67914h);
        cj.C(sbS, this.f67915i, ", detailedFeatures=", this.f67916j, ", url=");
        cj.C(sbS, this.f67917k, ", color=", this.l, ", colorIconUrl=");
        cj.C(sbS, this.m, ", size=", this.n, ", isMonogram=");
        fc.y(sbS, this.o, ", isEngraving=", this.p, ", locateInStore=");
        sbS.append(this.q);
        sbS.append(", skuAvailability=");
        sbS.append(this.r);
        sbS.append(", priceValue=");
        sbS.append(this.s);
        sbS.append(", currency=");
        sbS.append(this.t);
        sbS.append(", recipeId=");
        cj.C(sbS, this.u, ", fluidProductId=", this.v, ", showARModel=");
        fc.y(sbS, this.w, ", hideAddToWishlist=", this.x, ", buyOnWebsiteOnly=");
        sbS.append(this.y);
        sbS.append(", depth=");
        sbS.append(this.z);
        sbS.append(", height=");
        sbS.append(this.A);
        sbS.append(", width=");
        sbS.append(this.B);
        sbS.append(", backOrderDisclaimer=");
        sbS.append(this.C);
        sbS.append(", disclaimer=");
        sbS.append(this.D);
        sbS.append(", isExclusive=");
        fc.y(sbS, this.E, ", backInStock=", this.F, ", caratSize=");
        pq0.A(this.G, ", isDiamond=", ", bundleSkuIds=", sbS, this.H);
        o60.B(", editoCta=", this.J, ", editoDescription=", sbS, this.I);
        cj.C(sbS, this.K, ", editoTitle=", this.L, ", productBackground=");
        sbS.append(this.M);
        sbS.append(", assets=");
        sbS.append(this.N);
        sbS.append(")");
        return sbS.toString();
    }

    public ProductModel(String str, String str2, String str3, String str4, String str5, boolean z, String str6, List list, String str7, String str8, String str9, String str10, String str11, String str12, boolean z2, boolean z3, boolean z4, SkuAvailability skuAvailability, Float f2, String str13, String str14, String str15, boolean z5, boolean z6, boolean z7, ProductDimension productDimension, ProductDimension productDimension2, ProductDimension productDimension3, boolean z8, ProductDisclaimer productDisclaimer, boolean z9, boolean z10, String str16, boolean z11, List list2, String str17, String str18, String str19, ProductBackground productBackground, List list3, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, str5, z, str6, list, str7, str8, str9, str10, str11, str12, z2, z3, z4, skuAvailability, f2, str13, str14, str15, z5, z6, z7, productDimension, productDimension2, productDimension3, z8, productDisclaimer, (i2 & 1073741824) != 0 ? false : z9, (i2 & Integer.MIN_VALUE) != 0 ? false : z10, str16, (i3 & 2) != 0 ? false : z11, list2, str17, str18, str19, productBackground, (i3 & 128) != 0 ? EmptyList.f71768b : list3, null);
    }
}
