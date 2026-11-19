package com.vuitton.android.data.dto.productshort;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetDto;
import com.vuitton.android.data.dto.product.virtualtryon.VirtualTryOnDto;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import defpackage.yp0;
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

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 $2\u00020\u0001:\u0002%$BÇ\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\t\u001a\u00020\b\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0011\u001a\u00020\u0002\u0012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00050\n\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u0012\u0006\u0010\u0018\u001a\u00020\u000f\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0019\u0012\u0006\u0010\u001b\u001a\u00020\u000f\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u001d\u0010\u001eBÕ\u0001\b\u0010\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\u000e\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\n\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u0012\u0006\u0010\u0018\u001a\u00020\u000f\u0012\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019\u0012\u0006\u0010\u001b\u001a\u00020\u000f\u0012\b\u0010\u001c\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\"\u001a\u0004\u0018\u00010!¢\u0006\u0004\b\u001d\u0010#¨\u0006&"}, d2 = {"Lcom/vuitton/android/data/dto/productshort/ProductShortDto;", "", "", b.a.f24015b, "name", "Lcom/vuitton/android/data/dto/common/AssetDto;", "mainAsset", "category", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "", "Lcom/vuitton/android/data/dto/productshort/ProductVariationDto;", "colorVariationList", "Lcom/vuitton/android/data/dto/productshort/ProductShortCharacteristicDto;", "color", "", "showARModel", "type", "assetList", "background", "tag", "launchDate", "Lcom/vuitton/android/data/dto/productshort/ProductShortPriceDto;", "price", "isCustomized", "Lcom/vuitton/android/data/dto/product/virtualtryon/VirtualTryOnDto;", "virtualTryOn", "backInStock", "shareUrl", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetDto;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/data/dto/productshort/ProductShortCharacteristicDto;ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/productshort/ProductShortPriceDto;ZLcom/vuitton/android/data/dto/product/virtualtryon/VirtualTryOnDto;ZLjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetDto;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/data/dto/productshort/ProductShortCharacteristicDto;ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/productshort/ProductShortPriceDto;ZLcom/vuitton/android/data/dto/product/virtualtryon/VirtualTryOnDto;ZLjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ProductShortDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] s;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46637a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46638b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AssetDto f46639c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f46640e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f46641f;
    public final ProductShortCharacteristicDto g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f46642h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f46643i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final List f46644j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f46645k;
    public final String l;
    public final String m;
    public final ProductShortPriceDto n;
    public final boolean o;
    public final VirtualTryOnDto p;
    public final boolean q;
    public final String r;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/productshort/ProductShortDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/productshort/ProductShortDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ProductShortDto> serializer() {
            return ProductShortDto$$serializer.f46646a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        s = new Lazy[]{null, null, null, null, null, LazyKt.a(lazyThreadSafetyMode, new yp0(19)), null, null, null, LazyKt.a(lazyThreadSafetyMode, new yp0(20)), null, null, null, null, null, null, null, null};
    }

    public /* synthetic */ ProductShortDto(int i2, String str, String str2, AssetDto assetDto, String str3, String str4, List list, ProductShortCharacteristicDto productShortCharacteristicDto, boolean z, String str5, List list2, String str6, String str7, String str8, ProductShortPriceDto productShortPriceDto, boolean z2, VirtualTryOnDto virtualTryOnDto, boolean z3, String str9, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        if (82870 != (i2 & 82870)) {
            PluginExceptionsKt.b(i2, 82870, ProductShortDto$$serializer.f46646a.getF19850b());
            throw null;
        }
        if ((i2 & 1) == 0) {
            this.f46637a = null;
        } else {
            this.f46637a = str;
        }
        this.f46638b = str2;
        this.f46639c = assetDto;
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = str3;
        }
        this.f46640e = str4;
        this.f46641f = list;
        if ((i2 & 64) == 0) {
            this.g = null;
        } else {
            this.g = productShortCharacteristicDto;
        }
        this.f46642h = z;
        this.f46643i = str5;
        this.f46644j = list2;
        if ((i2 & 1024) == 0) {
            this.f46645k = null;
        } else {
            this.f46645k = str6;
        }
        if ((i2 & 2048) == 0) {
            this.l = null;
        } else {
            this.l = str7;
        }
        if ((i2 & 4096) == 0) {
            this.m = null;
        } else {
            this.m = str8;
        }
        if ((i2 & 8192) == 0) {
            this.n = null;
        } else {
            this.n = productShortPriceDto;
        }
        this.o = z2;
        if ((32768 & i2) == 0) {
            this.p = null;
        } else {
            this.p = virtualTryOnDto;
        }
        this.q = z3;
        if ((i2 & 131072) == 0) {
            this.r = null;
        } else {
            this.r = str9;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductShortDto)) {
            return false;
        }
        ProductShortDto productShortDto = (ProductShortDto) obj;
        if (!Intrinsics.c(this.f46637a, productShortDto.f46637a) || !Intrinsics.c(this.f46638b, productShortDto.f46638b) || !Intrinsics.c(this.f46639c, productShortDto.f46639c) || !Intrinsics.c(this.d, productShortDto.d)) {
            return false;
        }
        String str = productShortDto.f46640e;
        SkuId.Companion companion = SkuId.INSTANCE;
        return Intrinsics.c(this.f46640e, str) && Intrinsics.c(this.f46641f, productShortDto.f46641f) && Intrinsics.c(this.g, productShortDto.g) && this.f46642h == productShortDto.f46642h && Intrinsics.c(this.f46643i, productShortDto.f46643i) && Intrinsics.c(this.f46644j, productShortDto.f46644j) && Intrinsics.c(this.f46645k, productShortDto.f46645k) && Intrinsics.c(this.l, productShortDto.l) && Intrinsics.c(this.m, productShortDto.m) && Intrinsics.c(this.n, productShortDto.n) && this.o == productShortDto.o && Intrinsics.c(this.p, productShortDto.p) && this.q == productShortDto.q && Intrinsics.c(this.r, productShortDto.r);
    }

    public final int hashCode() {
        String str = this.f46637a;
        int iHashCode = (this.f46639c.hashCode() + fc.b((str == null ? 0 : str.hashCode()) * 31, 31, this.f46638b)) * 31;
        String str2 = this.d;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        SkuId.Companion companion = SkuId.INSTANCE;
        int iA = n00.a(fc.b(iHashCode2, 31, this.f46640e), 31, this.f46641f);
        ProductShortCharacteristicDto productShortCharacteristicDto = this.g;
        int iA2 = n00.a(fc.b(o60.b((iA + (productShortCharacteristicDto == null ? 0 : productShortCharacteristicDto.hashCode())) * 31, 31, this.f46642h), 31, this.f46643i), 31, this.f46644j);
        String str3 = this.f46645k;
        int iHashCode3 = (iA2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.l;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.m;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        ProductShortPriceDto productShortPriceDto = this.n;
        int iB = o60.b((iHashCode5 + (productShortPriceDto == null ? 0 : productShortPriceDto.hashCode())) * 31, 31, this.o);
        VirtualTryOnDto virtualTryOnDto = this.p;
        int iB2 = o60.b((iB + (virtualTryOnDto == null ? 0 : virtualTryOnDto.f46497a.hashCode())) * 31, 31, this.q);
        String str6 = this.r;
        return iB2 + (str6 != null ? str6.hashCode() : 0);
    }

    public final String toString() {
        SkuId.Companion companion = SkuId.INSTANCE;
        StringBuilder sbS = fc.s("ProductShortDto(id=", this.f46637a, ", name=", this.f46638b, ", mainAsset=");
        sbS.append(this.f46639c);
        sbS.append(", category=");
        sbS.append(this.d);
        sbS.append(", sku=");
        d21.z(this.f46640e, ", colorVariationList=", ", color=", sbS, this.f46641f);
        sbS.append(this.g);
        sbS.append(", showARModel=");
        sbS.append(this.f46642h);
        sbS.append(", type=");
        d21.z(this.f46643i, ", assetList=", ", background=", sbS, this.f46644j);
        cj.C(sbS, this.f46645k, ", tag=", this.l, ", launchDate=");
        sbS.append(this.m);
        sbS.append(", price=");
        sbS.append(this.n);
        sbS.append(", isCustomized=");
        sbS.append(this.o);
        sbS.append(", virtualTryOn=");
        sbS.append(this.p);
        sbS.append(", backInStock=");
        sbS.append(this.q);
        sbS.append(", shareUrl=");
        sbS.append(this.r);
        sbS.append(")");
        return sbS.toString();
    }

    public ProductShortDto(String str, String str2, AssetDto assetDto, String str3, String str4, List list, ProductShortCharacteristicDto productShortCharacteristicDto, boolean z, String str5, List list2, String str6, String str7, String str8, ProductShortPriceDto productShortPriceDto, boolean z2, VirtualTryOnDto virtualTryOnDto, boolean z3, String str9, DefaultConstructorMarker defaultConstructorMarker) {
        str2.getClass();
        assetDto.getClass();
        str4.getClass();
        list.getClass();
        str5.getClass();
        list2.getClass();
        this.f46637a = str;
        this.f46638b = str2;
        this.f46639c = assetDto;
        this.d = str3;
        this.f46640e = str4;
        this.f46641f = list;
        this.g = productShortCharacteristicDto;
        this.f46642h = z;
        this.f46643i = str5;
        this.f46644j = list2;
        this.f46645k = str6;
        this.l = str7;
        this.m = str8;
        this.n = productShortPriceDto;
        this.o = z2;
        this.p = virtualTryOnDto;
        this.q = z3;
        this.r = str9;
    }

    public /* synthetic */ ProductShortDto(String str, String str2, AssetDto assetDto, String str3, String str4, List list, ProductShortCharacteristicDto productShortCharacteristicDto, boolean z, String str5, List list2, String str6, String str7, String str8, ProductShortPriceDto productShortPriceDto, boolean z2, VirtualTryOnDto virtualTryOnDto, boolean z3, String str9, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, str2, assetDto, (i2 & 8) != 0 ? null : str3, str4, list, (i2 & 64) != 0 ? null : productShortCharacteristicDto, z, str5, list2, (i2 & 1024) != 0 ? null : str6, (i2 & 2048) != 0 ? null : str7, (i2 & 4096) != 0 ? null : str8, (i2 & 8192) != 0 ? null : productShortPriceDto, z2, (32768 & i2) != 0 ? null : virtualTryOnDto, z3, (i2 & 131072) != 0 ? null : str9, null);
    }
}
