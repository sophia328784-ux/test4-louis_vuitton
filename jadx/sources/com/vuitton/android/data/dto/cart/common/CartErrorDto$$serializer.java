package com.vuitton.android.data.dto.cart.common;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.product.SkuId$$serializer;
import defpackage.b21;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/cart/common/CartErrorDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/cart/common/CartErrorDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class CartErrorDto$$serializer implements GeneratedSerializer<CartErrorDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CartErrorDto$$serializer f45083a;
    private static final SerialDescriptor descriptor;

    static {
        CartErrorDto$$serializer cartErrorDto$$serializer = new CartErrorDto$$serializer();
        f45083a = cartErrorDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.cart.common.CartErrorDto", cartErrorDto$$serializer, 4);
        pluginGeneratedSerialDescriptor.k("errorCode", true);
        pluginGeneratedSerialDescriptor.k("message", true);
        pluginGeneratedSerialDescriptor.k("scope", true);
        pluginGeneratedSerialDescriptor.k("details", true);
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
        Lazy[] lazyArr = CartErrorDto.f45079e;
        boolean z = true;
        int i2 = 0;
        CartErrorCodeDto cartErrorCodeDto = null;
        String str = null;
        String str2 = null;
        JsonElement jsonElement = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                cartErrorCodeDto = (CartErrorCodeDto) compositeDecoderB.m(serialDescriptor, 0, (DeserializationStrategy) lazyArr[0].getF71699b(), cartErrorCodeDto);
                i2 |= 1;
            } else if (iN == 1) {
                str = (String) compositeDecoderB.m(serialDescriptor, 1, StringSerializer.f75684a, str);
                i2 |= 2;
            } else if (iN == 2) {
                SkuId skuId = (SkuId) compositeDecoderB.m(serialDescriptor, 2, SkuId$$serializer.f67934a, str2 != null ? new SkuId(str2) : null);
                str2 = skuId != null ? skuId.f67933a : null;
                i2 |= 4;
            } else {
                if (iN != 3) {
                    b21.l(iN);
                    return null;
                }
                jsonElement = (JsonElement) compositeDecoderB.m(serialDescriptor, 3, JsonElementSerializer.f75746a, jsonElement);
                i2 |= 8;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new CartErrorDto(i2, cartErrorCodeDto, str, str2, jsonElement, null, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        CartErrorDto cartErrorDto = (CartErrorDto) obj;
        cartErrorDto.getClass();
        JsonElement jsonElement = cartErrorDto.d;
        String str = cartErrorDto.f45082c;
        String str2 = cartErrorDto.f45081b;
        CartErrorCodeDto cartErrorCodeDto = cartErrorDto.f45080a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = CartErrorDto.f45079e;
        if (compositeEncoderB.o(serialDescriptor) || cartErrorCodeDto != null) {
            compositeEncoderB.h(serialDescriptor, 0, (SerializationStrategy) lazyArr[0].getF71699b(), cartErrorCodeDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 1, StringSerializer.f75684a, str2);
        }
        if (compositeEncoderB.o(serialDescriptor) || str != null) {
            compositeEncoderB.h(serialDescriptor, 2, SkuId$$serializer.f67934a, str != null ? new SkuId(str) : null);
        }
        if (compositeEncoderB.o(serialDescriptor) || jsonElement != null) {
            compositeEncoderB.h(serialDescriptor, 3, JsonElementSerializer.f75746a, jsonElement);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        return new KSerializer[]{BuiltinSerializersKt.d((KSerializer) CartErrorDto.f45079e[0].getF71699b()), BuiltinSerializersKt.d(StringSerializer.f75684a), BuiltinSerializersKt.d(SkuId$$serializer.f67934a), BuiltinSerializersKt.d(JsonElementSerializer.f75746a)};
    }
}
