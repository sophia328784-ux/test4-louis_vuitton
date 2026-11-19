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
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/cart/bff/ExchangeShippingAddressDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/cart/bff/ExchangeShippingAddressDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class ExchangeShippingAddressDto$$serializer implements GeneratedSerializer<ExchangeShippingAddressDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ExchangeShippingAddressDto$$serializer f45041a;
    private static final SerialDescriptor descriptor;

    static {
        ExchangeShippingAddressDto$$serializer exchangeShippingAddressDto$$serializer = new ExchangeShippingAddressDto$$serializer();
        f45041a = exchangeShippingAddressDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.cart.bff.ExchangeShippingAddressDto", exchangeShippingAddressDto$$serializer, 8);
        pluginGeneratedSerialDescriptor.k("address1", false);
        pluginGeneratedSerialDescriptor.k("address2", false);
        pluginGeneratedSerialDescriptor.k("address3", false);
        pluginGeneratedSerialDescriptor.k("address4", false);
        pluginGeneratedSerialDescriptor.k("city", false);
        pluginGeneratedSerialDescriptor.k("country", false);
        pluginGeneratedSerialDescriptor.k("postalCode", false);
        pluginGeneratedSerialDescriptor.k("province", true);
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
        String strL = null;
        String strL2 = null;
        String strL3 = null;
        String strL4 = null;
        String strL5 = null;
        String strL6 = null;
        String strL7 = null;
        String str = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    continue;
                case 0:
                    strL = compositeDecoderB.l(serialDescriptor, 0);
                    i2 |= 1;
                    break;
                case 1:
                    strL2 = compositeDecoderB.l(serialDescriptor, 1);
                    i2 |= 2;
                    break;
                case 2:
                    strL3 = compositeDecoderB.l(serialDescriptor, 2);
                    i2 |= 4;
                    break;
                case 3:
                    strL4 = compositeDecoderB.l(serialDescriptor, 3);
                    i2 |= 8;
                    break;
                case 4:
                    strL5 = compositeDecoderB.l(serialDescriptor, 4);
                    i2 |= 16;
                    break;
                case 5:
                    strL6 = compositeDecoderB.l(serialDescriptor, 5);
                    i2 |= 32;
                    break;
                case 6:
                    strL7 = compositeDecoderB.l(serialDescriptor, 6);
                    i2 |= 64;
                    break;
                case 7:
                    str = (String) compositeDecoderB.m(serialDescriptor, 7, StringSerializer.f75684a, str);
                    i2 |= 128;
                    break;
                default:
                    b21.l(iN);
                    return obj;
            }
            obj = null;
        }
        compositeDecoderB.c(serialDescriptor);
        return new ExchangeShippingAddressDto(i2, strL, strL2, strL3, strL4, strL5, strL6, strL7, str, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ExchangeShippingAddressDto exchangeShippingAddressDto = (ExchangeShippingAddressDto) obj;
        exchangeShippingAddressDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        String str = exchangeShippingAddressDto.f45035a;
        String str2 = exchangeShippingAddressDto.f45040h;
        compositeEncoderB.y(serialDescriptor, 0, str);
        compositeEncoderB.y(serialDescriptor, 1, exchangeShippingAddressDto.f45036b);
        compositeEncoderB.y(serialDescriptor, 2, exchangeShippingAddressDto.f45037c);
        compositeEncoderB.y(serialDescriptor, 3, exchangeShippingAddressDto.d);
        compositeEncoderB.y(serialDescriptor, 4, exchangeShippingAddressDto.f45038e);
        compositeEncoderB.y(serialDescriptor, 5, exchangeShippingAddressDto.f45039f);
        compositeEncoderB.y(serialDescriptor, 6, exchangeShippingAddressDto.g);
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 7, StringSerializer.f75684a, str2);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{stringSerializer, stringSerializer, stringSerializer, stringSerializer, stringSerializer, stringSerializer, stringSerializer, BuiltinSerializersKt.d(stringSerializer)};
    }
}
