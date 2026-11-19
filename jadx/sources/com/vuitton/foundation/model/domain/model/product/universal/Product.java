package com.vuitton.foundation.model.domain.model.product.universal;

import com.vuitton.foundation.model.domain.model.product.ProductDisclaimer;
import com.vuitton.foundation.model.domain.model.product.ProductId;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.product.virtualtryon.VirtualTryOn;
import defpackage.a;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000¨\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001Bç\u0004\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\u0010\b\u0002\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011\u0012\u0010\b\u0002\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0011\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0018\u0010\u001b\u001a\u0014\u0012\u0004\u0012\u00020\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001a0\u00110\u0018\u0012\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001c0\u0011\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u0012\u0010\b\u0002\u0010 \u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0011\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010!\u0012\n\b\u0002\u0010$\u001a\u0004\u0018\u00010#\u0012\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010*\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010+\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010,\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010-\u001a\u00020\u0004\u0012\n\b\u0002\u0010/\u001a\u0004\u0018\u00010.\u0012\n\b\u0002\u00100\u001a\u0004\u0018\u00010.\u0012\n\b\u0002\u00101\u001a\u0004\u0018\u00010.\u0012\u0006\u00103\u001a\u000202\u0012\u0006\u00104\u001a\u000202\u0012\u0006\u00105\u001a\u000202\u0012\u0006\u00106\u001a\u000202\u0012\u0006\u00107\u001a\u000202\u0012\u0006\u00108\u001a\u000202\u0012\u0006\u00109\u001a\u000202\u0012\u0006\u0010:\u001a\u000202\u0012\u0006\u0010;\u001a\u000202\u0012\u0006\u0010<\u001a\u000202\u0012\u0006\u0010>\u001a\u00020=\u0012\b\u0010@\u001a\u0004\u0018\u00010?\u0012\u000e\b\u0002\u0010B\u001a\b\u0012\u0004\u0012\u00020A0\u0011\u0012\n\b\u0002\u0010C\u001a\u0004\u0018\u00010A\u0012\n\b\u0002\u0010D\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010E\u001a\u0004\u0018\u00010\u0004\u0012\u0010\b\u0002\u0010G\u001a\n\u0012\u0004\u0012\u00020F\u0018\u00010\u0011\u0012\u000e\b\u0002\u0010I\u001a\b\u0012\u0004\u0012\u00020H0\u0011\u0012\u000e\b\u0002\u0010K\u001a\b\u0012\u0004\u0012\u00020J0\u0011\u0012\n\b\u0002\u0010L\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010M\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010N\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010O\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\bP\u0010Q¨\u0006R"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/universal/Product;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "", "name", "Lcom/vuitton/foundation/model/domain/model/product/universal/PackagingVariation;", "packagingVariation", "commercialTag", "skuKey", "Lcom/vuitton/foundation/model/domain/model/product/ProductId;", "identifier", "Lcom/vuitton/foundation/model/domain/model/product/universal/ProductType;", "type", "description", "Lcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;", "backupDisclaimer", "", "Lcom/vuitton/foundation/model/domain/model/product/universal/PanelInfo;", "panelInfos", "Lcom/vuitton/foundation/model/domain/model/product/universal/EnvironmentInfo;", "environmentInfo", "Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;", "background", "", "Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;", "Lcom/vuitton/foundation/model/domain/model/product/universal/Variation;", "variations", "Lcom/vuitton/foundation/model/domain/model/product/ProductMedia;", "medias", "Lcom/vuitton/foundation/model/domain/model/product/universal/DetailedFeature;", "detailedFeature", "bundleSkuIds", "Lcom/vuitton/foundation/model/domain/model/product/virtualtryon/VirtualTryOn;", "virtualTryOn", "Lcom/vuitton/foundation/model/domain/model/product/universal/Edito;", "edito", "color", "colorIconUrl", "colorFamily", "finish", "material", "materialIconUrl", "size", "carat", "webUrl", "Lcom/vuitton/foundation/model/domain/model/product/universal/Size;", "width", "depth", "height", "", "isSizeGuideEnabled", "isBackInStock", "isWishlistable", "isARAvailable", "isLocateInStore", "isDiamond", "isShadeFinderEnabled", "isBundle", "isTrunkSpeaker", "isHorizonSpeaker", "Lcom/vuitton/foundation/model/domain/model/product/universal/SellableStatus;", "sellableStatus", "Lcom/vuitton/foundation/model/domain/model/product/universal/ProductCustomization;", "customization", "Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProduct;", "assets", "mainAsset", "launchDate", "language", "Lcom/vuitton/foundation/model/domain/model/product/universal/Highlight;", "highlights", "Lcom/vuitton/foundation/model/domain/model/product/universal/EditorialContent;", "editorialContents", "Lcom/vuitton/foundation/model/domain/model/product/universal/ModelSizeVariation;", "modelSizeVariationList", "contextualSizingImageUrl", "shareUrl", "sizeGuideId", "fitInformationMention", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/PackagingVariation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductType;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;Ljava/util/List;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;Ljava/util/Map;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/product/universal/DetailedFeature;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/product/virtualtryon/VirtualTryOn;Lcom/vuitton/foundation/model/domain/model/product/universal/Edito;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/Size;Lcom/vuitton/foundation/model/domain/model/product/universal/Size;Lcom/vuitton/foundation/model/domain/model/product/universal/Size;ZZZZZZZZZZLcom/vuitton/foundation/model/domain/model/product/universal/SellableStatus;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductCustomization;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProduct;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Product {
    public final String A;
    public final Size B;
    public final Size C;
    public final Size D;
    public final boolean E;
    public final boolean F;
    public final boolean G;
    public final boolean H;
    public final boolean I;
    public final boolean J;
    public final boolean K;
    public final boolean L;
    public final boolean M;
    public final boolean N;
    public final SellableStatus O;
    public final ProductCustomization P;
    public final List Q;
    public final DigitalAssetProduct R;
    public final String S;
    public final String T;
    public final List U;
    public final List V;
    public final List W;
    public final String X;
    public final String Y;
    public final String Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f68011a;
    public final String a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f68012b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final PackagingVariation f68013c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f68014e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f68015f;
    public final ProductType g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f68016h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ProductDisclaimer f68017i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final List f68018j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final List f68019k;
    public final ProductBackground l;
    public final Map m;
    public final List n;
    public final DetailedFeature o;
    public final List p;
    public final VirtualTryOn q;
    public final Edito r;
    public final String s;
    public final String t;
    public final String u;
    public final String v;
    public final String w;
    public final String x;
    public final String y;
    public final String z;

    public Product(String str, String str2, PackagingVariation packagingVariation, String str3, String str4, String str5, ProductType productType, String str6, ProductDisclaimer productDisclaimer, List list, List list2, ProductBackground productBackground, Map map, List list3, DetailedFeature detailedFeature, List list4, VirtualTryOn virtualTryOn, Edito edito, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, Size size, Size size2, Size size3, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, SellableStatus sellableStatus, ProductCustomization productCustomization, List list5, DigitalAssetProduct digitalAssetProduct, String str16, String str17, List list6, List list7, List list8, String str18, String str19, String str20, String str21, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i2 & 4) != 0 ? null : packagingVariation, (i2 & 8) != 0 ? null : str3, str4, str5, productType, (i2 & 128) != 0 ? null : str6, (i2 & 256) != 0 ? null : productDisclaimer, (i2 & 512) != 0 ? null : list, (i2 & 1024) != 0 ? null : list2, productBackground, map, list3, detailedFeature, (i2 & 32768) != 0 ? null : list4, (i2 & 65536) != 0 ? null : virtualTryOn, (i2 & 131072) != 0 ? null : edito, (i2 & 262144) != 0 ? null : str7, (524288 & i2) != 0 ? null : str8, (1048576 & i2) != 0 ? null : str9, (2097152 & i2) != 0 ? null : str10, (4194304 & i2) != 0 ? null : str11, (8388608 & i2) != 0 ? null : str12, (16777216 & i2) != 0 ? null : str13, (33554432 & i2) != 0 ? null : str14, str15, (134217728 & i2) != 0 ? null : size, (268435456 & i2) != 0 ? null : size2, (i2 & PKIFailureInfo.duplicateCertReq) != 0 ? null : size3, z, z2, z3, z4, z5, z6, z7, z8, z9, z10, sellableStatus, productCustomization, (i3 & 1024) != 0 ? EmptyList.f71768b : list5, (i3 & 2048) != 0 ? null : digitalAssetProduct, (i3 & 4096) != 0 ? null : str16, (i3 & 8192) != 0 ? null : str17, (i3 & 16384) != 0 ? null : list6, (i3 & 32768) != 0 ? EmptyList.f71768b : list7, (i3 & 65536) != 0 ? EmptyList.f71768b : list8, (i3 & 131072) != 0 ? null : str18, (i3 & 262144) != 0 ? null : str19, str20, str21, null);
    }

    public static Product a(Product product, boolean z, boolean z2) {
        String str = product.f68011a;
        String str2 = product.f68012b;
        PackagingVariation packagingVariation = product.f68013c;
        String str3 = product.d;
        String str4 = product.f68014e;
        String str5 = product.f68015f;
        ProductType productType = product.g;
        String str6 = product.f68016h;
        ProductDisclaimer productDisclaimer = product.f68017i;
        List list = product.f68018j;
        List list2 = product.f68019k;
        ProductBackground productBackground = product.l;
        Map map = product.m;
        List list3 = product.n;
        DetailedFeature detailedFeature = product.o;
        List list4 = product.p;
        VirtualTryOn virtualTryOn = product.q;
        Edito edito = product.r;
        String str7 = product.s;
        String str8 = product.t;
        String str9 = product.u;
        String str10 = product.v;
        String str11 = product.w;
        String str12 = product.x;
        String str13 = product.y;
        String str14 = product.z;
        String str15 = product.A;
        Size size = product.B;
        Size size2 = product.C;
        Size size3 = product.D;
        boolean z3 = product.E;
        boolean z4 = product.F;
        boolean z5 = product.G;
        boolean z6 = product.H;
        boolean z7 = product.I;
        boolean z8 = product.J;
        boolean z9 = product.K;
        boolean z10 = product.L;
        SellableStatus sellableStatus = product.O;
        ProductCustomization productCustomization = product.P;
        List list5 = product.Q;
        DigitalAssetProduct digitalAssetProduct = product.R;
        String str16 = product.S;
        String str17 = product.T;
        List list6 = product.U;
        List list7 = product.V;
        List list8 = product.W;
        String str18 = product.X;
        String str19 = product.Y;
        String str20 = product.Z;
        String str21 = product.a0;
        product.getClass();
        str.getClass();
        str2.getClass();
        str5.getClass();
        productType.getClass();
        productBackground.getClass();
        map.getClass();
        list3.getClass();
        detailedFeature.getClass();
        str15.getClass();
        sellableStatus.getClass();
        list5.getClass();
        list7.getClass();
        list8.getClass();
        return new Product(str, str2, packagingVariation, str3, str4, str5, productType, str6, productDisclaimer, list, list2, productBackground, map, list3, detailedFeature, list4, virtualTryOn, edito, str7, str8, str9, str10, str11, str12, str13, str14, str15, size, size2, size3, z3, z4, z5, z6, z7, z8, z9, z10, z, z2, sellableStatus, productCustomization, list5, digitalAssetProduct, str16, str17, list6, list7, list8, str18, str19, str20, str21, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Product)) {
            return false;
        }
        Product product = (Product) obj;
        String str = product.f68011a;
        SkuId.Companion companion = SkuId.INSTANCE;
        if (!Intrinsics.c(this.f68011a, str) || !Intrinsics.c(this.f68012b, product.f68012b) || this.f68013c != product.f68013c || !Intrinsics.c(this.d, product.d) || !Intrinsics.c(this.f68014e, product.f68014e)) {
            return false;
        }
        String str2 = product.f68015f;
        ProductId.Companion companion2 = ProductId.INSTANCE;
        return Intrinsics.c(this.f68015f, str2) && this.g == product.g && Intrinsics.c(this.f68016h, product.f68016h) && Intrinsics.c(this.f68017i, product.f68017i) && Intrinsics.c(this.f68018j, product.f68018j) && Intrinsics.c(this.f68019k, product.f68019k) && this.l == product.l && Intrinsics.c(this.m, product.m) && Intrinsics.c(this.n, product.n) && Intrinsics.c(this.o, product.o) && Intrinsics.c(this.p, product.p) && Intrinsics.c(this.q, product.q) && Intrinsics.c(this.r, product.r) && Intrinsics.c(this.s, product.s) && Intrinsics.c(this.t, product.t) && Intrinsics.c(this.u, product.u) && Intrinsics.c(this.v, product.v) && Intrinsics.c(this.w, product.w) && Intrinsics.c(this.x, product.x) && Intrinsics.c(this.y, product.y) && Intrinsics.c(this.z, product.z) && Intrinsics.c(this.A, product.A) && Intrinsics.c(this.B, product.B) && Intrinsics.c(this.C, product.C) && Intrinsics.c(this.D, product.D) && this.E == product.E && this.F == product.F && this.G == product.G && this.H == product.H && this.I == product.I && this.J == product.J && this.K == product.K && this.L == product.L && this.M == product.M && this.N == product.N && Intrinsics.c(this.O, product.O) && Intrinsics.c(this.P, product.P) && Intrinsics.c(this.Q, product.Q) && Intrinsics.c(this.R, product.R) && Intrinsics.c(this.S, product.S) && Intrinsics.c(this.T, product.T) && Intrinsics.c(this.U, product.U) && Intrinsics.c(this.V, product.V) && Intrinsics.c(this.W, product.W) && Intrinsics.c(this.X, product.X) && Intrinsics.c(this.Y, product.Y) && Intrinsics.c(this.Z, product.Z) && Intrinsics.c(this.a0, product.a0);
    }

    public final int hashCode() {
        SkuId.Companion companion = SkuId.INSTANCE;
        int iB = fc.b(this.f68011a.hashCode() * 31, 31, this.f68012b);
        PackagingVariation packagingVariation = this.f68013c;
        int iHashCode = (iB + (packagingVariation == null ? 0 : packagingVariation.hashCode())) * 31;
        String str = this.d;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f68014e;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        ProductId.Companion companion2 = ProductId.INSTANCE;
        int iHashCode4 = (this.g.hashCode() + fc.b(iHashCode3, 31, this.f68015f)) * 31;
        String str3 = this.f68016h;
        int iHashCode5 = (iHashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
        ProductDisclaimer productDisclaimer = this.f68017i;
        int iHashCode6 = (iHashCode5 + (productDisclaimer == null ? 0 : productDisclaimer.hashCode())) * 31;
        List list = this.f68018j;
        int iHashCode7 = (iHashCode6 + (list == null ? 0 : list.hashCode())) * 31;
        List list2 = this.f68019k;
        int iHashCode8 = (this.o.hashCode() + n00.a((this.m.hashCode() + ((this.l.hashCode() + ((iHashCode7 + (list2 == null ? 0 : list2.hashCode())) * 31)) * 31)) * 31, 31, this.n)) * 31;
        List list3 = this.p;
        int iHashCode9 = (iHashCode8 + (list3 == null ? 0 : list3.hashCode())) * 31;
        VirtualTryOn virtualTryOn = this.q;
        int iHashCode10 = (iHashCode9 + (virtualTryOn == null ? 0 : virtualTryOn.f68036a.hashCode())) * 31;
        Edito edito = this.r;
        int iHashCode11 = (iHashCode10 + (edito == null ? 0 : edito.hashCode())) * 31;
        String str4 = this.s;
        int iHashCode12 = (iHashCode11 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.t;
        int iHashCode13 = (iHashCode12 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.u;
        int iHashCode14 = (iHashCode13 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.v;
        int iHashCode15 = (iHashCode14 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.w;
        int iHashCode16 = (iHashCode15 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.x;
        int iHashCode17 = (iHashCode16 + (str9 == null ? 0 : str9.hashCode())) * 31;
        String str10 = this.y;
        int iHashCode18 = (iHashCode17 + (str10 == null ? 0 : str10.hashCode())) * 31;
        String str11 = this.z;
        int iB2 = fc.b((iHashCode18 + (str11 == null ? 0 : str11.hashCode())) * 31, 31, this.A);
        Size size = this.B;
        int iHashCode19 = (iB2 + (size == null ? 0 : size.hashCode())) * 31;
        Size size2 = this.C;
        int iHashCode20 = (iHashCode19 + (size2 == null ? 0 : size2.hashCode())) * 31;
        Size size3 = this.D;
        int iHashCode21 = (this.O.hashCode() + o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b((iHashCode20 + (size3 == null ? 0 : size3.hashCode())) * 31, 31, this.E), 31, this.F), 31, this.G), 31, this.H), 31, this.I), 31, this.J), 31, this.K), 31, this.L), 31, this.M), 31, this.N)) * 31;
        ProductCustomization productCustomization = this.P;
        int iA = n00.a((iHashCode21 + (productCustomization == null ? 0 : productCustomization.hashCode())) * 31, 31, this.Q);
        DigitalAssetProduct digitalAssetProduct = this.R;
        int iHashCode22 = (iA + (digitalAssetProduct == null ? 0 : digitalAssetProduct.hashCode())) * 31;
        String str12 = this.S;
        int iHashCode23 = (iHashCode22 + (str12 == null ? 0 : str12.hashCode())) * 31;
        String str13 = this.T;
        int iHashCode24 = (iHashCode23 + (str13 == null ? 0 : str13.hashCode())) * 31;
        List list4 = this.U;
        int iA2 = n00.a(n00.a((iHashCode24 + (list4 == null ? 0 : list4.hashCode())) * 31, 31, this.V), 31, this.W);
        String str14 = this.X;
        int iHashCode25 = (iA2 + (str14 == null ? 0 : str14.hashCode())) * 31;
        String str15 = this.Y;
        int iHashCode26 = (iHashCode25 + (str15 == null ? 0 : str15.hashCode())) * 31;
        String str16 = this.Z;
        int iHashCode27 = (iHashCode26 + (str16 == null ? 0 : str16.hashCode())) * 31;
        String str17 = this.a0;
        return iHashCode27 + (str17 != null ? str17.hashCode() : 0);
    }

    public final String toString() {
        SkuId.Companion companion = SkuId.INSTANCE;
        ProductId.Companion companion2 = ProductId.INSTANCE;
        StringBuilder sbS = fc.s("Product(sku=", this.f68011a, ", name=", this.f68012b, ", packagingVariation=");
        sbS.append(this.f68013c);
        sbS.append(", commercialTag=");
        sbS.append(this.d);
        sbS.append(", skuKey=");
        cj.C(sbS, this.f68014e, ", identifier=", this.f68015f, ", type=");
        sbS.append(this.g);
        sbS.append(", description=");
        sbS.append(this.f68016h);
        sbS.append(", backupDisclaimer=");
        sbS.append(this.f68017i);
        sbS.append(", panelInfos=");
        sbS.append(this.f68018j);
        sbS.append(", environmentInfo=");
        sbS.append(this.f68019k);
        sbS.append(", background=");
        sbS.append(this.l);
        sbS.append(", variations=");
        sbS.append(this.m);
        sbS.append(", medias=");
        sbS.append(this.n);
        sbS.append(", detailedFeature=");
        sbS.append(this.o);
        sbS.append(", bundleSkuIds=");
        sbS.append(this.p);
        sbS.append(", virtualTryOn=");
        sbS.append(this.q);
        sbS.append(", edito=");
        sbS.append(this.r);
        sbS.append(", color=");
        cj.C(sbS, this.s, ", colorIconUrl=", this.t, ", colorFamily=");
        cj.C(sbS, this.u, ", finish=", this.v, ", material=");
        cj.C(sbS, this.w, ", materialIconUrl=", this.x, ", size=");
        cj.C(sbS, this.y, ", carat=", this.z, ", webUrl=");
        sbS.append(this.A);
        sbS.append(", width=");
        sbS.append(this.B);
        sbS.append(", depth=");
        sbS.append(this.C);
        sbS.append(", height=");
        sbS.append(this.D);
        sbS.append(", isSizeGuideEnabled=");
        fc.y(sbS, this.E, ", isBackInStock=", this.F, ", isWishlistable=");
        fc.y(sbS, this.G, ", isARAvailable=", this.H, ", isLocateInStore=");
        fc.y(sbS, this.I, ", isDiamond=", this.J, ", isShadeFinderEnabled=");
        fc.y(sbS, this.K, ", isBundle=", this.L, ", isTrunkSpeaker=");
        fc.y(sbS, this.M, ", isHorizonSpeaker=", this.N, ", sellableStatus=");
        sbS.append(this.O);
        sbS.append(", customization=");
        sbS.append(this.P);
        sbS.append(", assets=");
        sbS.append(this.Q);
        sbS.append(", mainAsset=");
        sbS.append(this.R);
        sbS.append(", launchDate=");
        cj.C(sbS, this.S, ", language=", this.T, ", highlights=");
        a.C(sbS, this.U, ", editorialContents=", this.V, ", modelSizeVariationList=");
        o60.B(", contextualSizingImageUrl=", this.X, ", shareUrl=", sbS, this.W);
        cj.C(sbS, this.Y, ", sizeGuideId=", this.Z, ", fitInformationMention=");
        return n00.r(this.a0, ")", sbS);
    }

    public Product(String str, String str2, PackagingVariation packagingVariation, String str3, String str4, String str5, ProductType productType, String str6, ProductDisclaimer productDisclaimer, List list, List list2, ProductBackground productBackground, Map map, List list3, DetailedFeature detailedFeature, List list4, VirtualTryOn virtualTryOn, Edito edito, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, Size size, Size size2, Size size3, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, SellableStatus sellableStatus, ProductCustomization productCustomization, List list5, DigitalAssetProduct digitalAssetProduct, String str16, String str17, List list6, List list7, List list8, String str18, String str19, String str20, String str21, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        str2.getClass();
        str5.getClass();
        productType.getClass();
        productBackground.getClass();
        map.getClass();
        list3.getClass();
        detailedFeature.getClass();
        str15.getClass();
        sellableStatus.getClass();
        list5.getClass();
        list7.getClass();
        list8.getClass();
        this.f68011a = str;
        this.f68012b = str2;
        this.f68013c = packagingVariation;
        this.d = str3;
        this.f68014e = str4;
        this.f68015f = str5;
        this.g = productType;
        this.f68016h = str6;
        this.f68017i = productDisclaimer;
        this.f68018j = list;
        this.f68019k = list2;
        this.l = productBackground;
        this.m = map;
        this.n = list3;
        this.o = detailedFeature;
        this.p = list4;
        this.q = virtualTryOn;
        this.r = edito;
        this.s = str7;
        this.t = str8;
        this.u = str9;
        this.v = str10;
        this.w = str11;
        this.x = str12;
        this.y = str13;
        this.z = str14;
        this.A = str15;
        this.B = size;
        this.C = size2;
        this.D = size3;
        this.E = z;
        this.F = z2;
        this.G = z3;
        this.H = z4;
        this.I = z5;
        this.J = z6;
        this.K = z7;
        this.L = z8;
        this.M = z9;
        this.N = z10;
        this.O = sellableStatus;
        this.P = productCustomization;
        this.Q = list5;
        this.R = digitalAssetProduct;
        this.S = str16;
        this.T = str17;
        this.U = list6;
        this.V = list7;
        this.W = list8;
        this.X = str18;
        this.Y = str19;
        this.Z = str20;
        this.a0 = str21;
    }
}
