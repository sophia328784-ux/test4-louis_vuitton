package com.vuitton.android.data.dto.cart.bff;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.b21;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/cart/bff/CartPriceInformationDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class CartPriceInformationDto$$serializer implements GeneratedSerializer<CartPriceInformationDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CartPriceInformationDto$$serializer f45005a;
    private static final SerialDescriptor descriptor;

    static {
        CartPriceInformationDto$$serializer cartPriceInformationDto$$serializer = new CartPriceInformationDto$$serializer();
        f45005a = cartPriceInformationDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.cart.bff.CartPriceInformationDto", cartPriceInformationDto$$serializer, 5);
        pluginGeneratedSerialDescriptor.k("totalAmount", false);
        pluginGeneratedSerialDescriptor.k("taxAmount", false);
        pluginGeneratedSerialDescriptor.k("shippingAmount", true);
        pluginGeneratedSerialDescriptor.k("unitAmount", true);
        pluginGeneratedSerialDescriptor.k("totalTaxIncludedAmount", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19838b() {
        return descriptor;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        decoder.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder compositeDecoderB = decoder.b(serialDescriptor);
        boolean z = true;
        int i2 = 0;
        CartPriceDto cartPriceDto = null;
        CartPriceDto cartPriceDto2 = null;
        CartPriceDto cartPriceDto3 = null;
        CartPriceDto cartPriceDto4 = null;
        CartPriceDto cartPriceDto5 = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                cartPriceDto = (CartPriceDto) compositeDecoderB.w(serialDescriptor, 0, CartPriceDto$$serializer.f45000a, cartPriceDto);
                i2 |= 1;
            } else if (iN == 1) {
                cartPriceDto2 = (CartPriceDto) compositeDecoderB.w(serialDescriptor, 1, CartPriceDto$$serializer.f45000a, cartPriceDto2);
                i2 |= 2;
            } else if (iN == 2) {
                cartPriceDto3 = (CartPriceDto) compositeDecoderB.m(serialDescriptor, 2, CartPriceDto$$serializer.f45000a, cartPriceDto3);
                i2 |= 4;
            } else if (iN == 3) {
                cartPriceDto4 = (CartPriceDto) compositeDecoderB.m(serialDescriptor, 3, CartPriceDto$$serializer.f45000a, cartPriceDto4);
                i2 |= 8;
            } else {
                if (iN != 4) {
                    b21.l(iN);
                    return null;
                }
                cartPriceDto5 = (CartPriceDto) compositeDecoderB.m(serialDescriptor, 4, CartPriceDto$$serializer.f45000a, cartPriceDto5);
                i2 |= 16;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new CartPriceInformationDto(i2, cartPriceDto, cartPriceDto2, cartPriceDto3, cartPriceDto4, cartPriceDto5, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        CartPriceInformationDto cartPriceInformationDto = (CartPriceInformationDto) obj;
        cartPriceInformationDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        CartPriceDto$$serializer cartPriceDto$$serializer = CartPriceDto$$serializer.f45000a;
        CartPriceDto cartPriceDto = cartPriceInformationDto.f45001a;
        CartPriceDto cartPriceDto2 = cartPriceInformationDto.f45004e;
        CartPriceDto cartPriceDto3 = cartPriceInformationDto.d;
        CartPriceDto cartPriceDto4 = cartPriceInformationDto.f45003c;
        compositeEncoderB.A(serialDescriptor, 0, cartPriceDto$$serializer, cartPriceDto);
        compositeEncoderB.A(serialDescriptor, 1, cartPriceDto$$serializer, cartPriceInformationDto.f45002b);
        if (compositeEncoderB.o(serialDescriptor) || cartPriceDto4 != null) {
            compositeEncoderB.h(serialDescriptor, 2, cartPriceDto$$serializer, cartPriceDto4);
        }
        if (compositeEncoderB.o(serialDescriptor) || cartPriceDto3 != null) {
            compositeEncoderB.h(serialDescriptor, 3, cartPriceDto$$serializer, cartPriceDto3);
        }
        if (compositeEncoderB.o(serialDescriptor) || cartPriceDto2 != null) {
            compositeEncoderB.h(serialDescriptor, 4, cartPriceDto$$serializer, cartPriceDto2);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        CartPriceDto$$serializer cartPriceDto$$serializer = CartPriceDto$$serializer.f45000a;
        return new KSerializer[]{cartPriceDto$$serializer, cartPriceDto$$serializer, BuiltinSerializersKt.d(cartPriceDto$$serializer), BuiltinSerializersKt.d(cartPriceDto$$serializer), BuiltinSerializersKt.d(cartPriceDto$$serializer)};
    }
}
