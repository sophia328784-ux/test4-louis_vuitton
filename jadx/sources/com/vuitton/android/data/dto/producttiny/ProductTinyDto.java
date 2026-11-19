package com.vuitton.android.data.dto.producttiny;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetImageDto;
import com.vuitton.android.data.dto.productshort.ProductShortPriceDto;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00142\u00020\u0001:\u0002\u0015\u0014BO\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\r\u0010\u000eBa\b\u0010\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\r\u0010\u0013¨\u0006\u0016"}, d2 = {"Lcom/vuitton/android/data/dto/producttiny/ProductTinyDto;", "", "", b.a.f24015b, "name", "Lcom/vuitton/android/data/dto/common/AssetImageDto;", "image", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "Lcom/vuitton/android/data/dto/productshort/ProductShortPriceDto;", "price", "background", "color", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/productshort/ProductShortPriceDto;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/productshort/ProductShortPriceDto;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ProductTinyDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46664a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46665b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AssetImageDto f46666c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ProductShortPriceDto f46667e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f46668f;
    public final String g;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/producttiny/ProductTinyDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/producttiny/ProductTinyDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ProductTinyDto> serializer() {
            return ProductTinyDto$$serializer.f46669a;
        }
    }

    public /* synthetic */ ProductTinyDto(int i2, String str, String str2, AssetImageDto assetImageDto, String str3, ProductShortPriceDto productShortPriceDto, String str4, String str5, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        if (14 != (i2 & 14)) {
            PluginExceptionsKt.b(i2, 14, ProductTinyDto$$serializer.f46669a.a());
            throw null;
        }
        if ((i2 & 1) == 0) {
            this.f46664a = null;
        } else {
            this.f46664a = str;
        }
        this.f46665b = str2;
        this.f46666c = assetImageDto;
        this.d = str3;
        if ((i2 & 16) == 0) {
            this.f46667e = null;
        } else {
            this.f46667e = productShortPriceDto;
        }
        if ((i2 & 32) == 0) {
            this.f46668f = null;
        } else {
            this.f46668f = str4;
        }
        if ((i2 & 64) == 0) {
            this.g = null;
        } else {
            this.g = str5;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductTinyDto)) {
            return false;
        }
        ProductTinyDto productTinyDto = (ProductTinyDto) obj;
        if (!Intrinsics.c(this.f46664a, productTinyDto.f46664a) || !Intrinsics.c(this.f46665b, productTinyDto.f46665b) || !Intrinsics.c(this.f46666c, productTinyDto.f46666c)) {
            return false;
        }
        String str = productTinyDto.d;
        SkuId.Companion companion = SkuId.INSTANCE;
        return Intrinsics.c(this.d, str) && Intrinsics.c(this.f46667e, productTinyDto.f46667e) && Intrinsics.c(this.f46668f, productTinyDto.f46668f) && Intrinsics.c(this.g, productTinyDto.g);
    }

    public final int hashCode() {
        String str = this.f46664a;
        int iHashCode = (this.f46666c.hashCode() + fc.b((str == null ? 0 : str.hashCode()) * 31, 31, this.f46665b)) * 31;
        SkuId.Companion companion = SkuId.INSTANCE;
        int iB = fc.b(iHashCode, 31, this.d);
        ProductShortPriceDto productShortPriceDto = this.f46667e;
        int iHashCode2 = (iB + (productShortPriceDto == null ? 0 : productShortPriceDto.hashCode())) * 31;
        String str2 = this.f46668f;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.g;
        return iHashCode3 + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        SkuId.Companion companion = SkuId.INSTANCE;
        StringBuilder sbS = fc.s("ProductTinyDto(id=", this.f46664a, ", name=", this.f46665b, ", image=");
        sbS.append(this.f46666c);
        sbS.append(", sku=");
        sbS.append(this.d);
        sbS.append(", price=");
        sbS.append(this.f46667e);
        sbS.append(", background=");
        sbS.append(this.f46668f);
        sbS.append(", color=");
        return n00.r(this.g, ")", sbS);
    }

    public ProductTinyDto(String str, String str2, AssetImageDto assetImageDto, String str3, ProductShortPriceDto productShortPriceDto, String str4, String str5, DefaultConstructorMarker defaultConstructorMarker) {
        str2.getClass();
        assetImageDto.getClass();
        str3.getClass();
        this.f46664a = str;
        this.f46665b = str2;
        this.f46666c = assetImageDto;
        this.d = str3;
        this.f46667e = productShortPriceDto;
        this.f46668f = str4;
        this.g = str5;
    }

    public /* synthetic */ ProductTinyDto(String str, String str2, AssetImageDto assetImageDto, String str3, ProductShortPriceDto productShortPriceDto, String str4, String str5, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, str2, assetImageDto, str3, (i2 & 16) != 0 ? null : productShortPriceDto, (i2 & 32) != 0 ? null : str4, (i2 & 64) != 0 ? null : str5, null);
    }
}
