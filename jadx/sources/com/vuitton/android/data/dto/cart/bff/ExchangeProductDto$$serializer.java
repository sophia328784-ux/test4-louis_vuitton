package com.vuitton.android.data.dto.cart.bff;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
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
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/cart/bff/ExchangeProductDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/cart/bff/ExchangeProductDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class ExchangeProductDto$$serializer implements GeneratedSerializer<ExchangeProductDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ExchangeProductDto$$serializer f45025a;
    private static final SerialDescriptor descriptor;

    static {
        ExchangeProductDto$$serializer exchangeProductDto$$serializer = new ExchangeProductDto$$serializer();
        f45025a = exchangeProductDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.cart.bff.ExchangeProductDto", exchangeProductDto$$serializer, 8);
        pluginGeneratedSerialDescriptor.k("carat", true);
        pluginGeneratedSerialDescriptor.k("color", true);
        pluginGeneratedSerialDescriptor.k("image", true);
        pluginGeneratedSerialDescriptor.k("material", true);
        pluginGeneratedSerialDescriptor.k("name", false);
        pluginGeneratedSerialDescriptor.k("priceInfo", false);
        pluginGeneratedSerialDescriptor.k("size", true);
        pluginGeneratedSerialDescriptor.k("sku", false);
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
        int i2 = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String strL = null;
        CartPriceDto cartPriceDto = null;
        String str5 = null;
        String str6 = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    continue;
                case 0:
                    str = (String) compositeDecoderB.m(serialDescriptor, 0, StringSerializer.f75684a, str);
                    i2 |= 1;
                    break;
                case 1:
                    str2 = (String) compositeDecoderB.m(serialDescriptor, 1, StringSerializer.f75684a, str2);
                    i2 |= 2;
                    break;
                case 2:
                    str3 = (String) compositeDecoderB.m(serialDescriptor, 2, StringSerializer.f75684a, str3);
                    i2 |= 4;
                    break;
                case 3:
                    str4 = (String) compositeDecoderB.m(serialDescriptor, 3, StringSerializer.f75684a, str4);
                    i2 |= 8;
                    break;
                case 4:
                    strL = compositeDecoderB.l(serialDescriptor, 4);
                    i2 |= 16;
                    break;
                case 5:
                    cartPriceDto = (CartPriceDto) compositeDecoderB.w(serialDescriptor, 5, CartPriceDto$$serializer.f45000a, cartPriceDto);
                    i2 |= 32;
                    break;
                case 6:
                    str5 = (String) compositeDecoderB.m(serialDescriptor, 6, StringSerializer.f75684a, str5);
                    i2 |= 64;
                    break;
                case 7:
                    SkuId skuId = (SkuId) compositeDecoderB.w(serialDescriptor, 7, SkuId$$serializer.f67934a, str6 != null ? new SkuId(str6) : null);
                    str6 = skuId != null ? skuId.f67933a : null;
                    i2 |= 128;
                    break;
                default:
                    b21.l(iN);
                    return obj;
            }
            obj = null;
        }
        compositeDecoderB.c(serialDescriptor);
        return new ExchangeProductDto(i2, str, str2, str3, str4, strL, cartPriceDto, str5, str6, null, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ExchangeProductDto exchangeProductDto = (ExchangeProductDto) obj;
        exchangeProductDto.getClass();
        String str = exchangeProductDto.d;
        String str2 = exchangeProductDto.f45021c;
        String str3 = exchangeProductDto.f45020b;
        String str4 = exchangeProductDto.f45019a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        if (compositeEncoderB.o(serialDescriptor) || str4 != null) {
            compositeEncoderB.h(serialDescriptor, 0, StringSerializer.f75684a, str4);
        }
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 1, StringSerializer.f75684a, str3);
        }
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 2, StringSerializer.f75684a, str2);
        }
        if (compositeEncoderB.o(serialDescriptor) || str != null) {
            compositeEncoderB.h(serialDescriptor, 3, StringSerializer.f75684a, str);
        }
        String str5 = exchangeProductDto.f45022e;
        String str6 = exchangeProductDto.g;
        compositeEncoderB.y(serialDescriptor, 4, str5);
        compositeEncoderB.A(serialDescriptor, 5, CartPriceDto$$serializer.f45000a, exchangeProductDto.f45023f);
        if (compositeEncoderB.o(serialDescriptor) || str6 != null) {
            compositeEncoderB.h(serialDescriptor, 6, StringSerializer.f75684a, str6);
        }
        cj.B(exchangeProductDto.f45024h, compositeEncoderB, serialDescriptor, 7, SkuId$$serializer.f67934a);
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), stringSerializer, CartPriceDto$$serializer.f45000a, BuiltinSerializersKt.d(stringSerializer), SkuId$$serializer.f67934a};
    }
}
