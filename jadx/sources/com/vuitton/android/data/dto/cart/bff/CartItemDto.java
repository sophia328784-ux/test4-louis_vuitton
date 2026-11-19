package com.vuitton.android.data.dto.cart.bff;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.pdp.ProductDisclaimerDto;
import com.vuitton.foundation.model.domain.model.product.ProductId;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.fj;
import defpackage.o60;
import defpackage.pq0;
import defpackage.tr;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import net.rtccloud.sdk.internal.Constants;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 )2\u00020\u0001:\u0002*)B\u0085\u0002\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u000e\u001a\u00020\r\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010\u0012\b\b\u0002\u0010\u0013\u001a\u00020\r\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001a\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001d\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u001f\u0012\b\b\u0002\u0010!\u001a\u00020\r\u0012\b\b\u0002\u0010\"\u001a\u00020\r¢\u0006\u0004\b#\u0010$Bó\u0001\b\u0010\u0012\u0006\u0010%\u001a\u00020\u0014\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010\u0012\u0006\u0010\u0013\u001a\u00020\r\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\r\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\r\u0012\b\u0010\u001b\u001a\u0004\u0018\u00010\u001a\u0012\b\u0010\u001c\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u001e\u001a\u0004\u0018\u00010\u001d\u0012\b\u0010 \u001a\u0004\u0018\u00010\u001f\u0012\u0006\u0010!\u001a\u00020\r\u0012\u0006\u0010\"\u001a\u00020\r\u0012\b\u0010'\u001a\u0004\u0018\u00010&¢\u0006\u0004\b#\u0010(¨\u0006+"}, d2 = {"Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;", "", "", "identifier", "Lcom/vuitton/foundation/model/domain/model/product/ProductId;", "productId", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "skuIdentifier", "name", "description", "color", "size", "material", "", "isExclusive", "mainImage", "", "Lcom/vuitton/android/data/dto/cart/bff/ImageUrlDto;", "images", "isAvailable", "", "quantity", "Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;", "priceInformation", "isBackOrder", "isPreOrder", "Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;", "disclaimerDto", "commercialTag", "Lcom/vuitton/android/data/dto/cart/bff/BundleDto;", "bundleDto", "Lcom/vuitton/android/data/dto/cart/bff/CartItemCustomizationDto;", "customization", "isQuantityEditable", "isWishlistEligible", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;ZILcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/cart/bff/BundleDto;Lcom/vuitton/android/data/dto/cart/bff/CartItemCustomizationDto;ZZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;ZILcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/cart/bff/BundleDto;Lcom/vuitton/android/data/dto/cart/bff/CartItemCustomizationDto;ZZLkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class CartItemDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] w = {null, null, null, null, null, null, null, null, null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new fj(8)), null, null, null, null, null, null, null, null, null, null, null};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f44987a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f44988b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f44989c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f44990e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f44991f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f44992h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f44993i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f44994j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final List f44995k;
    public final boolean l;
    public final int m;
    public final CartPriceInformationDto n;
    public final Boolean o;
    public final Boolean p;
    public final ProductDisclaimerDto q;
    public final String r;
    public final BundleDto s;
    public final CartItemCustomizationDto t;
    public final boolean u;
    public final boolean v;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/cart/bff/CartItemDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<CartItemDto> serializer() {
            return CartItemDto$$serializer.f44996a;
        }
    }

    public /* synthetic */ CartItemDto(int i2, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, boolean z, String str9, List list, boolean z2, int i3, CartPriceInformationDto cartPriceInformationDto, Boolean bool, Boolean bool2, ProductDisclaimerDto productDisclaimerDto, String str10, BundleDto bundleDto, CartItemCustomizationDto cartItemCustomizationDto, boolean z3, boolean z4, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        if (12288 != (i2 & Constants.MeetingPointEvent.CONFIG)) {
            PluginExceptionsKt.b(i2, Constants.MeetingPointEvent.CONFIG, CartItemDto$$serializer.f44996a.getF19838b());
            throw null;
        }
        if ((i2 & 1) == 0) {
            this.f44987a = null;
        } else {
            this.f44987a = str;
        }
        if ((i2 & 2) == 0) {
            this.f44988b = null;
        } else {
            this.f44988b = str2;
        }
        if ((i2 & 4) == 0) {
            this.f44989c = null;
        } else {
            this.f44989c = str3;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = str4;
        }
        if ((i2 & 16) == 0) {
            this.f44990e = null;
        } else {
            this.f44990e = str5;
        }
        if ((i2 & 32) == 0) {
            this.f44991f = null;
        } else {
            this.f44991f = str6;
        }
        if ((i2 & 64) == 0) {
            this.g = null;
        } else {
            this.g = str7;
        }
        if ((i2 & 128) == 0) {
            this.f44992h = null;
        } else {
            this.f44992h = str8;
        }
        if ((i2 & 256) == 0) {
            this.f44993i = false;
        } else {
            this.f44993i = z;
        }
        if ((i2 & 512) == 0) {
            this.f44994j = null;
        } else {
            this.f44994j = str9;
        }
        if ((i2 & 1024) == 0) {
            this.f44995k = null;
        } else {
            this.f44995k = list;
        }
        if ((i2 & 2048) == 0) {
            this.l = false;
        } else {
            this.l = z2;
        }
        this.m = i3;
        this.n = cartPriceInformationDto;
        if ((i2 & 16384) == 0) {
            this.o = null;
        } else {
            this.o = bool;
        }
        if ((32768 & i2) == 0) {
            this.p = null;
        } else {
            this.p = bool2;
        }
        if ((65536 & i2) == 0) {
            this.q = null;
        } else {
            this.q = productDisclaimerDto;
        }
        if ((131072 & i2) == 0) {
            this.r = null;
        } else {
            this.r = str10;
        }
        if ((262144 & i2) == 0) {
            this.s = null;
        } else {
            this.s = bundleDto;
        }
        if ((524288 & i2) == 0) {
            this.t = null;
        } else {
            this.t = cartItemCustomizationDto;
        }
        if ((1048576 & i2) == 0) {
            this.u = false;
        } else {
            this.u = z3;
        }
        this.v = (i2 & PKIFailureInfo.badSenderNonce) == 0 ? true : z4;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0021  */
    /* JADX WARN: Code duplicated, block: B:25:0x0039  */
    public final boolean equals(Object obj) {
        boolean zC;
        boolean zC2;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CartItemDto)) {
            return false;
        }
        CartItemDto cartItemDto = (CartItemDto) obj;
        if (!Intrinsics.c(this.f44987a, cartItemDto.f44987a)) {
            return false;
        }
        String str = cartItemDto.f44988b;
        String str2 = this.f44988b;
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
        if (!zC) {
            return false;
        }
        String str3 = cartItemDto.f44989c;
        String str4 = this.f44989c;
        if (str4 == null) {
            if (str3 == null) {
                zC2 = true;
            } else {
                zC2 = false;
            }
        } else if (str3 == null) {
            zC2 = false;
        } else {
            SkuId.Companion companion2 = SkuId.INSTANCE;
            zC2 = Intrinsics.c(str4, str3);
        }
        return zC2 && Intrinsics.c(this.d, cartItemDto.d) && Intrinsics.c(this.f44990e, cartItemDto.f44990e) && Intrinsics.c(this.f44991f, cartItemDto.f44991f) && Intrinsics.c(this.g, cartItemDto.g) && Intrinsics.c(this.f44992h, cartItemDto.f44992h) && this.f44993i == cartItemDto.f44993i && Intrinsics.c(this.f44994j, cartItemDto.f44994j) && Intrinsics.c(this.f44995k, cartItemDto.f44995k) && this.l == cartItemDto.l && this.m == cartItemDto.m && Intrinsics.c(this.n, cartItemDto.n) && Intrinsics.c(this.o, cartItemDto.o) && Intrinsics.c(this.p, cartItemDto.p) && Intrinsics.c(this.q, cartItemDto.q) && Intrinsics.c(this.r, cartItemDto.r) && Intrinsics.c(this.s, cartItemDto.s) && Intrinsics.c(this.t, cartItemDto.t) && this.u == cartItemDto.u && this.v == cartItemDto.v;
    }

    public final int hashCode() {
        int iHashCode;
        int iHashCode2;
        String str = this.f44987a;
        int iHashCode3 = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f44988b;
        if (str2 == null) {
            iHashCode = 0;
        } else {
            ProductId.Companion companion = ProductId.INSTANCE;
            iHashCode = str2.hashCode();
        }
        int i2 = (iHashCode3 + iHashCode) * 31;
        String str3 = this.f44989c;
        if (str3 == null) {
            iHashCode2 = 0;
        } else {
            SkuId.Companion companion2 = SkuId.INSTANCE;
            iHashCode2 = str3.hashCode();
        }
        int i3 = (i2 + iHashCode2) * 31;
        String str4 = this.d;
        int iHashCode4 = (i3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.f44990e;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.f44991f;
        int iHashCode6 = (iHashCode5 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.g;
        int iHashCode7 = (iHashCode6 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.f44992h;
        int iB = o60.b((iHashCode7 + (str8 == null ? 0 : str8.hashCode())) * 31, 31, this.f44993i);
        String str9 = this.f44994j;
        int iHashCode8 = (iB + (str9 == null ? 0 : str9.hashCode())) * 31;
        List list = this.f44995k;
        int iHashCode9 = (this.n.hashCode() + tr.b(this.m, o60.b((iHashCode8 + (list == null ? 0 : list.hashCode())) * 31, 31, this.l), 31)) * 31;
        Boolean bool = this.o;
        int iHashCode10 = (iHashCode9 + (bool == null ? 0 : bool.hashCode())) * 31;
        Boolean bool2 = this.p;
        int iHashCode11 = (iHashCode10 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        ProductDisclaimerDto productDisclaimerDto = this.q;
        int iHashCode12 = (iHashCode11 + (productDisclaimerDto == null ? 0 : productDisclaimerDto.hashCode())) * 31;
        String str10 = this.r;
        int iHashCode13 = (iHashCode12 + (str10 == null ? 0 : str10.hashCode())) * 31;
        BundleDto bundleDto = this.s;
        int iHashCode14 = (iHashCode13 + (bundleDto == null ? 0 : bundleDto.hashCode())) * 31;
        CartItemCustomizationDto cartItemCustomizationDto = this.t;
        return Boolean.hashCode(this.v) + o60.b((iHashCode14 + (cartItemCustomizationDto != null ? cartItemCustomizationDto.f44985a.hashCode() : 0)) * 31, 31, this.u);
    }

    public final String toString() {
        String str = "null";
        String str2 = this.f44988b;
        if (str2 == null) {
            str2 = "null";
        } else {
            ProductId.Companion companion = ProductId.INSTANCE;
        }
        String str3 = this.f44989c;
        if (str3 != null) {
            SkuId.Companion companion2 = SkuId.INSTANCE;
            str = str3;
        }
        StringBuilder sbS = fc.s("CartItemDto(identifier=", this.f44987a, ", productId=", str2, ", skuIdentifier=");
        cj.C(sbS, str, ", name=", this.d, ", description=");
        cj.C(sbS, this.f44990e, ", color=", this.f44991f, ", size=");
        cj.C(sbS, this.g, ", material=", this.f44992h, ", isExclusive=");
        cj.A(", mainImage=", this.f44994j, ", images=", sbS, this.f44993i);
        sbS.append(this.f44995k);
        sbS.append(", isAvailable=");
        sbS.append(this.l);
        sbS.append(", quantity=");
        sbS.append(this.m);
        sbS.append(", priceInformation=");
        sbS.append(this.n);
        sbS.append(", isBackOrder=");
        d21.B(sbS, this.o, ", isPreOrder=", this.p, ", disclaimerDto=");
        sbS.append(this.q);
        sbS.append(", commercialTag=");
        sbS.append(this.r);
        sbS.append(", bundleDto=");
        sbS.append(this.s);
        sbS.append(", customization=");
        sbS.append(this.t);
        sbS.append(", isQuantityEditable=");
        return pq0.p(sbS, this.u, ", isWishlistEligible=", this.v, ")");
    }

    public CartItemDto(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, boolean z, String str9, List list, boolean z2, int i2, CartPriceInformationDto cartPriceInformationDto, Boolean bool, Boolean bool2, ProductDisclaimerDto productDisclaimerDto, String str10, BundleDto bundleDto, CartItemCustomizationDto cartItemCustomizationDto, boolean z3, boolean z4, DefaultConstructorMarker defaultConstructorMarker) {
        cartPriceInformationDto.getClass();
        this.f44987a = str;
        this.f44988b = str2;
        this.f44989c = str3;
        this.d = str4;
        this.f44990e = str5;
        this.f44991f = str6;
        this.g = str7;
        this.f44992h = str8;
        this.f44993i = z;
        this.f44994j = str9;
        this.f44995k = list;
        this.l = z2;
        this.m = i2;
        this.n = cartPriceInformationDto;
        this.o = bool;
        this.p = bool2;
        this.q = productDisclaimerDto;
        this.r = str10;
        this.s = bundleDto;
        this.t = cartItemCustomizationDto;
        this.u = z3;
        this.v = z4;
    }

    public /* synthetic */ CartItemDto(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, boolean z, String str9, List list, boolean z2, int i2, CartPriceInformationDto cartPriceInformationDto, Boolean bool, Boolean bool2, ProductDisclaimerDto productDisclaimerDto, String str10, BundleDto bundleDto, CartItemCustomizationDto cartItemCustomizationDto, boolean z3, boolean z4, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? null : str, (i3 & 2) != 0 ? null : str2, (i3 & 4) != 0 ? null : str3, (i3 & 8) != 0 ? null : str4, (i3 & 16) != 0 ? null : str5, (i3 & 32) != 0 ? null : str6, (i3 & 64) != 0 ? null : str7, (i3 & 128) != 0 ? null : str8, (i3 & 256) != 0 ? false : z, (i3 & 512) != 0 ? null : str9, (i3 & 1024) != 0 ? null : list, (i3 & 2048) != 0 ? false : z2, i2, cartPriceInformationDto, (i3 & 16384) != 0 ? null : bool, (32768 & i3) != 0 ? null : bool2, (65536 & i3) != 0 ? null : productDisclaimerDto, (131072 & i3) != 0 ? null : str10, (262144 & i3) != 0 ? null : bundleDto, (524288 & i3) != 0 ? null : cartItemCustomizationDto, (1048576 & i3) != 0 ? false : z3, (i3 & PKIFailureInfo.badSenderNonce) != 0 ? true : z4, null);
    }
}
