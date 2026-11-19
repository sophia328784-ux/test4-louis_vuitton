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
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tB9\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\b\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/data/dto/cart/bff/ExchangeSetupResponseDto;", "", "Lcom/vuitton/android/data/dto/cart/bff/ExchangeProductDto;", "product", "Lcom/vuitton/android/data/dto/cart/bff/ExchangeShippingAddressDto;", "shippingAddress", "Lcom/vuitton/android/data/dto/cart/bff/ExchangeShippingMethodDto;", "shippingMethod", "<init>", "(Lcom/vuitton/android/data/dto/cart/bff/ExchangeProductDto;Lcom/vuitton/android/data/dto/cart/bff/ExchangeShippingAddressDto;Lcom/vuitton/android/data/dto/cart/bff/ExchangeShippingMethodDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/cart/bff/ExchangeProductDto;Lcom/vuitton/android/data/dto/cart/bff/ExchangeShippingAddressDto;Lcom/vuitton/android/data/dto/cart/bff/ExchangeShippingMethodDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ExchangeSetupResponseDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ExchangeProductDto f45031a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ExchangeShippingAddressDto f45032b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ExchangeShippingMethodDto f45033c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/cart/bff/ExchangeSetupResponseDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/cart/bff/ExchangeSetupResponseDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ExchangeSetupResponseDto> serializer() {
            return ExchangeSetupResponseDto$$serializer.f45034a;
        }
    }

    public /* synthetic */ ExchangeSetupResponseDto(int i2, ExchangeProductDto exchangeProductDto, ExchangeShippingAddressDto exchangeShippingAddressDto, ExchangeShippingMethodDto exchangeShippingMethodDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i2 & 7)) {
            PluginExceptionsKt.b(i2, 7, ExchangeSetupResponseDto$$serializer.f45034a.getF19850b());
            throw null;
        }
        this.f45031a = exchangeProductDto;
        this.f45032b = exchangeShippingAddressDto;
        this.f45033c = exchangeShippingMethodDto;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ExchangeSetupResponseDto)) {
            return false;
        }
        ExchangeSetupResponseDto exchangeSetupResponseDto = (ExchangeSetupResponseDto) obj;
        return Intrinsics.c(this.f45031a, exchangeSetupResponseDto.f45031a) && Intrinsics.c(this.f45032b, exchangeSetupResponseDto.f45032b) && Intrinsics.c(this.f45033c, exchangeSetupResponseDto.f45033c);
    }

    public final int hashCode() {
        return this.f45033c.hashCode() + ((this.f45032b.hashCode() + (this.f45031a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "ExchangeSetupResponseDto(product=" + this.f45031a + ", shippingAddress=" + this.f45032b + ", shippingMethod=" + this.f45033c + ")";
    }

    public ExchangeSetupResponseDto(ExchangeProductDto exchangeProductDto, ExchangeShippingAddressDto exchangeShippingAddressDto, ExchangeShippingMethodDto exchangeShippingMethodDto) {
        exchangeProductDto.getClass();
        exchangeShippingAddressDto.getClass();
        exchangeShippingMethodDto.getClass();
        this.f45031a = exchangeProductDto;
        this.f45032b = exchangeShippingAddressDto;
        this.f45033c = exchangeShippingMethodDto;
    }
}
