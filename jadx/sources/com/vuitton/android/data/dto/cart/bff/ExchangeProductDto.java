package com.vuitton.android.data.dto.cart.bff;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.cj;
import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00142\u00020\u0001:\u0002\u0015\u0014B[\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\b\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eBk\b\u0010\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\r\u0010\u0013¨\u0006\u0016"}, d2 = {"Lcom/vuitton/android/data/dto/cart/bff/ExchangeProductDto;", "", "", "carat", "color", "image", "material", "name", "Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;", "priceInfo", "size", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ExchangeProductDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45019a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f45020b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f45021c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f45022e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final CartPriceDto f45023f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f45024h;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/cart/bff/ExchangeProductDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/cart/bff/ExchangeProductDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ExchangeProductDto> serializer() {
            return ExchangeProductDto$$serializer.f45025a;
        }
    }

    public /* synthetic */ ExchangeProductDto(int i2, String str, String str2, String str3, String str4, String str5, CartPriceDto cartPriceDto, String str6, String str7, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        if (176 != (i2 & 176)) {
            PluginExceptionsKt.b(i2, 176, ExchangeProductDto$$serializer.f45025a.getF19850b());
            throw null;
        }
        if ((i2 & 1) == 0) {
            this.f45019a = null;
        } else {
            this.f45019a = str;
        }
        if ((i2 & 2) == 0) {
            this.f45020b = null;
        } else {
            this.f45020b = str2;
        }
        if ((i2 & 4) == 0) {
            this.f45021c = null;
        } else {
            this.f45021c = str3;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = str4;
        }
        this.f45022e = str5;
        this.f45023f = cartPriceDto;
        if ((i2 & 64) == 0) {
            this.g = null;
        } else {
            this.g = str6;
        }
        this.f45024h = str7;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ExchangeProductDto)) {
            return false;
        }
        ExchangeProductDto exchangeProductDto = (ExchangeProductDto) obj;
        if (!Intrinsics.c(this.f45019a, exchangeProductDto.f45019a) || !Intrinsics.c(this.f45020b, exchangeProductDto.f45020b) || !Intrinsics.c(this.f45021c, exchangeProductDto.f45021c) || !Intrinsics.c(this.d, exchangeProductDto.d) || !Intrinsics.c(this.f45022e, exchangeProductDto.f45022e) || !Intrinsics.c(this.f45023f, exchangeProductDto.f45023f) || !Intrinsics.c(this.g, exchangeProductDto.g)) {
            return false;
        }
        String str = exchangeProductDto.f45024h;
        SkuId.Companion companion = SkuId.INSTANCE;
        return Intrinsics.c(this.f45024h, str);
    }

    public final int hashCode() {
        String str = this.f45019a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f45020b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f45021c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.d;
        int iHashCode4 = (this.f45023f.hashCode() + fc.b((iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31, 31, this.f45022e)) * 31;
        String str5 = this.g;
        int iHashCode5 = (iHashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31;
        SkuId.Companion companion = SkuId.INSTANCE;
        return this.f45024h.hashCode() + iHashCode5;
    }

    public final String toString() {
        SkuId.Companion companion = SkuId.INSTANCE;
        StringBuilder sbS = fc.s("ExchangeProductDto(carat=", this.f45019a, ", color=", this.f45020b, ", image=");
        cj.C(sbS, this.f45021c, ", material=", this.d, ", name=");
        sbS.append(this.f45022e);
        sbS.append(", priceInfo=");
        sbS.append(this.f45023f);
        sbS.append(", size=");
        return tr.l(sbS, this.g, ", sku=", this.f45024h, ")");
    }

    public ExchangeProductDto(String str, String str2, String str3, String str4, String str5, CartPriceDto cartPriceDto, String str6, String str7, DefaultConstructorMarker defaultConstructorMarker) {
        str5.getClass();
        cartPriceDto.getClass();
        str7.getClass();
        this.f45019a = str;
        this.f45020b = str2;
        this.f45021c = str3;
        this.d = str4;
        this.f45022e = str5;
        this.f45023f = cartPriceDto;
        this.g = str6;
        this.f45024h = str7;
    }

    public /* synthetic */ ExchangeProductDto(String str, String str2, String str3, String str4, String str5, CartPriceDto cartPriceDto, String str6, String str7, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3, (i2 & 8) != 0 ? null : str4, str5, cartPriceDto, (i2 & 64) != 0 ? null : str6, str7, null);
    }
}
