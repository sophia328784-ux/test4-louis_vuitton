package com.vuitton.android.data.dto.cart.bff;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB;\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\b\u0010\tBM\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\b\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;", "", "Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;", "totalAmount", "taxAmount", "shippingAmount", "unitAmount", "totalTaxIncludedAmount", "<init>", "(Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class CartPriceInformationDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CartPriceDto f45001a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CartPriceDto f45002b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CartPriceDto f45003c;
    public final CartPriceDto d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CartPriceDto f45004e;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<CartPriceInformationDto> serializer() {
            return CartPriceInformationDto$$serializer.f45005a;
        }
    }

    public /* synthetic */ CartPriceInformationDto(int i2, CartPriceDto cartPriceDto, CartPriceDto cartPriceDto2, CartPriceDto cartPriceDto3, CartPriceDto cartPriceDto4, CartPriceDto cartPriceDto5, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i2 & 3)) {
            PluginExceptionsKt.b(i2, 3, CartPriceInformationDto$$serializer.f45005a.a());
            throw null;
        }
        this.f45001a = cartPriceDto;
        this.f45002b = cartPriceDto2;
        if ((i2 & 4) == 0) {
            this.f45003c = null;
        } else {
            this.f45003c = cartPriceDto3;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = cartPriceDto4;
        }
        if ((i2 & 16) == 0) {
            this.f45004e = null;
        } else {
            this.f45004e = cartPriceDto5;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CartPriceInformationDto)) {
            return false;
        }
        CartPriceInformationDto cartPriceInformationDto = (CartPriceInformationDto) obj;
        return Intrinsics.c(this.f45001a, cartPriceInformationDto.f45001a) && Intrinsics.c(this.f45002b, cartPriceInformationDto.f45002b) && Intrinsics.c(this.f45003c, cartPriceInformationDto.f45003c) && Intrinsics.c(this.d, cartPriceInformationDto.d) && Intrinsics.c(this.f45004e, cartPriceInformationDto.f45004e);
    }

    public final int hashCode() {
        int iHashCode = (this.f45002b.hashCode() + (this.f45001a.hashCode() * 31)) * 31;
        CartPriceDto cartPriceDto = this.f45003c;
        int iHashCode2 = (iHashCode + (cartPriceDto == null ? 0 : cartPriceDto.hashCode())) * 31;
        CartPriceDto cartPriceDto2 = this.d;
        int iHashCode3 = (iHashCode2 + (cartPriceDto2 == null ? 0 : cartPriceDto2.hashCode())) * 31;
        CartPriceDto cartPriceDto3 = this.f45004e;
        return iHashCode3 + (cartPriceDto3 != null ? cartPriceDto3.hashCode() : 0);
    }

    public final String toString() {
        return "CartPriceInformationDto(totalAmount=" + this.f45001a + ", taxAmount=" + this.f45002b + ", shippingAmount=" + this.f45003c + ", unitAmount=" + this.d + ", totalTaxIncludedAmount=" + this.f45004e + ")";
    }

    public CartPriceInformationDto(CartPriceDto cartPriceDto, CartPriceDto cartPriceDto2, CartPriceDto cartPriceDto3, CartPriceDto cartPriceDto4, CartPriceDto cartPriceDto5) {
        cartPriceDto.getClass();
        cartPriceDto2.getClass();
        this.f45001a = cartPriceDto;
        this.f45002b = cartPriceDto2;
        this.f45003c = cartPriceDto3;
        this.d = cartPriceDto4;
        this.f45004e = cartPriceDto5;
    }

    public /* synthetic */ CartPriceInformationDto(CartPriceDto cartPriceDto, CartPriceDto cartPriceDto2, CartPriceDto cartPriceDto3, CartPriceDto cartPriceDto4, CartPriceDto cartPriceDto5, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(cartPriceDto, cartPriceDto2, (i2 & 4) != 0 ? null : cartPriceDto3, (i2 & 8) != 0 ? null : cartPriceDto4, (i2 & 16) != 0 ? null : cartPriceDto5);
    }
}
