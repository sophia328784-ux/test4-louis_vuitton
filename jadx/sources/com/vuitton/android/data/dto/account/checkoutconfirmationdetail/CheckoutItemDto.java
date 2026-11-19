package com.vuitton.android.data.dto.account.checkoutconfirmationdetail;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.cart.bff.CartItemCustomizationDto;
import com.vuitton.android.data.dto.cart.bff.CartPriceDto;
import com.vuitton.android.data.dto.cart.bff.ImageUrlDto;
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
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00172\u00020\u0001:\u0002\u0018\u0017B_\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u0011\u0010\u0012Bs\b\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0006\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014¢\u0006\u0004\b\u0011\u0010\u0016¨\u0006\u0019"}, d2 = {"Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "identifier", "", "name", "", "quantity", "Lcom/vuitton/android/data/dto/cart/bff/ImageUrlDto;", "image", "Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;", "priceInfo", "color", "size", "material", "Lcom/vuitton/android/data/dto/cart/bff/CartItemCustomizationDto;", "customization", "<init>", "(Ljava/lang/String;Ljava/lang/String;ILcom/vuitton/android/data/dto/cart/bff/ImageUrlDto;Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/cart/bff/CartItemCustomizationDto;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;ILcom/vuitton/android/data/dto/cart/bff/ImageUrlDto;Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/cart/bff/CartItemCustomizationDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class CheckoutItemDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f44305a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f44306b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f44307c;
    public final ImageUrlDto d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CartPriceDto f44308e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f44309f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f44310h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final CartItemCustomizationDto f44311i;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<CheckoutItemDto> serializer() {
            return CheckoutItemDto$$serializer.f44312a;
        }
    }

    public /* synthetic */ CheckoutItemDto(int i2, String str, String str2, int i3, ImageUrlDto imageUrlDto, CartPriceDto cartPriceDto, String str3, String str4, String str5, CartItemCustomizationDto cartItemCustomizationDto, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        if (31 != (i2 & 31)) {
            PluginExceptionsKt.b(i2, 31, CheckoutItemDto$$serializer.f44312a.getF19838b());
            throw null;
        }
        this.f44305a = str;
        this.f44306b = str2;
        this.f44307c = i3;
        this.d = imageUrlDto;
        this.f44308e = cartPriceDto;
        if ((i2 & 32) == 0) {
            this.f44309f = null;
        } else {
            this.f44309f = str3;
        }
        if ((i2 & 64) == 0) {
            this.g = null;
        } else {
            this.g = str4;
        }
        if ((i2 & 128) == 0) {
            this.f44310h = null;
        } else {
            this.f44310h = str5;
        }
        if ((i2 & 256) == 0) {
            this.f44311i = null;
        } else {
            this.f44311i = cartItemCustomizationDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CheckoutItemDto)) {
            return false;
        }
        CheckoutItemDto checkoutItemDto = (CheckoutItemDto) obj;
        String str = checkoutItemDto.f44305a;
        SkuId.Companion companion = SkuId.INSTANCE;
        return Intrinsics.c(this.f44305a, str) && Intrinsics.c(this.f44306b, checkoutItemDto.f44306b) && this.f44307c == checkoutItemDto.f44307c && Intrinsics.c(this.d, checkoutItemDto.d) && Intrinsics.c(this.f44308e, checkoutItemDto.f44308e) && Intrinsics.c(this.f44309f, checkoutItemDto.f44309f) && Intrinsics.c(this.g, checkoutItemDto.g) && Intrinsics.c(this.f44310h, checkoutItemDto.f44310h) && Intrinsics.c(this.f44311i, checkoutItemDto.f44311i);
    }

    public final int hashCode() {
        SkuId.Companion companion = SkuId.INSTANCE;
        int iHashCode = (this.f44308e.hashCode() + fc.b(tr.b(this.f44307c, fc.b(this.f44305a.hashCode() * 31, 31, this.f44306b), 31), 31, this.d.f45050a)) * 31;
        String str = this.f44309f;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.g;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f44310h;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        CartItemCustomizationDto cartItemCustomizationDto = this.f44311i;
        return iHashCode4 + (cartItemCustomizationDto != null ? cartItemCustomizationDto.f44985a.hashCode() : 0);
    }

    public final String toString() {
        SkuId.Companion companion = SkuId.INSTANCE;
        StringBuilder sbS = fc.s("CheckoutItemDto(identifier=", this.f44305a, ", name=", this.f44306b, ", quantity=");
        sbS.append(this.f44307c);
        sbS.append(", image=");
        sbS.append(this.d);
        sbS.append(", priceInfo=");
        sbS.append(this.f44308e);
        sbS.append(", color=");
        sbS.append(this.f44309f);
        sbS.append(", size=");
        cj.C(sbS, this.g, ", material=", this.f44310h, ", customization=");
        sbS.append(this.f44311i);
        sbS.append(")");
        return sbS.toString();
    }

    public CheckoutItemDto(String str, String str2, int i2, ImageUrlDto imageUrlDto, CartPriceDto cartPriceDto, String str3, String str4, String str5, CartItemCustomizationDto cartItemCustomizationDto, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        str2.getClass();
        imageUrlDto.getClass();
        cartPriceDto.getClass();
        this.f44305a = str;
        this.f44306b = str2;
        this.f44307c = i2;
        this.d = imageUrlDto;
        this.f44308e = cartPriceDto;
        this.f44309f = str3;
        this.g = str4;
        this.f44310h = str5;
        this.f44311i = cartItemCustomizationDto;
    }

    public /* synthetic */ CheckoutItemDto(String str, String str2, int i2, ImageUrlDto imageUrlDto, CartPriceDto cartPriceDto, String str3, String str4, String str5, CartItemCustomizationDto cartItemCustomizationDto, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, i2, imageUrlDto, cartPriceDto, (i3 & 32) != 0 ? null : str3, (i3 & 64) != 0 ? null : str4, (i3 & 128) != 0 ? null : str5, (i3 & 256) != 0 ? null : cartItemCustomizationDto, null);
    }
}
