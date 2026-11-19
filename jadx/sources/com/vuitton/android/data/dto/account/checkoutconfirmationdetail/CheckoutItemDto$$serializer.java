package com.vuitton.android.data.dto.account.checkoutconfirmationdetail;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.cart.bff.CartItemCustomizationDto;
import com.vuitton.android.data.dto.cart.bff.CartItemCustomizationDto$$serializer;
import com.vuitton.android.data.dto.cart.bff.CartPriceDto;
import com.vuitton.android.data.dto.cart.bff.CartPriceDto$$serializer;
import com.vuitton.android.data.dto.cart.bff.ImageUrlDto;
import com.vuitton.android.data.dto.cart.bff.ImageUrlDto$$serializer;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.product.SkuId$$serializer;
import defpackage.b21;
import defpackage.cj;
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
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class CheckoutItemDto$$serializer implements GeneratedSerializer<CheckoutItemDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CheckoutItemDto$$serializer f44312a;
    private static final SerialDescriptor descriptor;

    static {
        CheckoutItemDto$$serializer checkoutItemDto$$serializer = new CheckoutItemDto$$serializer();
        f44312a = checkoutItemDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.account.checkoutconfirmationdetail.CheckoutItemDto", checkoutItemDto$$serializer, 9);
        pluginGeneratedSerialDescriptor.k("identifier", false);
        pluginGeneratedSerialDescriptor.k("name", false);
        pluginGeneratedSerialDescriptor.k("quantity", false);
        pluginGeneratedSerialDescriptor.k("image", false);
        pluginGeneratedSerialDescriptor.k("priceInfo", false);
        pluginGeneratedSerialDescriptor.k("color", true);
        pluginGeneratedSerialDescriptor.k("size", true);
        pluginGeneratedSerialDescriptor.k("material", true);
        pluginGeneratedSerialDescriptor.k("customizations", true);
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
        Object obj = null;
        boolean z = true;
        CartItemCustomizationDto cartItemCustomizationDto = null;
        String str = null;
        String strL = null;
        ImageUrlDto imageUrlDto = null;
        CartPriceDto cartPriceDto = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        int i2 = 0;
        int iJ = 0;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    continue;
                case 0:
                    SkuId skuId = (SkuId) compositeDecoderB.w(serialDescriptor, 0, SkuId$$serializer.f67934a, str != null ? new SkuId(str) : null);
                    i2 |= 1;
                    str = skuId != null ? skuId.f67933a : null;
                    break;
                case 1:
                    strL = compositeDecoderB.l(serialDescriptor, 1);
                    i2 |= 2;
                    break;
                case 2:
                    iJ = compositeDecoderB.j(serialDescriptor, 2);
                    i2 |= 4;
                    break;
                case 3:
                    imageUrlDto = (ImageUrlDto) compositeDecoderB.w(serialDescriptor, 3, ImageUrlDto$$serializer.f45051a, imageUrlDto);
                    i2 |= 8;
                    break;
                case 4:
                    cartPriceDto = (CartPriceDto) compositeDecoderB.w(serialDescriptor, 4, CartPriceDto$$serializer.f45000a, cartPriceDto);
                    i2 |= 16;
                    break;
                case 5:
                    str2 = (String) compositeDecoderB.m(serialDescriptor, 5, StringSerializer.f75684a, str2);
                    i2 |= 32;
                    break;
                case 6:
                    str3 = (String) compositeDecoderB.m(serialDescriptor, 6, StringSerializer.f75684a, str3);
                    i2 |= 64;
                    break;
                case 7:
                    str4 = (String) compositeDecoderB.m(serialDescriptor, 7, StringSerializer.f75684a, str4);
                    i2 |= 128;
                    break;
                case 8:
                    cartItemCustomizationDto = (CartItemCustomizationDto) compositeDecoderB.m(serialDescriptor, 8, CartItemCustomizationDto$$serializer.f44986a, cartItemCustomizationDto);
                    i2 |= 256;
                    break;
                default:
                    b21.l(iN);
                    return obj;
            }
            obj = null;
        }
        compositeDecoderB.c(serialDescriptor);
        return new CheckoutItemDto(i2, str, strL, iJ, imageUrlDto, cartPriceDto, str2, str3, str4, cartItemCustomizationDto, null, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        CheckoutItemDto checkoutItemDto = (CheckoutItemDto) obj;
        checkoutItemDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        SkuId$$serializer skuId$$serializer = SkuId$$serializer.f67934a;
        String str = checkoutItemDto.f44305a;
        CartItemCustomizationDto cartItemCustomizationDto = checkoutItemDto.f44311i;
        String str2 = checkoutItemDto.f44310h;
        String str3 = checkoutItemDto.g;
        String str4 = checkoutItemDto.f44309f;
        cj.B(str, compositeEncoderB, serialDescriptor, 0, skuId$$serializer);
        compositeEncoderB.y(serialDescriptor, 1, checkoutItemDto.f44306b);
        compositeEncoderB.u(2, checkoutItemDto.f44307c, serialDescriptor);
        compositeEncoderB.A(serialDescriptor, 3, ImageUrlDto$$serializer.f45051a, checkoutItemDto.d);
        compositeEncoderB.A(serialDescriptor, 4, CartPriceDto$$serializer.f45000a, checkoutItemDto.f44308e);
        if (compositeEncoderB.o(serialDescriptor) || str4 != null) {
            compositeEncoderB.h(serialDescriptor, 5, StringSerializer.f75684a, str4);
        }
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 6, StringSerializer.f75684a, str3);
        }
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 7, StringSerializer.f75684a, str2);
        }
        if (compositeEncoderB.o(serialDescriptor) || cartItemCustomizationDto != null) {
            compositeEncoderB.h(serialDescriptor, 8, CartItemCustomizationDto$$serializer.f44986a, cartItemCustomizationDto);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{SkuId$$serializer.f67934a, stringSerializer, IntSerializer.f75624a, ImageUrlDto$$serializer.f45051a, CartPriceDto$$serializer.f45000a, BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(CartItemCustomizationDto$$serializer.f44986a)};
    }
}
